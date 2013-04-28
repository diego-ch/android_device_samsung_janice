package com.cyanogenmod.settings.device;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.os.Vibrator;
import android.preference.DialogPreference;
import android.preference.PreferenceManager;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.LinearLayout;


public class VibrationIntensity extends DialogPreference implements SeekBar.OnSeekBarChangeListener
{
  private static final String androidns="http://schemas.android.com/apk/res/android";
  private static final String VIBETONZ_INTENSITY_FILE = "/sys/vibetonz/pwmvalue_intensity";

  private SeekBar mSeekBar;
  private TextView mSplashText;
  private Context mContext;

  private String mDialogMessage;
  private int mDefault, mMax, mValue = 0;

  public VibrationIntensity(Context context, AttributeSet attrs) { 
    super(context,attrs); 
    mContext = context;

    mDialogMessage = attrs.getAttributeValue(androidns,"dialogMessage");
    mDefault = attrs.getAttributeIntValue(androidns,"defaultValue", 0);
    mMax = attrs.getAttributeIntValue(androidns,"max", 100);

  }
  @Override 
  protected View onCreateDialogView() {
    LinearLayout layout = new LinearLayout(mContext);
    layout.setOrientation(LinearLayout.VERTICAL);
    layout.setPadding(6,6,6,30);

    mSplashText = new TextView(mContext);
    if (mDialogMessage != null)
      mSplashText.setText(mDialogMessage);
    layout.addView(mSplashText);

    new LinearLayout.LayoutParams(
        LinearLayout.LayoutParams.FILL_PARENT, 
        LinearLayout.LayoutParams.WRAP_CONTENT);

    mSeekBar = new SeekBar(mContext);
    mSeekBar.setOnSeekBarChangeListener(this);
    layout.addView(mSeekBar, new LinearLayout.LayoutParams(LinearLayout.LayoutParams.FILL_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

    if (shouldPersist())
      mValue = getPersistedInt(mDefault);

    mSeekBar.setMax(mMax);
    mSeekBar.setProgress(mValue);
    return layout;
  }
  @Override 
  protected void onBindDialogView(View v) {
    super.onBindDialogView(v);
    mSeekBar.setMax(mMax);
    mSeekBar.setProgress(mValue);
  }
  @Override
  protected void onSetInitialValue(boolean restore, Object defaultValue)  
  {
    super.onSetInitialValue(restore, defaultValue);
    if (restore) 
      mValue = shouldPersist() ? getPersistedInt(mDefault) : 0;
    else 
      mValue = (Integer)defaultValue;
  }
  public static void restore(Context context) {
      if (!isSupported()) {
          return;
      }
  	 SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context); 
      WriteToFileandVibrate(sp.getInt("vibration_intensity", 6),false,context);
  }
  public static boolean isSupported() {
      return Utils.fileExists(VIBETONZ_INTENSITY_FILE);
  }
  public void onProgressChanged(SeekBar seek, int value, boolean fromTouch)
  {
    if (shouldPersist())
      persistInt(value);
      WriteToFileandVibrate(value,true,mContext);
  }
  public static void WriteToFileandVibrate(int value,boolean shouldVibrate, Context mCtx)
  {
	  Resources res = mCtx.getResources();
	  String[] strVibrationIntensityValues = res.getStringArray(R.array.vibration_intensity_values); 
      Utils.writeValue(VIBETONZ_INTENSITY_FILE, "" + strVibrationIntensityValues[value]);
	if(shouldVibrate)
	{
      		Vibrator v = (Vibrator) mCtx.getSystemService(Context.VIBRATOR_SERVICE);
      		v.vibrate(10);
	}
  }
  public void onStartTrackingTouch(SeekBar seek) {}
  public void onStopTrackingTouch(SeekBar seek) {}

  public void setMax(int max) { mMax = max; }
  public int getMax() { return mMax; }

  public void setProgress(int progress) { 
    mValue = progress;
    if (mSeekBar != null)
      mSeekBar.setProgress(progress); 
  }
  public int getProgress() { return mValue; }}



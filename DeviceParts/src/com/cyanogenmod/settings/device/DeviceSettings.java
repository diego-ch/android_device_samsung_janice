package com.cyanogenmod.settings.device;

import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.PreferenceActivity;

public class DeviceSettings extends PreferenceActivity {

    public static final String KEY_HSPA = "hspa";
    public static final String KEY_BACKLIGHT_TIMEOUT = "backlight_timeout";

    private ListPreference mHspa;
    private ListPreference mBacklightTimeout;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.layout.main);

        mHspa = (ListPreference) findPreference(KEY_HSPA);
        mHspa.setEnabled(Hspa.isSupported());
        mHspa.setOnPreferenceChangeListener(new Hspa(this));
        
        mBacklightTimeout = (ListPreference) findPreference(KEY_BACKLIGHT_TIMEOUT);
        mBacklightTimeout.setEnabled(TouchKeyBacklightTimeout.isSupported());
        mBacklightTimeout.setOnPreferenceChangeListener(new TouchKeyBacklightTimeout());

    }

    @Override
    protected void onResume() {
        super.onResume();
    }

    @Override
    protected void onPause() {
        super.onPause();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

}
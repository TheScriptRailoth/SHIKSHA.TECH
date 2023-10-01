package com.example.shiksha_tech;
import android.content.Context;
import android.app.Application;
import androidx.multidex.MultiDex;

public class MyApplication extends Application {
    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        MultiDex.install(this);
    }
}

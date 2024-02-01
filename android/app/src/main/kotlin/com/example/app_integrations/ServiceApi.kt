package com.example.app_integrations

import android.annotation.SuppressLint
import io.flutter.plugins.Pigeon

class ServiceApi(activity: MainActivity): Pigeon.ServiceApi {
    private var activity = activity

    @SuppressLint("ResourceType")
    override fun setValue(text: String) {
        activity.setValue(text)
    }
}

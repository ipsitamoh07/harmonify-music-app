package com.example.harmonify1

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.widget.RemoteViews
import com.example.harmonify1.R

class MusicWidget: AppWidgetProvider() {

    override fun onUpdate(
        context: Context?,
        appWidgetManager: AppWidgetManager?,
        appWidgetIds: IntArray?
    ) {
        if (appWidgetIds != null) {
            for (appWidgetId in appWidgetIds) {
                updateAppWidget(context, appWidgetManager, appWidgetId)
            }
        }
    }
}

internal fun updateAppWidget(
    context: Context?,
    appWidgetManager: AppWidgetManager?,
    appWidgetId: Int
) {
    val widgetText = context?.getString(R.string.appwidget_text)
    val views = RemoteViews(context?.packageName, R.layout.music_widget)
    
    val intent = Intent(Intent.ACTION_VIEW, Uri.parse("app://harmonify1/play"))
    val pendingIntent = PendingIntent.getActivity(context, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT)
    views.setOnClickPendingIntent(R.id.button_play_pause, pendingIntent)
    
    appWidgetManager?.updateAppWidget(appWidgetId, views)
}

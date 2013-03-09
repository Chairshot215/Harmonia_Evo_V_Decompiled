.class public Lfr/clockwidget/lpsense/ClockWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "ClockWidget.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lfr/clockwidget/lpsense/ClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/clockwidget/lpsense/ClockWidget;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static buildTimeUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 9
    .parameter "context"
    .parameter "views"

    .prologue
    .line 138
    invoke-static {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->initPreferences(Landroid/content/Context;)V

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, hour:I
    const/4 v3, 0x0

    .line 142
    .local v3, minute:I
    const/4 v0, 0x1

    .line 143
    .local v0, ampm:Z
    const-string v1, ""

    .line 144
    .local v1, date:Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 147
    .local v5, now:Ljava/util/Date;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 148
    .local v0, nowCal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 149
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 150
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 151
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v0           #nowCal:Ljava/util/Calendar;
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .local v0, ampm:Z
    :goto_0
    move v4, v3

    .end local v3           #minute:I
    .local v4, minute:I
    move v3, v2

    .line 159
    .end local v2           #hour:I
    .local v3, hour:I
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 160
    .local v6, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 162
    .local v2, useAltFormat:Z
    :try_start_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    const v8, 0x7f080002

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 163
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "E"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, weekString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Date;->getDay()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .end local v7           #weekString:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 165
    const/4 v2, 0x1

    .line 171
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 174
    :try_start_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #date:Ljava/lang/String;
    const-string v2, "E, MMM d"

    .end local v2           #useAltFormat:Z
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 189
    .end local v5           #now:Ljava/util/Date;
    .end local v6           #res:Landroid/content/res/Resources;
    .restart local v1       #date:Ljava/lang/String;
    :cond_1
    :goto_3
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->use24hr()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    const v0, 0x7f0a0016

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .end local v0           #ampm:Z
    move v0, v3

    .line 202
    .end local v3           #hour:I
    .local v0, hour:I
    :goto_4
    const/16 v2, 0xa

    if-ge v0, v2, :cond_9

    .line 203
    const v2, 0x7f0a0017

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 204
    const v2, 0x7f0a0018

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 205
    const v2, 0x7f0a0019

    invoke-static {v0}, Lfr/clockwidget/lpsense/ClockWidget;->getTimeIcon(I)I

    move-result v0

    .end local v0           #hour:I
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 212
    :goto_5
    const v0, 0x7f0a001a

    div-int/lit8 v2, v4, 0xa

    invoke-static {v2}, Lfr/clockwidget/lpsense/ClockWidget;->getTimeIcon(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 213
    const v0, 0x7f0a001b

    rem-int/lit8 v2, v4, 0xa

    invoke-static {v2}, Lfr/clockwidget/lpsense/ClockWidget;->getTimeIcon(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 214
    const v0, 0x7f0a001f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 217
    const-string v0, "prefs_clock_tap"

    .line 218
    const-string v1, "prefs_clock_tap_pkg"

    .end local v1           #date:Ljava/lang/String;
    const-string v2, "prefs_clock_tap_act"

    const/4 v3, 0x1

    .line 217
    invoke-static {p0, v0, v1, v2, v3}, Lfr/clockwidget/lpsense/ClockWidget;->getTapIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 220
    .local v0, clockIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 221
    .local v0, tapPending:Landroid/app/PendingIntent;
    const v1, 0x7f0a0012

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 222
    const v1, 0x7f0a0014

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 227
    .end local v0           #tapPending:Landroid/app/PendingIntent;
    :goto_6
    const-string v0, "prefs_date_tap"

    .line 228
    const-string v1, "prefs_date_tap_pkg"

    const-string v2, "prefs_date_tap_act"

    const/4 v3, 0x1

    .line 227
    invoke-static {p0, v0, v1, v2, v3}, Lfr/clockwidget/lpsense/ClockWidget;->getTapIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 230
    .local v0, dateIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 231
    .local p0, tapPending:Landroid/app/PendingIntent;
    const v0, 0x7f0a001f

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 232
    .end local v0           #dateIntent:Landroid/content/Intent;
    const v0, 0x7f0a0020

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 233
    const v0, 0x7f0a0021

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 234
    const v0, 0x7f0a0022

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 235
    const v0, 0x7f0a0023

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 236
    const v0, 0x7f0a0024

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 241
    .end local p0           #tapPending:Landroid/app/PendingIntent;
    :goto_7
    return-void

    .line 151
    .end local v4           #minute:I
    .restart local v1       #date:Ljava/lang/String;
    .local v2, hour:I
    .local v3, minute:I
    .restart local v5       #now:Ljava/util/Date;
    .local p0, context:Landroid/content/Context;
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 154
    invoke-virtual {v5}, Ljava/util/Date;->getMinutes()I

    move-result v3

    .line 155
    const/16 v0, 0xc

    if-ge v2, v0, :cond_3

    .end local v0           #e:Ljava/lang/Exception;
    const/4 v0, 0x1

    .local v0, ampm:Z
    :goto_8
    move v4, v3

    .end local v3           #minute:I
    .restart local v4       #minute:I
    move v3, v2

    .end local v2           #hour:I
    .local v3, hour:I
    goto/16 :goto_1

    .end local v0           #ampm:Z
    .end local v4           #minute:I
    .restart local v2       #hour:I
    .local v3, minute:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_8

    .line 167
    .restart local v0       #ampm:Z
    .local v2, useAltFormat:Z
    .local v3, hour:I
    .restart local v4       #minute:I
    .restart local v6       #res:Landroid/content/res/Resources;
    :catch_1
    move-exception v2

    .line 168
    .local v2, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    .local v2, useAltFormat:Z
    goto/16 :goto_2

    .line 175
    .end local v1           #date:Ljava/lang/String;
    .end local v2           #useAltFormat:Z
    :catch_2
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    const-string v1, ""

    .line 178
    .local v1, date:Ljava/lang/String;
    const v2, 0x7f050008

    :try_start_5
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, weekNames:[Ljava/lang/String;
    if-eqz v2, :cond_4

    array-length v6, v2

    .end local v6           #res:Landroid/content/res/Resources;
    const/4 v7, 0x7

    if-ne v6, v7, :cond_4

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Date;->getDay()I

    move-result v7

    aget-object v2, v2, v7

    .end local v2           #weekNames:[Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Date;->getMonth()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " / "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v5

    .end local v5           #now:Ljava/util/Date;
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v1

    goto/16 :goto_3

    .line 183
    :catch_3
    move-exception v2

    .line 184
    .local v2, ex:Ljava/lang/Exception;
    const-string v1, ""

    goto/16 :goto_3

    .line 192
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_5
    if-eqz v3, :cond_6

    const/16 v2, 0xc

    if-ne v3, v2, :cond_7

    .line 193
    :cond_6
    const/16 v2, 0xc

    .line 199
    .end local v3           #hour:I
    .local v2, hour:I
    :goto_9
    const v3, 0x7f0a0016

    if-eqz v0, :cond_8

    const v0, 0x7f02000b

    .end local v0           #ampm:Z
    :goto_a
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    move v0, v2

    .end local v2           #hour:I
    .local v0, hour:I
    goto/16 :goto_4

    .line 195
    .local v0, ampm:Z
    .restart local v3       #hour:I
    :cond_7
    const/16 v2, 0xc

    if-le v3, v2, :cond_a

    .line 196
    add-int/lit8 v2, v3, -0xc

    .end local v3           #hour:I
    .restart local v2       #hour:I
    goto :goto_9

    .line 199
    :cond_8
    const v0, 0x7f02000d

    goto :goto_a

    .line 207
    .end local v2           #hour:I
    .local v0, hour:I
    :cond_9
    const v2, 0x7f0a0017

    div-int/lit8 v3, v0, 0xa

    invoke-static {v3}, Lfr/clockwidget/lpsense/ClockWidget;->getTimeIcon(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 208
    const v2, 0x7f0a0018

    rem-int/lit8 v0, v0, 0xa

    .end local v0           #hour:I
    invoke-static {v0}, Lfr/clockwidget/lpsense/ClockWidget;->getTimeIcon(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 209
    const v0, 0x7f0a0019

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 237
    .end local v1           #date:Ljava/lang/String;
    .end local p0           #context:Landroid/content/Context;
    :catch_4
    move-exception p0

    goto/16 :goto_7

    .line 223
    .restart local p0       #context:Landroid/content/Context;
    :catch_5
    move-exception v0

    goto/16 :goto_6

    .local v0, ampm:Z
    .restart local v1       #date:Ljava/lang/String;
    .restart local v3       #hour:I
    :cond_a
    move v2, v3

    .end local v3           #hour:I
    .restart local v2       #hour:I
    goto :goto_9
.end method

.method public static buildWeatherUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 9
    .parameter "context"
    .parameter "views"

    .prologue
    .line 245
    invoke-static {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->initPreferences(Landroid/content/Context;)V

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 248
    .local v7, res:Landroid/content/res/Resources;
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useCelsius()Z

    move-result v8

    .line 249
    .local v8, useCelsius:Z
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getEffectiveLatitude()F

    move-result v0

    .line 250
    .local v0, latitude:F
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getEffectiveLongitude()F

    move-result v2

    .line 251
    .local v2, longitude:F
    float-to-double v0, v0

    float-to-double v2, v2

    new-instance v4, Ljava/util/Date;

    .end local v0           #latitude:F
    .end local v2           #longitude:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    const-wide/16 v5, 0x0

    invoke-static/range {v0 .. v6}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->isDaytime(DDLjava/util/Date;D)Z

    move-result v1

    .line 253
    .local v1, daytime:Z
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getEffectiveLocation()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, location:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 255
    const v2, 0x7f0a001d

    invoke-static {v0}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->getCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #location:Ljava/lang/String;
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 260
    :goto_0
    new-instance v2, Lfr/clockwidget/lpsense/ForecastHelper;

    invoke-direct {v2, p0}, Lfr/clockwidget/lpsense/ForecastHelper;-><init>(Landroid/content/Context;)V

    .line 261
    .local v2, fcHelper:Lfr/clockwidget/lpsense/ForecastHelper;
    if-nez v2, :cond_1

    .line 301
    .end local v1           #daytime:Z
    .end local v2           #fcHelper:Lfr/clockwidget/lpsense/ForecastHelper;
    .end local p0
    :goto_1
    return-void

    .line 257
    .restart local v0       #location:Ljava/lang/String;
    .restart local v1       #daytime:Z
    .restart local p0
    :cond_0
    const v0, 0x7f0a001d

    const-string v2, ""

    .end local v0           #location:Ljava/lang/String;
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    .restart local v2       #fcHelper:Lfr/clockwidget/lpsense/ForecastHelper;
    :cond_1
    invoke-virtual {v2}, Lfr/clockwidget/lpsense/ForecastHelper;->getCurrentCondition()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, condition:Ljava/lang/String;
    const v3, 0x7f0a001e

    invoke-static {v7, v0}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->getWeatherCondition(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 267
    const v3, 0x7f0a001c

    invoke-static {v0, v1}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->getWeatherIcon(Ljava/lang/String;Z)I

    move-result v0

    .end local v0           #condition:Ljava/lang/String;
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 269
    const/high16 v0, -0x8000

    .line 270
    .local v0, temp:I
    invoke-virtual {v2}, Lfr/clockwidget/lpsense/ForecastHelper;->getCurrentTemp()I

    move-result v0

    .line 271
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_2

    .line 272
    .end local v1           #daytime:Z
    const v1, 0x7f0a0020

    invoke-static {v7, v0, v8}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->formatTemp(Landroid/content/res/Resources;IZ)Ljava/lang/String;

    move-result-object v0

    .end local v0           #temp:I
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 277
    :goto_2
    invoke-virtual {v2}, Lfr/clockwidget/lpsense/ForecastHelper;->getCurrentHigh()I

    move-result v0

    .line 278
    .local v0, high:I
    invoke-virtual {v2}, Lfr/clockwidget/lpsense/ForecastHelper;->getCurrentLow()I

    move-result v1

    .line 279
    .local v1, low:I
    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_3

    .end local v2           #fcHelper:Lfr/clockwidget/lpsense/ForecastHelper;
    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_3

    .line 280
    const v2, 0x7f0a0021

    const v3, 0x7f08004f

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 281
    const v2, 0x7f0a0023

    invoke-static {v7, v0, v8}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->formatTemp(Landroid/content/res/Resources;IZ)Ljava/lang/String;

    move-result-object v0

    .end local v0           #high:I
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 282
    const v0, 0x7f0a0022

    const v2, 0x7f080050

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 283
    const v0, 0x7f0a0024

    invoke-static {v7, v1, v8}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->formatTemp(Landroid/content/res/Resources;IZ)Ljava/lang/String;

    move-result-object v1

    .end local v1           #low:I
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 292
    :goto_3
    const-string v0, "prefs_weather_tap"

    .line 293
    const-string v1, "prefs_weather_tap_pkg"

    const-string v2, "prefs_weather_tap_act"

    const/4 v3, 0x0

    .line 292
    invoke-static {p0, v0, v1, v2, v3}, Lfr/clockwidget/lpsense/ClockWidget;->getTapIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 295
    .local v0, weatherIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 296
    .local p0, tapPending:Landroid/app/PendingIntent;
    const v0, 0x7f0a001c

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 297
    .end local v0           #weatherIntent:Landroid/content/Intent;
    .end local p0           #tapPending:Landroid/app/PendingIntent;
    :catch_0
    move-exception p0

    goto/16 :goto_1

    .line 274
    .local v0, temp:I
    .restart local v2       #fcHelper:Lfr/clockwidget/lpsense/ForecastHelper;
    .local p0, context:Landroid/content/Context;
    :cond_2
    const v0, 0x7f0a0020

    const-string v1, ""

    .end local v0           #temp:I
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 285
    .end local v2           #fcHelper:Lfr/clockwidget/lpsense/ForecastHelper;
    .local v0, high:I
    .restart local v1       #low:I
    :cond_3
    const v0, 0x7f0a0021

    const-string v1, ""

    .end local v0           #high:I
    .end local v1           #low:I
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 286
    const v0, 0x7f0a0023

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 287
    const v0, 0x7f0a0022

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 288
    const v0, 0x7f0a0024

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private static getTapIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 7
    .parameter "context"
    .parameter "actionKey"
    .parameter "packageKey"
    .parameter "activityKey"
    .parameter "configActivity"

    .prologue
    const-string v6, "fr.clockwidget.lpsense"

    .line 306
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v2, tapIntent:Landroid/content/Intent;
    if-eqz p4, :cond_0

    const-string v4, ".PreferencesActivity"

    move-object v0, v4

    .line 308
    .local v0, defaultActivity:Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapAction(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 309
    const-string v4, "fr.clockwidget.lpsense"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fr.clockwidget.lpsense"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    :goto_1
    return-object v2

    .line 307
    .end local v0           #defaultActivity:Ljava/lang/String;
    :cond_0
    const-string v4, ".ForecastActivity"

    move-object v0, v4

    goto :goto_0

    .line 311
    .restart local v0       #defaultActivity:Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, tapPackage:Ljava/lang/String;
    invoke-static {p3}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, tapActivity:Ljava/lang/String;
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 314
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 317
    :cond_2
    const-string v4, "fr.clockwidget.lpsense"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fr.clockwidget.lpsense"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private static getTimeIcon(I)I
    .locals 1
    .parameter "num"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, resId:I
    packed-switch p0, :pswitch_data_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 98
    :pswitch_0
    const v0, 0x7f020001

    .line 99
    goto :goto_0

    .line 101
    :pswitch_1
    const v0, 0x7f020002

    .line 102
    goto :goto_0

    .line 104
    :pswitch_2
    const v0, 0x7f020003

    .line 105
    goto :goto_0

    .line 107
    :pswitch_3
    const v0, 0x7f020004

    .line 108
    goto :goto_0

    .line 110
    :pswitch_4
    const v0, 0x7f020005

    .line 111
    goto :goto_0

    .line 113
    :pswitch_5
    const v0, 0x7f020006

    .line 114
    goto :goto_0

    .line 116
    :pswitch_6
    const v0, 0x7f020007

    .line 117
    goto :goto_0

    .line 119
    :pswitch_7
    const v0, 0x7f020008

    .line 120
    goto :goto_0

    .line 122
    :pswitch_8
    const v0, 0x7f020009

    .line 123
    goto :goto_0

    .line 125
    :pswitch_9
    const v0, 0x7f02000a

    .line 126
    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 83
    :try_start_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 84
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lfr/clockwidget/lpsense/ClockWidget;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 85
    .local v1, widgetIds:[I
    array-length v2, v1

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lfr/clockwidget/lpsense/UpdateService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v1           #widgetIds:[I
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 43
    const-string v5, "http://lpsense.allo-mobile.fr"

    invoke-static {p1, v5}, Lfr/nullwire/trace/ExceptionHandler;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    if-eqz p2, :cond_1

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 47
    const-string v5, "appWidgetIds"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 48
    .local v2, appWidgetIds:[I
    if-nez v2, :cond_0

    .line 50
    :try_start_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 51
    .local v3, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lfr/clockwidget/lpsense/ClockWidget;

    invoke-direct {v5, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 57
    .end local v3           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_0
    :goto_0
    invoke-static {p1}, Lfr/clockwidget/lpsense/PreferencesActivity;->initPreferences(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lfr/clockwidget/lpsense/PreferencesActivity;->setNextUpdate(J)V

    .line 59
    invoke-static {}, Lfr/clockwidget/lpsense/UpdateService;->requestLocationUpdate()V

    .line 61
    invoke-static {v2}, Lfr/clockwidget/lpsense/UpdateService;->requestUpdate([I)V

    .line 64
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lfr/clockwidget/lpsense/UpdateService;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #appWidgetIds:[I
    :cond_1
    :goto_1
    return-void

    .line 65
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #appWidgetIds:[I
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 66
    .local v4, e:Ljava/lang/Exception;
    sget-object v5, Lfr/clockwidget/lpsense/ClockWidget;->TAG:Ljava/lang/String;

    const-string v6, "Unable to start update service."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    .end local v2           #appWidgetIds:[I
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    const-string v5, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "appWidgetId"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, appWidgetId:I
    if-eqz v1, :cond_1

    .line 72
    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v1, v5, v7

    invoke-virtual {p0, p1, v5}, Lfr/clockwidget/lpsense/ClockWidget;->onDeleted(Landroid/content/Context;[I)V

    goto :goto_1

    .line 75
    .end local v1           #appWidgetId:I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 52
    .restart local v2       #appWidgetIds:[I
    :catch_1
    move-exception v5

    goto :goto_0
.end method

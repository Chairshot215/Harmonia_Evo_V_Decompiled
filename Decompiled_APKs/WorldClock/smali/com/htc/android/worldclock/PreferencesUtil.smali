.class public Lcom/htc/android/worldclock/PreferencesUtil;
.super Ljava/lang/Object;
.source "PreferencesUtil.java"


# static fields
.field public static final ALARM:Ljava/lang/String; = "alarm"

.field public static final ALARM_SOUND_TITLE:Ljava/lang/String; = "alarm_sound_title"

.field public static final ALARM_SOUND_URI:Ljava/lang/String; = "alarm_sound_uri"

.field public static final ALERT_SOUND_TITLE:Ljava/lang/String; = "alert_sound_title"

.field public static final ALERT_SOUND_URI:Ljava/lang/String; = "alert_sound_uri"

.field public static final BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field public static final CONDITION_ID:Ljava/lang/String; = "condition_id"

.field public static final DEFAULT_ALERT_SOUND_URI:Ljava/lang/String; = "default_alert_sound_uri"

.field public static final DEFAULT_SOUND_URI:Ljava/lang/String; = "defaut_sound_uri"

.field public static final DESKCLOCK:Ljava/lang/String; = "deskclock"

.field public static final EXPIRED_TIME:Ljava/lang/String; = "expired_time"

.field public static final HIGH_TEMPERATURE:Ljava/lang/String; = "high_temperature"

.field public static final HOUR_MODE:Ljava/lang/String; = "hour_mode"

.field public static final INFORMATION:Ljava/lang/String; = "information"

.field public static final LAPCOUNT:Ljava/lang/String; = "lap_count"

.field public static final LAPPAUSETIME:Ljava/lang/String; = "lap_pause_time"

.field public static final LAPSTARTTIME:Ljava/lang/String; = "lap_start_time"

.field public static final LAST_TAB:Ljava/lang/String; = "last_tab"

.field public static final LOAD_SETTINGS:Ljava/lang/String; = "load_settings"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final LONG_DATEFORMAT:Ljava/lang/String; = "long_dateformat"

.field public static final LOW_TEMPERATURE:Ljava/lang/String; = "low_temperature"

.field public static final NEXT_ALARM:Ljava/lang/String; = "next_alarm"

.field public static final NEXT_ALARM_DESCRIPTION:Ljava/lang/String; = "next_alarm_description"

.field public static final NEXT_ALARM_ID:Ljava/lang/String; = "next_alarm_id"

.field public static final PAUSETIME:Ljava/lang/String; = "pause_time"

.field public static final PLUGGED_IN:Ljava/lang/String; = "plugged_in"

.field public static final SHORT_DATEFORMAT:Ljava/lang/String; = "short_dateformat"

.field public static final STARTTIME:Ljava/lang/String; = "start_time"

.field public static final START_TIMER_HOUR:Ljava/lang/String; = "start_hour"

.field public static final START_TIMER_MINUTE:Ljava/lang/String; = "start_minute"

.field public static final START_TIMER_SECOND:Ljava/lang/String; = "start_second"

.field public static final START_WEEKDAY:Ljava/lang/String; = "start_weekday"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STOPWATCH:Ljava/lang/String; = "stopwatch"

.field public static final TAB:Ljava/lang/String; = "tab"

.field public static final TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final TIMER:Ljava/lang/String; = "timer"

.field public static final TIMER_HOUR:Ljava/lang/String; = "hour"

.field public static final TIMER_MINUTE:Ljava/lang/String; = "minute"

.field public static final TIMER_SECOND:Ljava/lang/String; = "second"

.field public static final TIMER_STATE:Ljava/lang/String; = "timer_state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlarmSoundTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 839
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 841
    const-string v2, "alarm"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 842
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "alarm_sound_title"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    const-string v2, "alarm_sound_title"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 845
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getAlarmSoundUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 858
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 860
    const-string v2, "alarm"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 861
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "alarm_sound_uri"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    const-string v2, "alarm_sound_uri"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 864
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getAlertSoundTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 608
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 610
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 611
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "alert_sound_title"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    const-string v2, "alert_sound_title"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 614
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getAlertSoundUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 627
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 629
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 630
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "alert_sound_uri"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    const-string v2, "alert_sound_uri"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 633
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getBatteryLevel(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 290
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 291
    const/4 v1, -0x1

    .line 292
    .local v1, value:I
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 293
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "battery_level"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const-string v2, "battery_level"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 296
    :cond_0
    return v1
.end method

.method public static getBatteryLevel(Landroid/content/SharedPreferences;)I
    .locals 3
    .parameter "settings"

    .prologue
    .line 473
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 474
    const/4 v0, -0x1

    .line 475
    .local v0, value:I
    const-string v1, "battery_level"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    const-string v1, "battery_level"

    const/4 v2, -0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 478
    :cond_0
    return v0
.end method

.method public static getConditionId(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 256
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 257
    const/4 v1, -0x1

    .line 258
    .local v1, value:I
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 259
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "condition_id"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const-string v2, "condition_id"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 262
    :cond_0
    return v1
.end method

.method public static getConditionId(Landroid/content/SharedPreferences;)I
    .locals 3
    .parameter "settings"

    .prologue
    .line 443
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 444
    const/4 v0, -0x1

    .line 445
    .local v0, value:I
    const-string v1, "condition_id"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const-string v1, "condition_id"

    const/4 v2, -0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 448
    :cond_0
    return v0
.end method

.method public static getDefaultAlertSoundUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 646
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 648
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 649
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "default_alert_sound_uri"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    const-string v2, "default_alert_sound_uri"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 652
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDefaultSoundUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 820
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 822
    const-string v2, "alarm"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 823
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "defaut_sound_uri"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    const-string v2, "defaut_sound_uri"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 826
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getExpiredTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 798
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 800
    const-string v3, "timer"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 801
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v3, "expired_time"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 802
    const-string v3, "expired_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 806
    .local v1, value:J
    :goto_0
    return-wide v1

    .line 804
    .end local v1           #value:J
    :cond_0
    const-wide/16 v1, 0x0

    .restart local v1       #value:J
    goto :goto_0
.end method

.method public static getHighTemperature(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 180
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 182
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "high_temperature"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const-string v2, "high_temperature"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 186
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getHighTemperature(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .parameter "settings"

    .prologue
    .line 375
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 377
    const-string v1, "high_temperature"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const-string v1, "high_temperature"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 380
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getInformation(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 237
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 239
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "information"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    const-string v2, "information"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 243
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getInformation(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .parameter "settings"

    .prologue
    .line 426
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 428
    const-string v1, "information"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    const-string v1, "information"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 431
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLapCount(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 491
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 493
    const-string v2, "stopwatch"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 494
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "lap_count"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    const-string v2, "lap_count"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 499
    .local v1, value:I
    :goto_0
    return v1

    .line 497
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x1

    .restart local v1       #value:I
    goto :goto_0
.end method

.method public static getLapPauseTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 567
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 569
    const-string v3, "stopwatch"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 570
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v3, "lap_pause_time"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    const-string v3, "lap_pause_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 575
    .local v1, value:J
    :goto_0
    return-wide v1

    .line 573
    .end local v1           #value:J
    :cond_0
    const-wide/16 v1, 0x0

    .restart local v1       #value:J
    goto :goto_0
.end method

.method public static getLapStartTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 548
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 550
    const-string v3, "stopwatch"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 551
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v3, "lap_start_time"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    const-string v3, "lap_start_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 556
    .local v1, value:J
    :goto_0
    return-wide v1

    .line 554
    .end local v1           #value:J
    :cond_0
    const-wide/16 v1, 0x0

    .restart local v1       #value:J
    goto :goto_0
.end method

.method public static getLastTab(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 898
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 900
    const-string v2, "tab"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 901
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "last_tab"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 902
    const-string v2, "last_tab"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 906
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 904
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLoadSettings(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 917
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 918
    const/4 v1, 0x0

    .line 919
    .local v1, value:Z
    const-string v2, "tab"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 920
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "load_settings"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 921
    const-string v2, "load_settings"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 923
    :cond_0
    return v1
.end method

.method public static getLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 218
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 220
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "location"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const-string v2, "location"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 224
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLocation(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .parameter "settings"

    .prologue
    .line 409
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 411
    const-string v1, "location"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const-string v1, "location"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 414
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLongDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 123
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 125
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "long_dateformat"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "long_dateformat"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 129
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLongDateFormat(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .parameter "settings"

    .prologue
    .line 324
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 326
    const-string v1, "long_dateformat"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const-string v1, "long_dateformat"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 329
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLowTemperature(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 199
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 201
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "low_temperature"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const-string v2, "low_temperature"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 205
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLowTemperature(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .parameter "settings"

    .prologue
    .line 392
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 394
    const-string v1, "low_temperature"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    const-string v1, "low_temperature"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 397
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getNextAlarm(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 67
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 69
    const-string v3, "deskclock"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v3, "next_alarm"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const-string v3, "next_alarm"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 75
    .local v1, value:J
    :goto_0
    return-wide v1

    .line 73
    .end local v1           #value:J
    :cond_0
    const-wide/16 v1, -0x1

    .restart local v1       #value:J
    goto :goto_0
.end method

.method public static getNextAlarm(Landroid/content/SharedPreferences;)J
    .locals 5
    .parameter "settings"

    .prologue
    .line 307
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 309
    const-string v2, "next_alarm"

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    const-string v2, "next_alarm"

    const-wide/16 v3, -0x1

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 314
    .local v0, value:J
    :goto_0
    return-wide v0

    .line 312
    .end local v0           #value:J
    :cond_0
    const-wide/16 v0, -0x1

    .restart local v0       #value:J
    goto :goto_0
.end method

.method public static getNextAlarmDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 105
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 106
    const-string v1, ""

    .line 107
    .local v1, value:Ljava/lang/String;
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "next_alarm_description"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const-string v2, "next_alarm_description"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_0
    return-object v1
.end method

.method public static getNextAlarmId(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 86
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 88
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "next_alarm_id"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string v2, "next_alarm_id"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, value:I
    :goto_0
    return v1

    .line 92
    .end local v1           #value:I
    :cond_0
    const/4 v1, -0x1

    .restart local v1       #value:I
    goto :goto_0
.end method

.method public static getPauseTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 529
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 531
    const-string v3, "stopwatch"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 532
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v3, "pause_time"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    const-string v3, "pause_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 537
    .local v1, value:J
    :goto_0
    return-wide v1

    .line 535
    .end local v1           #value:J
    :cond_0
    const-wide/16 v1, 0x0

    .restart local v1       #value:J
    goto :goto_0
.end method

.method public static getPluggedIn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 274
    const-string v2, "deskclock"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 275
    .local v0, settings:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 276
    .local v1, value:Z
    const-string v2, "plugged_in"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const-string v2, "plugged_in"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 279
    :cond_0
    return v1
.end method

.method public static getPluggedIn(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter "settings"

    .prologue
    .line 458
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, value:Z
    const-string v1, "plugged_in"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const-string v1, "plugged_in"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 463
    :cond_0
    return v0
.end method

.method public static getShortDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 142
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 144
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "short_dateformat"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const-string v2, "short_dateformat"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 148
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getShortDateFormat(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .parameter "settings"

    .prologue
    .line 341
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 343
    const-string v1, "short_dateformat"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    const-string v1, "short_dateformat"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 346
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getStartTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 510
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 512
    const-string v3, "stopwatch"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 513
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v3, "start_time"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    const-string v3, "start_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 518
    .local v1, value:J
    :goto_0
    return-wide v1

    .line 516
    .end local v1           #value:J
    :cond_0
    const-wide/16 v1, 0x0

    .restart local v1       #value:J
    goto :goto_0
.end method

.method public static getStartTimerHour(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 710
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 712
    const-string v2, "timer"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 713
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "start_hour"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    const-string v2, "start_hour"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 718
    .local v1, value:I
    :goto_0
    return v1

    .line 716
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:I
    goto :goto_0
.end method

.method public static getStartTimerMinute(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 748
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 750
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 751
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "start_minute"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    const-string v2, "start_minute"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 756
    .local v1, value:I
    :goto_0
    return v1

    .line 754
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x1

    .restart local v1       #value:I
    goto :goto_0
.end method

.method public static getStartTimerSecond(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 786
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 788
    const-string v2, "timer"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 789
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "start_second"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 790
    const-string v2, "start_second"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 794
    .local v1, value:I
    :goto_0
    return v1

    .line 792
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:I
    goto :goto_0
.end method

.method public static getStartWeekDay(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 878
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 879
    const/4 v1, 0x1

    .line 880
    .local v1, value:I
    const-string v2, "alarm"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 881
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "start_weekday"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    const-string v2, "start_weekday"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 884
    :cond_0
    return v1
.end method

.method public static getState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 586
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 588
    const-string v2, "stopwatch"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 589
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "state"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    const-string v2, "state"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 594
    .local v1, value:I
    :goto_0
    return v1

    .line 592
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:I
    goto :goto_0
.end method

.method public static getTemperature(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 161
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 163
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 164
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "temperature"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const-string v2, "temperature"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 167
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTemperature(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .parameter "settings"

    .prologue
    .line 358
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 360
    const-string v1, "temperature"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const-string v1, "temperature"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 363
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTimerHour(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 691
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 693
    const-string v2, "timer"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 694
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "hour"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    const-string v2, "hour"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 699
    .local v1, value:I
    :goto_0
    return v1

    .line 697
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:I
    goto :goto_0
.end method

.method public static getTimerMinute(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 729
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 731
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 732
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "minute"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 733
    const-string v2, "minute"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 737
    .local v1, value:I
    :goto_0
    return v1

    .line 735
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x1

    .restart local v1       #value:I
    goto :goto_0
.end method

.method public static getTimerSecond(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 767
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 769
    const-string v2, "timer"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 770
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "second"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    const-string v2, "second"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 775
    .local v1, value:I
    :goto_0
    return v1

    .line 773
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:I
    goto :goto_0
.end method

.method public static getTimerState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 672
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 674
    const-string v2, "timer"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 675
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "timer_state"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    const-string v2, "timer_state"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 680
    .local v1, value:I
    :goto_0
    return v1

    .line 678
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #value:I
    goto :goto_0
.end method

.method public static setAlarmSoundTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 851
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 852
    const-string v2, "alarm"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 853
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "alarm_sound_title"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 854
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 855
    return-void
.end method

.method public static setAlarmSoundUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 870
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 871
    const-string v2, "alarm"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 872
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "alarm_sound_uri"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 873
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 874
    return-void
.end method

.method public static setAlertSoundTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"

    .prologue
    .line 620
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 621
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 622
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "alert_sound_title"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 623
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 624
    return-void
.end method

.method public static setAlertSoundUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 639
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 640
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 641
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "alert_sound_uri"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 642
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 643
    return-void
.end method

.method public static setBatteryLevel(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 300
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 301
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 302
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "battery_level"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 303
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    return-void
.end method

.method public static setBatteryLevel(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "settings"
    .parameter "level"

    .prologue
    .line 482
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 483
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "battery_level"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 484
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 485
    return-void
.end method

.method public static setConditionId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "settings"
    .parameter "id"

    .prologue
    .line 452
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 453
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "condition_id"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 454
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 455
    return-void
.end method

.method public static setDefaultAlertSoundUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 658
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 659
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 660
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "default_alert_sound_uri"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 661
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 662
    return-void
.end method

.method public static setDefaultSoundUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 832
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 833
    const-string v2, "alarm"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 834
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "defaut_sound_uri"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 835
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 836
    return-void
.end method

.method public static setExpiredTime(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "time"

    .prologue
    .line 810
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 811
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 812
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "expired_time"

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 813
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 814
    return-void
.end method

.method public static setHighTemperature(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"

    .prologue
    .line 192
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 193
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 194
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "high_temperature"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    return-void
.end method

.method public static setHighTemperature(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "settings"
    .parameter "title"

    .prologue
    .line 386
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 387
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "high_temperature"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 388
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 389
    return-void
.end method

.method public static setInformation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"

    .prologue
    .line 249
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 250
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 251
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "information"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 252
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 253
    return-void
.end method

.method public static setInformation(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "settings"
    .parameter "title"

    .prologue
    .line 437
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 438
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "information"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 439
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 440
    return-void
.end method

.method public static setLapCount(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "count"

    .prologue
    .line 503
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 504
    const-string v2, "stopwatch"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 505
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lap_count"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 506
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 507
    return-void
.end method

.method public static setLapPauseTime(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "pause"

    .prologue
    .line 579
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 580
    const-string v2, "stopwatch"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 581
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lap_pause_time"

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 582
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 583
    return-void
.end method

.method public static setLapStartTime(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "start"

    .prologue
    .line 560
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 561
    const-string v2, "stopwatch"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 562
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lap_start_time"

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 563
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 564
    return-void
.end method

.method public static setLastTab(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "tab"

    .prologue
    .line 910
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 911
    const-string v2, "tab"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 912
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_tab"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 913
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 914
    return-void
.end method

.method public static setLoadSettings(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "loadSettings"

    .prologue
    .line 927
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 928
    const-string v2, "tab"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 929
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "load_settings"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 930
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 931
    return-void
.end method

.method public static setLocation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"

    .prologue
    .line 230
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 231
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 232
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "location"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    return-void
.end method

.method public static setLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "settings"
    .parameter "title"

    .prologue
    .line 420
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 421
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "location"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 422
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 423
    return-void
.end method

.method public static setLongDateFormat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"

    .prologue
    .line 135
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 136
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "long_dateformat"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void
.end method

.method public static setLongDateFormat(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "settings"
    .parameter "title"

    .prologue
    .line 335
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 336
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "long_dateformat"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 338
    return-void
.end method

.method public static setLowTemperature(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"

    .prologue
    .line 211
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 212
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 213
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "low_temperature"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    return-void
.end method

.method public static setLowTemperature(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "settings"
    .parameter "title"

    .prologue
    .line 403
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 404
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "low_temperature"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 405
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 406
    return-void
.end method

.method public static setNextAlarm(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "nextAlarm"

    .prologue
    .line 79
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 80
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "next_alarm"

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    return-void
.end method

.method public static setNextAlarm(Landroid/content/SharedPreferences;J)V
    .locals 3
    .parameter "settings"
    .parameter "nextAlarm"

    .prologue
    .line 318
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 319
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "next_alarm"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    return-void
.end method

.method public static setNextAlarmDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "description"

    .prologue
    .line 116
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 117
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "next_alarm_description"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    return-void
.end method

.method public static setNextAlarmId(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "nextAlarmId"

    .prologue
    .line 98
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 99
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "next_alarm_id"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    return-void
.end method

.method public static setPauseTime(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "pause"

    .prologue
    .line 541
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 542
    const-string v2, "stopwatch"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 543
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pause_time"

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 544
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 545
    return-void
.end method

.method public static setPluggedIn(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "pluggedIn"

    .prologue
    .line 283
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 284
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 285
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "plugged_in"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 286
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    return-void
.end method

.method public static setPluggedIn(Landroid/content/SharedPreferences;Z)V
    .locals 3
    .parameter "settings"
    .parameter "pluggedIn"

    .prologue
    .line 467
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 468
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "plugged_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 469
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 470
    return-void
.end method

.method public static setShortDateFormat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"

    .prologue
    .line 154
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 155
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 156
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "short_dateformat"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    return-void
.end method

.method public static setShortDateFormat(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "settings"
    .parameter "title"

    .prologue
    .line 352
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 353
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "short_dateformat"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 354
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    return-void
.end method

.method public static setStartTime(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "start"

    .prologue
    .line 522
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 523
    const-string v2, "stopwatch"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 524
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "start_time"

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 525
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 526
    return-void
.end method

.method public static setStartTimerHour(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "hour"

    .prologue
    .line 703
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 704
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 705
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "start_hour"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 706
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 707
    return-void
.end method

.method public static setStartTimerMinute(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "minute"

    .prologue
    .line 741
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 742
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 743
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "start_minute"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 744
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 745
    return-void
.end method

.method public static setStartTimerSecond(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "second"

    .prologue
    .line 779
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 780
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 781
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "start_second"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 782
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 783
    return-void
.end method

.method public static setStartWeekDay(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "weekDay"

    .prologue
    .line 888
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 889
    const-string v2, "alarm"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 890
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "start_weekday"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 891
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 892
    return-void
.end method

.method public static setState(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "state"

    .prologue
    .line 598
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 599
    const-string v2, "stopwatch"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 600
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "state"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 601
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 602
    return-void
.end method

.method public static setTemperature(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"

    .prologue
    .line 173
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 174
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 175
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "temperature"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    return-void
.end method

.method public static setTemperature(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "settings"
    .parameter "title"

    .prologue
    .line 369
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 370
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "temperature"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 371
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 372
    return-void
.end method

.method public static setTimerHour(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "hour"

    .prologue
    .line 684
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 685
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 686
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "hour"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 687
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 688
    return-void
.end method

.method public static setTimerMinute(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "minute"

    .prologue
    .line 722
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 723
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 724
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "minute"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 725
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 726
    return-void
.end method

.method public static setTimerSecond(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "second"

    .prologue
    .line 760
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 761
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 762
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "second"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 763
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 764
    return-void
.end method

.method public static setTimerState(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "state"

    .prologue
    .line 665
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 666
    const-string v2, "timer"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 667
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "timer_state"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 668
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 669
    return-void
.end method


# virtual methods
.method public setConditionId(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 266
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 267
    const-string v2, "deskclock"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 268
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "condition_id"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 270
    return-void
.end method

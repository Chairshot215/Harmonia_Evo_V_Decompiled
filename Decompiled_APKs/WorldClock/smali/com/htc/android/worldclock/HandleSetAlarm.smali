.class public Lcom/htc/android/worldclock/HandleSetAlarm;
.super Landroid/app/Activity;
.source "HandleSetAlarm.java"


# static fields
.field public static final VOICEALARM:Ljava/lang/String; = "voice_alarm"

.field public static final VOICEALARM_HOUR:Ljava/lang/String; = "voice_alarm_hour"

.field public static final VOICEALARM_MESSAGE:Ljava/lang/String; = "voice_alarm_message"

.field public static final VOICEALARM_MINUTE:Ljava/lang/String; = "voice_alarm_minute"


# instance fields
.field mCurrentAlarmCount:I

.field private mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/worldclock/HandleSetAlarm;->mCurrentAlarmCount:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/HandleSetAlarm;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    return-void
.end method

.method private CheckMaxAlarm()V
    .locals 4

    .prologue
    .line 171
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 172
    invoke-virtual {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 173
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/htc/android/worldclock/HandleSetAlarm;->mCurrentAlarmCount:I

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentAlarmCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/worldclock/HandleSetAlarm;->mCurrentAlarmCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 176
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 177
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, alertDialogView:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 179
    const v2, 0x7f08005e

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/HandleSetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 180
    const v2, 0x7f080044

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/HandleSetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 181
    const v2, 0x7f080016

    new-instance v3, Lcom/htc/android/worldclock/HandleSetAlarm$1;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/HandleSetAlarm$1;-><init>(Lcom/htc/android/worldclock/HandleSetAlarm;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 187
    invoke-direct {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->dismissHtcAlartDialog()V

    .line 188
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/HandleSetAlarm;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 189
    iget-object v2, p0, Lcom/htc/android/worldclock/HandleSetAlarm;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 192
    .end local v0           #alertDialogView:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_0
    if-eqz v1, :cond_1

    .line 193
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_1
    return-void
.end method

.method private VoiceAlarm(IILjava/lang/String;)V
    .locals 13
    .parameter "hour"
    .parameter "minutes"
    .parameter "message"

    .prologue
    .line 118
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 119
    new-instance v5, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-direct {v5}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;-><init>()V

    .line 122
    .local v5, mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/Alarms;->addAlarm(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v12

    .line 123
    .local v12, uri:Landroid/net/Uri;
    if-eqz v12, :cond_0

    .line 124
    invoke-virtual {v12}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 125
    .local v11, segment:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, mId:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 127
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 138
    .end local v1           #mId:I
    .end local v11           #segment:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v1       #mId:I
    .restart local v11       #segment:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->getDefaultAlarm()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, alertString:Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object/from16 v8, p3

    invoke-static/range {v0 .. v10}, Lcom/htc/android/worldclock/SetAlarm;->saveAlarm(Landroid/content/Context;IZIILcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private dismissHtcAlartDialog()V
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 164
    iget-object v0, p0, Lcom/htc/android/worldclock/HandleSetAlarm;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/android/worldclock/HandleSetAlarm;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/HandleSetAlarm;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 168
    :cond_0
    return-void
.end method

.method private getDefaultAlarm()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 144
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/worldclock/Global;->getAlarmSoundFromDB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, alarm_sound:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/worldclock/Global;->getAlarmAlertFromDB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, alarm_alert:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 150
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 156
    :goto_0
    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setDefaultSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-object v2

    .line 151
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 154
    :cond_2
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 50
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 53
    .local v2, intent:Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent.getAction() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 54
    if-eqz v2, :cond_0

    const-string v5, "android.intent.action.SET_ALARM"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->finish()V

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    const-string v5, "android.intent.extra.alarm.HOUR"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 58
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/htc/android/worldclock/AlarmClock;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/htc/android/worldclock/HandleSetAlarm;->startActivity(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->finish()V

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 64
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 65
    const-string v5, "android.intent.extra.alarm.HOUR"

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 67
    .local v1, hour:I
    const-string v5, "android.intent.extra.alarm.MINUTES"

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 69
    .local v4, minutes:I
    const-string v5, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, message:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 71
    const-string v3, ""

    .line 74
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hour = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minutes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->CheckMaxAlarm()V

    .line 80
    iget v5, p0, Lcom/htc/android/worldclock/HandleSetAlarm;->mCurrentAlarmCount:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    .line 81
    invoke-direct {p0, v1, v4, v3}, Lcom/htc/android/worldclock/HandleSetAlarm;->VoiceAlarm(IILjava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 113
    invoke-direct {p0}, Lcom/htc/android/worldclock/HandleSetAlarm;->dismissHtcAlartDialog()V

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 115
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 94
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 96
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 88
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 90
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 106
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 108
    return-void
.end method

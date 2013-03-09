.class public final Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcSetTimePreference.java"

# interfaces
.implements Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;
.implements Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# static fields
.field public static final KEY:Ljava/lang/String; = "SET_TIME"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->initialize(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->initialize(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    const-string v0, "SET_TIME"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->setKey(Ljava/lang/String;)V

    .line 81
    :cond_0
    const v0, 0x7f0c0858

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->setTitle(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->updateSummary()V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->isAutoTime()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->setEnabled(Z)V

    .line 84
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected isAutoTime()Z
    .locals 5

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 108
    .local v0, DEFAULT_VALUE:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 114
    .local v2, enabled:Z
    :goto_0
    return v2

    .line 108
    .end local v2           #enabled:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    .restart local v2       #enabled:Z
    goto :goto_0
.end method

.method protected onClick()V
    .locals 7

    .prologue
    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 120
    .local v6, cal:Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 121
    .local v3, hourOfDay:I
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 122
    .local v4, minute:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 124
    .local v5, isHour24:Z
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    .line 126
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->unregisterReceiver()V

    .line 206
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->updateSummary()V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->isAutoTime()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->setEnabled(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->registerReceiver()V

    .line 202
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTimeChanged(Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->updateSummary()V

    .line 191
    return-void
.end method

.method public onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V
    .locals 7
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 137
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 138
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 139
    const/16 v3, 0xd

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 142
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 152
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 157
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->updateSummary()V

    .line 160
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    .line 171
    iget-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->setOnTimeChangedListener(Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->registerReceiver()V

    .line 174
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->unregisterReceiver()V

    .line 180
    :cond_0
    return-void
.end method

.method public updateSummary()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 91
    .local v1, now:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 94
    .local v0, dateFormat:Ljava/text/DateFormat;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

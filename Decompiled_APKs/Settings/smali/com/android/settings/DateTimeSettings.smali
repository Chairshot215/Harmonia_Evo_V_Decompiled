.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$updateHandler;
    }
.end annotation


# static fields
.field public static final ACTION_TIME_FORMAT_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEFORMAT_CHANGED"

.field protected static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final KEY_AUTO_TIME:Ljava/lang/String; = "auto_time"

.field private static final KEY_AUTO_TIME_ZONE:Ljava/lang/String; = "auto_zone"

.field private static final KEY_DATE_FORMAT:Ljava/lang/String; = "date_format"

.field private static final TAG:Ljava/lang/String; = "DateTimeSettings"


# instance fields
.field private mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mDateFormat:Lcom/htc/preference/HtcListPreference;

.field private mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Lcom/htc/preference/HtcPreference;

.field private mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

.field private mTimeZone:Lcom/htc/preference/HtcPreference;

.field private updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 451
    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 470
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 423
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 425
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 426
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 427
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 428
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 430
    if-gez p0, :cond_0

    .line 431
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 432
    neg-int p0, p0

    .line 437
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 438
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 440
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 441
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 443
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 445
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 446
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 448
    return-object v0

    .line 434
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 384
    :cond_0
    :goto_0
    return v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDateFormatShort(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "currentFormat"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, dateFormats:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, dateFormats_short:[Ljava/lang/String;
    array-length v4, v1

    .line 250
    .local v4, nlen:I
    const/4 v0, 0x0

    .line 252
    .local v0, currentFormatIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 253
    aget-object v5, v1, v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    move v0, v3

    .line 252
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    :cond_1
    aget-object v5, v2, v0

    return-object v5
.end method

.method private getDateFormatShortFromSystem()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeZoneText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 405
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 406
    .local v2, tz:Ljava/util/TimeZone;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 407
    .local v0, daylight:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v1, sb:Ljava/lang/StringBuilder;
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isI0001:Z

    if-eqz v4, :cond_1

    .line 410
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    :cond_0
    add-int/2addr v3, v4

    invoke-static {v3}, Lcom/android/settings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 419
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 413
    :cond_1
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    :cond_2
    add-int/2addr v3, v4

    invoke-static {v3}, Lcom/android/settings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private initUI()V
    .locals 13

    .prologue
    .line 99
    const-string v11, "auto_time"

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 100
    .local v0, autoTimeEnabled:Z
    const-string v11, "auto_time_zone"

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 102
    .local v1, autoTimeZoneEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 103
    .local v9, intent:Landroid/content/Intent;
    const-string v11, "firstRun"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 105
    .local v10, isFirstRun:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 107
    const-string v11, "auto_time"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 108
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 109
    const-string v11, "auto_zone"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz v10, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 114
    const/4 v1, 0x0

    .line 116
    :cond_1
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 117
    const-string v11, "time"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    .line 118
    const-string v11, "24 hour"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    .line 119
    const-string v11, "timezone"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    .line 120
    const-string v11, "date"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    .line 121
    const-string v11, "date_format"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcListPreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/htc/preference/HtcListPreference;

    .line 123
    if-eqz v10, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 128
    :cond_2
    const/4 v4, -0x1

    .line 129
    .local v4, currentFormatIndex:I
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070045

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, dateFormats:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070046

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, dateFormats_short:[Ljava/lang/String;
    array-length v11, v5

    new-array v7, v11, [Ljava/lang/String;

    .line 132
    .local v7, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, currentFormat:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0183

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-direct {p0, v3}, Lcom/android/settings/DateTimeSettings;->setDateFormat(Ljava/lang/String;)V

    .line 140
    :cond_3
    const/4 v2, 0x0

    .line 141
    .local v2, bFound:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v11, v7

    if-ge v8, v11, :cond_5

    .line 142
    aget-object v11, v5, v8

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    .line 143
    aget-object v11, v5, v8

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 144
    const/4 v2, 0x1

    .line 145
    move v4, v8

    .line 141
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 148
    :cond_5
    if-eqz v2, :cond_6

    .line 149
    aget-object v11, v6, v4

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    .line 155
    :goto_1
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11, v7}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 156
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/htc/preference/HtcListPreference;

    const v12, 0x7f070045

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 157
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 159
    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    if-nez v0, :cond_7

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->setEnabled(Z)V

    .line 160
    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    if-nez v0, :cond_8

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->setEnabled(Z)V

    .line 161
    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    if-nez v1, :cond_9

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 162
    return-void

    .line 152
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormatShortFromSystem()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    .line 160
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 161
    :cond_9
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 368
    return-void

    .line 365
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 479
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 481
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 482
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 483
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 484
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 486
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 487
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 489
    :cond_0
    return-void
.end method

.method private setDateFormat(Ljava/lang/String;)V
    .locals 2
    .parameter "format"

    .prologue
    .line 389
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const/4 p1, 0x0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    return-void
.end method

.method private setDateFormatShort(Ljava/lang/String;)V
    .locals 2
    .parameter "format"

    .prologue
    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 398
    const/4 p1, 0x0

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 401
    return-void
.end method

.method static setTime(II)V
    .locals 7
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 492
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 494
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 495
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 496
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 498
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 499
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 501
    :cond_0
    return-void
.end method

.method private time24FormatUpdated()V
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, time24FormatUpdated:Landroid/content/Intent;
    const-string v1, "time24Format"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    return-void
.end method


# virtual methods
.method public getHtcDateFormatSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 207
    .local v1, now:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, dateFormat:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c07e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 221
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 91
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Lcom/android/settings/DateTimeSettings$updateHandler;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/DateTimeSettings$updateHandler;-><init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->updateHandler:Landroid/os/Handler;

    .line 93
    :cond_0
    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 96
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 191
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 194
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->onPause(Landroid/app/Activity;)V

    .line 198
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->onPause(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 336
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 337
    const/4 v1, 0x0

    .line 344
    :goto_0
    return v1

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    if-ne p2, v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 341
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    .line 342
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->time24FormatUpdated()V

    .line 344
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 171
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 174
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 179
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 184
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->onResume(Landroid/app/Activity;)V

    .line 185
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->onResume(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 262
    const-string v5, "date_format"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0183

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, format:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->setDateFormat(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->getDateFormatShort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, shortDateFormat:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    .line 272
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 276
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 304
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #format:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #shortDateFormat:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string v5, "auto_time"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 279
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 280
    .local v1, autoEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    if-eqz v1, :cond_2

    move v5, v6

    :goto_1
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    if-nez v1, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->setEnabled(Z)V

    .line 284
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {v5, v6}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v5, v7

    .line 280
    goto :goto_1

    :cond_3
    move v5, v7

    .line 283
    goto :goto_2

    :cond_4
    move v6, v7

    .line 284
    goto :goto_3

    .line 286
    .end local v1           #autoEnabled:Z
    :cond_5
    const-string v5, "auto_zone"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 288
    .restart local v1       #autoEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v1, :cond_6

    move v5, v6

    :goto_4
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    if-nez v1, :cond_7

    :goto_5
    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 295
    if-eqz v1, :cond_8

    .line 296
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.htc.app.autosetting.location"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    move v5, v7

    .line 288
    goto :goto_4

    :cond_7
    move v6, v7

    .line 291
    goto :goto_5

    .line 298
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.htc.app.autosetting.cancel"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "auto_time_zone"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 226
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    .line 227
    .local v11, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 228
    .local v10, now:Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getHtcDateFormatSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, dateFormats:[Ljava/lang/String;
    array-length v0, v7

    new-array v8, v0, [Ljava/lang/String;

    .line 240
    .local v8, formattedDates:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_0

    .line 241
    aget-object v0, v7, v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    .line 240
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v8}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method

.class public Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "TimezoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_DATEPICKER:I = 0x3

.field private static final DIALOG_TIMEPICKER:I = 0x4

.field private static final DIALOG_TIMEZONEPICKER:I = 0x2

.field public static final EXTRA_24:Ljava/lang/String; = "IS_24"

.field public static final EXTRA_CASE:Ljava/lang/String; = "FROM_DATE_CASE"

.field public static final EXTRA_DAY:Ljava/lang/String; = "SELECTED_DAY"

.field public static final EXTRA_HOUR:Ljava/lang/String; = "SELECTED_HOUR"

.field public static final EXTRA_MILLIS:Ljava/lang/String; = "SELECTED_MILLIS"

.field public static final EXTRA_MIN:Ljava/lang/String; = "SELECTED_MIN"

.field public static final EXTRA_MIN_YEAR:Ljava/lang/String; = "SELECTED_MIN_YEAR"

.field public static final EXTRA_MONTH:Ljava/lang/String; = "SELECTED_MONTH"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "SELECTED_TITLE"

.field public static final EXTRA_YEAR:Ljava/lang/String; = "SELECTED_YEAR"

.field private static final KEY_SELECT_CITY:Ljava/lang/String; = "select_city"

.field private static final KEY_SELECT_DATE:Ljava/lang/String; = "select_date"

.field private static final KEY_SELECT_TIME:Ljava/lang/String; = "select_time"

.field private static final KEY_TIMEZONE_DESCRIPTION:Ljava/lang/String; = "timezone_description"

.field private static final SET_CURRENT_TIME:Ljava/lang/String; = "oobe_set_current_time"

.field private static final TAG:Ljava/lang/String; = "OOBE_TimezoneActivity"


# instance fields
.field TimezoneCityName:Ljava/lang/String;

.field TimezoneId:Ljava/lang/String;

.field btnBack:Landroid/widget/Button;

.field btnNext:Landroid/widget/Button;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLaunchByIcon:Z

.field private mProgressImage:Landroid/widget/ImageView;

.field private mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

.field private mSelectDate:Lcom/htc/preference/HtcPreference;

.field private mSelectTime:Lcom/htc/preference/HtcPreference;

.field private mStepSetting:Lcom/htc/android/htcsetupwizard/StepSetting;

.field private mbBackFinish:Z

.field private mbFinalPage:Z

.field private mbIsSystemTimeChanged:Z

.field private preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private progressBarLength:I

.field private selectTime:Landroid/text/format/Time;

.field private startDateListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

.field private startTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->progressBarLength:I

    .line 121
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mLaunchByIcon:Z

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbBackFinish:Z

    .line 123
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbFinalPage:Z

    .line 124
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbIsSystemTimeChanged:Z

    .line 243
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->startDateListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    .line 262
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$2;-><init>(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->startTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    .line 536
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$3;-><init>(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbFinalPage:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->updateAll()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbIsSystemTimeChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->initialize()V

    return-void
.end method

.method private check24HourFormat()V
    .locals 7

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 517
    .local v0, locale:Ljava/util/Locale;
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 519
    .local v1, natural:Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 520
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 521
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, pattern:Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 524
    const-string v4, "24"

    .line 532
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 534
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #natural:Ljava/text/DateFormat;
    :cond_0
    return-void

    .line 526
    .restart local v0       #locale:Ljava/util/Locale;
    .restart local v1       #natural:Ljava/text/DateFormat;
    .restart local v2       #pattern:Ljava/lang/String;
    .restart local v3       #sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "12"

    goto :goto_0

    .line 529
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v4, "12"

    goto :goto_0
.end method

.method private formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x4

    .line 482
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    .line 484
    const/16 v3, 0xa

    new-array v0, v3, [C

    .line 485
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 486
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 487
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 488
    const/4 v3, 0x3

    const/16 v4, 0x20

    aput-char v4, v0, v3

    .line 490
    if-gez p1, :cond_0

    .line 491
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 492
    neg-int p1, p1

    .line 497
    :goto_0
    div-int/lit8 v1, p1, 0x3c

    .line 498
    .local v1, hours:I
    rem-int/lit8 v2, p1, 0x3c

    .line 500
    .local v2, minutes:I
    const/4 v3, 0x5

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 501
    const/4 v3, 0x6

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 503
    const/4 v3, 0x7

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 505
    const/16 v3, 0x8

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 506
    const/16 v3, 0x9

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 508
    return-object v0

    .line 494
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, dateFormat:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string v0, "EE, MMM dd, yyyy"

    .line 133
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    :cond_0
    return-object v0
.end method

.method private getTimeZoneGMT()Ljava/lang/String;
    .locals 6

    .prologue
    .line 461
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 462
    .local v2, tz:Ljava/util/TimeZone;
    const-string v3, "OOBE_TimezoneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimeZone ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 464
    .local v0, daylight:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    :goto_0
    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->formatOffset(I)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 465
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getTimeZoneGMT(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    .line 472
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 473
    .local v2, tz:Ljava/util/TimeZone;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 474
    .local v0, daylight:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    :goto_0
    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->formatOffset(I)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 475
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getTimeZoneID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 447
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 448
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 450
    .local v0, daylight:Z
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTimeZoneID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 454
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 455
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 457
    .local v0, daylight:Z
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 162
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 163
    const-string v4, "LaunchByIcon"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mLaunchByIcon:Z

    .line 164
    const-string v4, "SelfFinishBackKeyPressed"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbBackFinish:Z

    .line 165
    const-string v4, "FinalPage"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbFinalPage:Z

    .line 168
    :cond_0
    const v4, 0x7f03002a

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->setContentView(I)V

    .line 170
    const v4, 0x7f0d003f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 172
    .local v3, layout:Landroid/widget/LinearLayout;
    const/16 v4, 0xd

    invoke-static {p0, v3, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 174
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oobe_set_current_time"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 176
    .local v2, isSet:I
    sget-boolean v4, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isChaCha:Z

    if-eqz v4, :cond_3

    .line 179
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v5, "timezone_header"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;

    .line 180
    .local v0, header:Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;
    const v4, 0x7f03001a

    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->setLayoutResource(I)V

    .line 181
    const v4, 0x7f0a00b0

    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->setTitle(I)V

    .line 182
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getTitleColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->setTitleColor(I)V

    .line 183
    invoke-static {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getTitleDivider(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->setTitleDivider(I)V

    .line 191
    .end local v0           #header:Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;
    :goto_0
    const v4, 0x7f0d0009

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->btnNext:Landroid/widget/Button;

    .line 192
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->btnNext:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbFinalPage:Z

    if-eqz v4, :cond_4

    .line 195
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->btnNext:Landroid/widget/Button;

    const v5, 0x7f0a0013

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 196
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_1
    :goto_1
    const v4, 0x7f0d0003

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->btnBack:Landroid/widget/Button;

    .line 202
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->btnBack:Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 203
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->btnBack:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :cond_2
    return-void

    .line 187
    :cond_3
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 188
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    goto :goto_0

    .line 198
    :cond_4
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->btnNext:Landroid/widget/Button;

    const v5, 0x7f0a000e

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private onCreatePreferences()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->updateAll()V

    .line 209
    return-void
.end method

.method private setTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "TimezoneId"

    .prologue
    .line 343
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 344
    .local v0, alarm:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 345
    const-string v1, "OOBE_TimezoneActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Time Zone Id : \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    const-string v1, "OOBE_TimezoneActivity"

    const-string v2, "Get Alarm manager service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAll()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->updateTimezoneDescription()V

    .line 424
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->updateTimezoneDisplay()V

    .line 425
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->updateTimeDisplay()V

    .line 426
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->updateDateDisplay()V

    .line 427
    return-void
.end method

.method private updateDateDisplay()V
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectDate:Lcom/htc/preference/HtcPreference;

    if-nez v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "select_date"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectDate:Lcom/htc/preference/HtcPreference;

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectDate:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_1

    .line 408
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 409
    .local v0, now:Ljava/util/Date;
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectDate:Lcom/htc/preference/HtcPreference;

    const v2, 0x7f0a00b2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 410
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectDate:Lcom/htc/preference/HtcPreference;

    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    .end local v0           #now:Ljava/util/Date;
    :cond_1
    return-void
.end method

.method private updateTimeDisplay()V
    .locals 3

    .prologue
    .line 387
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectTime:Lcom/htc/preference/HtcPreference;

    if-nez v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "select_time"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectTime:Lcom/htc/preference/HtcPreference;

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectTime:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_1

    .line 394
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 395
    .local v0, now:Ljava/util/Date;
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectTime:Lcom/htc/preference/HtcPreference;

    const v2, 0x7f0a00b4

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 396
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectTime:Lcom/htc/preference/HtcPreference;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 398
    .end local v0           #now:Ljava/util/Date;
    :cond_1
    return-void
.end method

.method private updateTimezoneDescription()V
    .locals 3

    .prologue
    .line 415
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "timezone_description"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;

    .line 418
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setDivide(ZZ)V

    .line 420
    .end local v0           #pref:Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;
    :cond_0
    return-void
.end method

.method private updateTimezoneDisplay()V
    .locals 5

    .prologue
    const v4, 0x7f0a00b3

    .line 353
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "select_city"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

    .line 356
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setLayoutResource(I)V

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->TimezoneId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->TimezoneCityName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 364
    const-string v1, "OOBE_TimezoneActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time zone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->TimezoneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v1, "OOBE_TimezoneActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time zone city name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->TimezoneCityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 367
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->TimezoneId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getTimeZoneGMT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    :cond_1
    :goto_0
    return-void

    .line 369
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mLaunchByIcon:Z

    if-nez v1, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 372
    const-string v0, "Asia/Shanghai"

    .line 373
    .local v0, TimezoneId:Ljava/lang/String;
    const-string v1, "OOBE_TimezoneActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHS lang, set Time zone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->setTimeZone(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 376
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getTimeZoneGMT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    .end local v0           #TimezoneId:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 381
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getTimeZoneGMT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public LogForUserProfile()V
    .locals 4

    .prologue
    .line 432
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 435
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "is_sysTimeChanged"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "is_timechanged"

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbIsSystemTimeChanged:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-interface {v2, v3, v1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 440
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 443
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 444
    return-void

    .line 435
    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 607
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 608
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 296
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 297
    const/4 v8, -0x1

    if-ne v8, p2, :cond_0

    .line 298
    const/4 v8, 0x3

    if-ne v8, p1, :cond_1

    .line 299
    const-string v8, "SELECTED_YEAR"

    const/16 v9, 0x7d0

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 300
    .local v7, year:I
    const-string v8, "SELECTED_MONTH"

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 301
    .local v4, month:I
    const-string v8, "SELECTED_DAY"

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 302
    .local v1, day:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 303
    .local v0, c:Ljava/util/Calendar;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 304
    const/4 v8, 0x2

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 305
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 306
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 307
    .local v5, when:J
    const-wide/16 v8, 0x3e8

    div-long v8, v5, v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 308
    invoke-static {v5, v6}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 323
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #day:I
    .end local v4           #month:I
    .end local v5           #when:J
    .end local v7           #year:I
    :cond_0
    :goto_0
    const/4 v8, 0x2

    if-ne v8, p1, :cond_3

    .line 324
    if-nez p3, :cond_2

    .line 339
    :goto_1
    return-void

    .line 311
    :cond_1
    const/4 v8, 0x4

    if-ne v8, p1, :cond_0

    .line 312
    const-string v8, "SELECTED_HOUR"

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 313
    .local v2, hourOfDay:I
    const-string v8, "SELECTED_MIN"

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 314
    .local v3, minute:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 315
    .restart local v0       #c:Ljava/util/Calendar;
    const/16 v8, 0xb

    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 316
    const/16 v8, 0xc

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 317
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 318
    .restart local v5       #when:J
    const-wide/16 v8, 0x3e8

    div-long v8, v5, v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 319
    invoke-static {v5, v6}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    goto :goto_0

    .line 327
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #hourOfDay:I
    .end local v3           #minute:I
    .end local v5           #when:J
    :cond_2
    const-string v8, "timezoneId"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->TimezoneId:Ljava/lang/String;

    .line 328
    const-string v8, "name"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->TimezoneCityName:Ljava/lang/String;

    .line 329
    const-string v8, "OOBE_TimezoneActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time zone ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->TimezoneId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v8, "OOBE_TimezoneActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time zone city name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->TimezoneCityName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v8, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->TimezoneId:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->setTimeZone(Ljava/lang/String;)V

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oobe_set_current_time"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->updateAll()V

    goto/16 :goto_1
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 664
    const-string v0, "OOBE_TimezoneActivity"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 666
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 625
    :goto_0
    return-void

    .line 615
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->check24HourFormat()V

    .line 616
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->setResult(I)V

    .line 617
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->finish()V

    goto :goto_0

    .line 621
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->setResult(I)V

    .line 622
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->finish()V

    goto :goto_0

    .line 611
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_1
        0x7f0d0009 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 154
    const-string v0, "OOBE_TimezoneActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->initialize()V

    .line 156
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 141
    const-string v0, "OOBE_TimezoneActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->requestWindowFeature(I)Z

    .line 143
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->addPreferencesFromResource(I)V

    .line 146
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 148
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->initialize()V

    .line 149
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->onCreatePreferences()V

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 578
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 579
    const-string v0, "OOBE_TimezoneActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mLaunchByIcon:Z

    if-nez v0, :cond_0

    .line 581
    const-string v0, "OOBE_TimezoneActivity"

    const-string v1, "start Ulog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->LogForUserProfile()V

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    const-string v0, "OOBE_TimezoneActivity"

    const-string v1, "skip Ulog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 643
    const-string v1, "OOBE_TimezoneActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    sparse-switch p1, :sswitch_data_0

    .line 658
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 647
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 648
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->setResult(I)V

    .line 649
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 645
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 630
    const-string v0, "OOBE_TimezoneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    packed-switch p1, :pswitch_data_0

    .line 637
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 634
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0009

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 570
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 571
    const-string v0, "OOBE_TimezoneActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 574
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 214
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    .line 216
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectCity:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v6, i:Landroid/content/Intent;
    const-string v0, "com.htc.android.worldclock.action.TIMEZONEPICKER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v0, "search_intention"

    const/4 v1, 0x3

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    const/4 v0, 0x2

    invoke-virtual {p0, v6, v0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 239
    .end local v6           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectDate:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->selectTime:Landroid/text/format/Time;

    .line 226
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->selectTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 227
    new-instance v0, Lcom/htc/widget/HtcDatePickerDialog;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->startDateListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->selectTime:Landroid/text/format/Time;

    iget v3, v1, Landroid/text/format/Time;->year:I

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->selectTime:Landroid/text/format/Time;

    iget v4, v1, Landroid/text/format/Time;->month:I

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->selectTime:Landroid/text/format/Time;

    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePickerDialog;->show()V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mSelectTime:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->selectTime:Landroid/text/format/Time;

    .line 233
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->selectTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 234
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->startTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->selectTime:Landroid/text/format/Time;

    iget v3, v1, Landroid/text/format/Time;->hour:I

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->selectTime:Landroid/text/format/Time;

    iget v4, v1, Landroid/text/format/Time;->minute:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 592
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 548
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 549
    const-string v1, "OOBE_TimezoneActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 553
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 558
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->updateAll()V

    .line 559
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 597
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 563
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 564
    const-string v0, "OOBE_TimezoneActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 601
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 602
    const-string v0, "OOBE_TimezoneActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

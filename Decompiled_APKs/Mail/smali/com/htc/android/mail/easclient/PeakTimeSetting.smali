.class public Lcom/htc/android/mail/easclient/PeakTimeSetting;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "PeakTimeSetting.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easclient/PeakTimeSetting$PEAK_TIME_TYPE;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final ACCOUNTDB_OFF_PEAK_FREQUENCY:Ljava/lang/String;

.field private final ACCOUNTDB_PEAK_DAYS:Ljava/lang/String;

.field private final ACCOUNTDB_PEAK_FREQUENCY:Ljava/lang/String;

.field private final ACCOUNTDB_PEAK_TIME_END:Ljava/lang/String;

.field private final ACCOUNTDB_PEAK_TIME_START:Ljava/lang/String;

.field private final DEFAULTSETTING:I

.field private final DIALOG_ERROR_DAYS_EMPTY:I

.field private final DIALOG_PEAK_TIME_END:I

.field private final DIALOG_PEAK_TIME_START:I

.field private final DIALOG_SELECT_DAYS:I

.field private final KEY_PREF_OFF_PEAK_FREQUENCY:Ljava/lang/String;

.field private final KEY_PREF_PEAK_DAYS:Ljava/lang/String;

.field private final KEY_PREF_PEAK_FREQUENCY:Ljava/lang/String;

.field private final KEY_PREF_PEAK_TIME_END:Ljava/lang/String;

.field private final KEY_PREF_PEAK_TIME_START:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private isExchange:Z

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mAccountId:J

.field mContext:Landroid/content/Context;

.field private mDaySelectError:Z

.field private mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

.field private mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

.field private mFromWhere:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

.field mPeakDaysPref:Lcom/htc/preference/HtcPreferenceScreen;

.field mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

.field mPeakTimeEndPref:Lcom/htc/preference/HtcPreferenceScreen;

.field mPeakTimeStartPref:Lcom/htc/preference/HtcPreferenceScreen;

.field private mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field private mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

.field private peakTimeEnd:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

.field private peakTimeStart:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 52
    const-string v0, "PeakTimeSetting"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;

    .line 55
    iput v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DEFAULTSETTING:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DIALOG_SELECT_DAYS:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DIALOG_ERROR_DAYS_EMPTY:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DIALOG_PEAK_TIME_START:I

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DIALOG_PEAK_TIME_END:I

    .line 61
    const-string v0, "peak_days"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->KEY_PREF_PEAK_DAYS:Ljava/lang/String;

    .line 62
    const-string v0, "peak_time_start"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->KEY_PREF_PEAK_TIME_START:Ljava/lang/String;

    .line 63
    const-string v0, "peak_time_end"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->KEY_PREF_PEAK_TIME_END:Ljava/lang/String;

    .line 64
    const-string v0, "frequency_peak_time"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->KEY_PREF_PEAK_FREQUENCY:Ljava/lang/String;

    .line 65
    const-string v0, "frequency_off_peak_time"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->KEY_PREF_OFF_PEAK_FREQUENCY:Ljava/lang/String;

    .line 66
    const-string v0, "_peakdays"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->ACCOUNTDB_PEAK_DAYS:Ljava/lang/String;

    .line 67
    const-string v0, "_peaktimestart"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->ACCOUNTDB_PEAK_TIME_START:Ljava/lang/String;

    .line 68
    const-string v0, "_peaktimeend"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->ACCOUNTDB_PEAK_TIME_END:Ljava/lang/String;

    .line 69
    const-string v0, "_peakonfrequency"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->ACCOUNTDB_PEAK_FREQUENCY:Ljava/lang/String;

    .line 70
    const-string v0, "_peakofffrequency"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->ACCOUNTDB_OFF_PEAK_FREQUENCY:Ljava/lang/String;

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    .line 76
    iput-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    .line 77
    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    .line 79
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    .line 80
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    .line 83
    iput-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$1;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 482
    new-instance v0, Lcom/htc/android/mail/easclient/PeakTimeSetting$12;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$12;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->peakTimeStart:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    .line 489
    new-instance v0, Lcom/htc/android/mail/easclient/PeakTimeSetting$13;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$13;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->peakTimeEnd:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/mail/easclient/PeakTimeSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/android/mail/easclient/PeakTimeSetting;Lcom/htc/android/mail/eassvc/pim/EASOptions;)Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/android/mail/easclient/PeakTimeSetting;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/android/mail/easclient/PeakTimeSetting;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/android/mail/easclient/PeakTimeSetting;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaySelectError:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/android/mail/easclient/PeakTimeSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaySelectError:Z

    return p1
.end method

.method private checkItsLife()Z
    .locals 4

    .prologue
    .line 589
    iget-wide v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    const-string v3, "account does NOT exist!!!!!"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 591
    const/4 v0, 0x0

    .line 594
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method getFrequencyIndex(I)I
    .locals 1
    .parameter "schedule"

    .prologue
    .line 281
    packed-switch p1, :pswitch_data_0

    .line 292
    :pswitch_0
    const/4 v0, 0x4

    .line 302
    :goto_0
    return v0

    .line 283
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 285
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 287
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 289
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 294
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 296
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 298
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 300
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 302
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 134
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    iput-object p0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "intent.eas.from_where"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mFromWhere:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    .line 138
    iget-wide v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    invoke-static {v2, v3}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    .line 139
    iget-wide v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v0, :cond_2

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    const-string v3, "Error! AccountId is incorrect.Finsh activity."

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->finish()V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    .line 146
    sget-boolean v0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() isExchange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFrowWhere: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mFromWhere:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mFromWhere:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 148
    sget-boolean v0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DEBUG:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    const-string v4, "mFromWhere = null, set default from EASC"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 149
    :cond_4
    const-string v0, "extra.eas.from.easc"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mFromWhere:Ljava/lang/String;

    .line 151
    :cond_5
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v0, :cond_8

    .line 152
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    sget-boolean v0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DEBUG:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    const-string v3, "Fail to bind EAS AppSvc!"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 156
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->finish()V

    goto :goto_0

    .line 144
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 159
    :cond_8
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->getPeakDays(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    .line 160
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->getCode()I

    move-result v0

    if-gez v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->set(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;)V

    .line 163
    :cond_9
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->setupLayout()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v6, 0x7f0b0291

    const/4 v7, 0x0

    .line 387
    packed-switch p1, :pswitch_data_0

    .line 479
    :cond_0
    :goto_0
    return-object v7

    .line 389
    :pswitch_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b025a

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060041

    iget-object v4, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v4

    new-instance v5, Lcom/htc/android/mail/easclient/PeakTimeSetting$7;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$7;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/android/mail/easclient/PeakTimeSetting$6;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$6;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    invoke-virtual {v2, v6, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b008e

    new-instance v4, Lcom/htc/android/mail/easclient/PeakTimeSetting$5;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$5;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    .line 417
    .local v7, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v2, Lcom/htc/android/mail/easclient/PeakTimeSetting$8;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$8;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 435
    .end local v7           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0088

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b025d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/android/mail/easclient/PeakTimeSetting$9;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$9;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    invoke-virtual {v2, v6, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto :goto_0

    .line 448
    :pswitch_2
    iget-boolean v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    if-eqz v2, :cond_0

    .line 451
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v9, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    .line 452
    .local v9, startTime:I
    :goto_1
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->peakTimeStart:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    div-int/lit8 v3, v9, 0x3c

    rem-int/lit8 v4, v9, 0x3c

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 455
    .local v0, peakStartDialog:Lcom/htc/widget/HtcTimePickerDialog;
    new-instance v2, Lcom/htc/android/mail/easclient/PeakTimeSetting$10;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$10;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcTimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v7, v0

    .line 460
    goto/16 :goto_0

    .line 451
    .end local v0           #peakStartDialog:Lcom/htc/widget/HtcTimePickerDialog;
    .end local v9           #startTime:I
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2, p0}, Lcom/htc/android/mail/Account;->getPeakTimeStart(Landroid/content/Context;)I

    move-result v9

    goto :goto_1

    .line 464
    :pswitch_3
    iget-boolean v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    if-eqz v2, :cond_0

    .line 467
    :cond_3
    iget-boolean v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v8, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    .line 468
    .local v8, endTime:I
    :goto_2
    new-instance v1, Lcom/htc/widget/HtcTimePickerDialog;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->peakTimeEnd:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    div-int/lit8 v4, v8, 0x3c

    rem-int/lit8 v5, v8, 0x3c

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 471
    .local v1, peakEndDialog:Lcom/htc/widget/HtcTimePickerDialog;
    new-instance v2, Lcom/htc/android/mail/easclient/PeakTimeSetting$11;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$11;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v7, v1

    .line 476
    goto/16 :goto_0

    .line 467
    .end local v1           #peakEndDialog:Lcom/htc/widget/HtcTimePickerDialog;
    .end local v8           #endTime:I
    :cond_4
    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2, p0}, Lcom/htc/android/mail/Account;->getPeakTimeEnd(Landroid/content/Context;)I

    move-result v8

    goto :goto_2

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 191
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 181
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 182
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-nez v0, :cond_1

    .line 183
    sget-boolean v0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    const-string v3, "updatePeakValue"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakSetting()V

    .line 186
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 524
    new-instance v2, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v2}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    .line 525
    .local v2, uloger:Lcom/htc/android/mail/ulog/MULogMgr;
    iget-boolean v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ulog/MULogMgr;->setMailAccountType(Z)V

    .line 526
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v3, :cond_3

    .line 528
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 529
    .local v1, selectedSchedule:I
    iget-boolean v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v3, :cond_2

    .line 530
    const-string v3, "exchange"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v4, v4, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/android/mail/ulog/MULogMgr;->addScheduleULog(Ljava/lang/String;II)V

    .line 531
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    if-eq v3, v1, :cond_0

    .line 532
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iput v1, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    .line 533
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    iget-object v6, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V

    .line 542
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakTimeFrequencyUI()V

    .line 566
    .end local v1           #selectedSchedule:I
    :cond_1
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 536
    .restart local v1       #selectedSchedule:I
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOff(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/htc/android/mail/ulog/MULogMgr;->addScheduleULog(JII)V

    .line 538
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOn(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 539
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3, p0, v1}, Lcom/htc/android/mail/Account;->setSyncSchedulePeakOn(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    .end local v1           #selectedSchedule:I
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 546
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p2
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v3, :cond_1

    .line 548
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 549
    .restart local v1       #selectedSchedule:I
    iget-boolean v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v3, :cond_5

    .line 550
    const-string v3, "exchange"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v4, v4, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/htc/android/mail/ulog/MULogMgr;->addScheduleULog(Ljava/lang/String;II)V

    .line 551
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    if-eq v3, v1, :cond_4

    .line 552
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iput v1, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    .line 553
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    iget-object v6, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V

    .line 561
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updateOffPeakTimeFrequencyUI()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 562
    .end local v1           #selectedSchedule:I
    :catch_1
    move-exception v0

    .line 563
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 556
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #selectedSchedule:I
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOn(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/htc/android/mail/ulog/MULogMgr;->addScheduleULog(JII)V

    .line 557
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOff(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v1, :cond_4

    .line 558
    iget-object v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3, p0, v1}, Lcom/htc/android/mail/Account;->setSyncSchedulePeakOff(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "inState"

    .prologue
    const/4 v2, -0x1

    .line 203
    const-string v1, "tempDayOfWeek"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, dayOfWeek:I
    if-le v0, v2, :cond_0

    .line 205
    new-instance v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-direct {v1, v0}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    .line 207
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 172
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->checkItsLife()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->finish()V

    .line 177
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 199
    const-string v0, "tempDayOfWeek"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->getCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    return-void
.end method

.method setupLayout()V
    .locals 6

    .prologue
    const v5, 0x7f060023

    const v4, 0x7f060022

    const v3, 0x7f060021

    const/16 v2, 0x9

    .line 211
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->addPreferencesFromResource(I)V

    .line 213
    const-string v0, "peak_days"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakDaysPref:Lcom/htc/preference/HtcPreferenceScreen;

    .line 214
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakDaysPref:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v1, Lcom/htc/android/mail/easclient/PeakTimeSetting$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$2;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 221
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakDaysUI()V

    .line 223
    const-string v0, "peak_time_start"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakTimeStartPref:Lcom/htc/preference/HtcPreferenceScreen;

    .line 224
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakTimeStartPref:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v1, Lcom/htc/android/mail/easclient/PeakTimeSetting$3;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$3;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 230
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v0, v0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    div-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v1, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    rem-int/lit8 v1, v1, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakTimeStartUI(II)V

    .line 236
    :goto_0
    const-string v0, "peak_time_end"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakTimeEndPref:Lcom/htc/preference/HtcPreferenceScreen;

    .line 237
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakTimeEndPref:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v1, Lcom/htc/android/mail/easclient/PeakTimeSetting$4;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$4;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 243
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v0, v0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    div-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v1, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    rem-int/lit8 v1, v1, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakTimeEndUI(II)V

    .line 249
    :goto_1
    const-string v0, "frequency_peak_time"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    .line 250
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 251
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v0, :cond_3

    .line 252
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v2, :cond_2

    .line 253
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 257
    :goto_2
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 262
    :goto_3
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakTimeFrequencyUI()V

    .line 264
    const-string v0, "frequency_off_peak_time"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    .line 265
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 266
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v0, :cond_5

    .line 267
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v2, :cond_4

    .line 268
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 272
    :goto_4
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    .line 277
    :goto_5
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updateOffPeakTimeFrequencyUI()V

    .line 278
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Account;->getPeakTimeStart(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->getPeakTimeStart(Landroid/content/Context;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakTimeStartUI(II)V

    goto/16 :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Account;->getPeakTimeEnd(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->getPeakTimeEnd(Landroid/content/Context;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakTimeEndUI(II)V

    goto :goto_1

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    goto :goto_2

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getPollFrequencyLabels()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 260
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getPollFrequencyValues()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    goto :goto_3

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    goto :goto_4

    .line 274
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getPollFrequencyLabels()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 275
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getPollFrequencyValues()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    goto :goto_5
.end method

.method timeToString(II)Ljava/lang/String;
    .locals 4
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 379
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 380
    .local v0, time:Landroid/text/format/Time;
    iput p1, v0, Landroid/text/format/Time;->hour:I

    .line 381
    iput p2, v0, Landroid/text/format/Time;->minute:I

    .line 382
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateOffPeakTimeFrequencyUI()V
    .locals 3

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v1, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->getFrequencyIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mOffPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOff(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/Account;->getCheckFreqPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method updatePeakDays()V
    .locals 5

    .prologue
    .line 335
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->getCode()I

    move-result v2

    iput v2, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakDays:I

    .line 337
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    iget-object v4, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V

    .line 342
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakDaysUI()V

    .line 346
    :goto_1
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->getCode()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/htc/android/mail/Account;->setPeakDays(Landroid/content/Context;I)V

    .line 340
    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method updatePeakDaysUI()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakDaysPref:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    return-void
.end method

.method public updatePeakSetting()V
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-static {p0, v0}, Lcom/htc/android/mail/MailCommon;->isInPeakTime(Landroid/content/Context;Lcom/htc/android/mail/Account;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOn(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/mail/Account;->setCheckFreq(Landroid/content/Context;I)V

    .line 572
    sget-boolean v0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebind syncSchedule preferenceScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOn(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 578
    invoke-static {p0}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V

    .line 579
    return-void

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOff(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/mail/Account;->setCheckFreq(Landroid/content/Context;I)V

    .line 575
    sget-boolean v0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebind syncSchedule preferenceScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOff(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method updatePeakTimeEnd(II)V
    .locals 6
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 365
    mul-int/lit8 v2, p1, 0x3c

    add-int v0, v2, p2

    .line 366
    .local v0, TimeEndValue:I
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iput v0, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    .line 368
    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    iget-object v5, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V

    .line 372
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakTimeEndUI(II)V

    .line 376
    :goto_1
    return-void

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2, p0, v0}, Lcom/htc/android/mail/Account;->setPeakTimeEnd(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method updatePeakTimeEndUI(II)V
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakTimeEndPref:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->timeToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method

.method updatePeakTimeFrequencyUI()V
    .locals 3

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v1, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->getFrequencyIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 322
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakFrequencyPref:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2, p0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOn(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/Account;->getCheckFreqPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method updatePeakTimeStart(II)V
    .locals 6
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 350
    mul-int/lit8 v2, p1, 0x3c

    add-int v0, v2, p2

    .line 351
    .local v0, TimeStartValue:I
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->isExchange:Z

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iput v0, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    .line 353
    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J

    iget-object v5, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mEasOption:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V

    .line 357
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakTimeStartUI(II)V

    .line 361
    :goto_1
    return-void

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2, p0, v0}, Lcom/htc/android/mail/Account;->setPeakTimeStart(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method updatePeakTimeStartUI(II)V
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting;->mPeakTimeStartPref:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->timeToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    return-void
.end method

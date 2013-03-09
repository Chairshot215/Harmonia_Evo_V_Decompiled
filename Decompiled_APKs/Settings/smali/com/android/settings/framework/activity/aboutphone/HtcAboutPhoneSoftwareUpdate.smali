.class public Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcAboutPhoneSoftwareUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;
    }
.end annotation


# static fields
.field private static final CIDC:I = 0x1

.field private static final CIPRL:I = 0x2

.field private static final CI_FUMO:I = 0x0

.field private static CONTENT_URI_NOTES:Landroid/net/Uri; = null

.field private static final USER_INIT_DEVICE_CONFIG:I = 0x1

.field private static final USER_INIT_FIRMWARE_UPDATE:I = 0x2

.field private static final USER_INIT_PRL_UPGRADE:I = 0x3

.field private static final WAIT_NOTIFY:I = 0x3

.field public static clickTime:J

.field static second:I

.field public static threadIsRun:Z

.field protected static waitting:Z


# instance fields
.field TAG:Ljava/lang/String;

.field private countdownAction:Ljava/lang/String;

.field private countdownSecond:Ljava/lang/String;

.field protected mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field protected mCidc:Lcom/htc/preference/HtcPreferenceScreen;

.field protected mCiprl:Lcom/htc/preference/HtcPreferenceScreen;

.field protected mContext:Landroid/content/Context;

.field protected mDialog:Landroid/app/Dialog;

.field private mDisplayHandlerAlert:Landroid/os/Handler;

.field protected mFumo:Lcom/htc/preference/HtcPreferenceScreen;

.field protected mHtcSoftwareUpdate:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field protected mPosition:I

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private omcRunning:Z

.field private omcStateReceiver:Landroid/content/BroadcastReceiver;

.field private phoneState:I

.field runSessionAction:Ljava/lang/String;

.field private runSessionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    sput-boolean v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->waitting:Z

    .line 317
    sput-boolean v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->threadIsRun:Z

    .line 379
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->clickTime:J

    .line 478
    const-string v0, "content://com.htc.android.provider.omadmlib/commondata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->CONTENT_URI_NOTES:Landroid/net/Uri;

    .line 572
    sput v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 51
    const-string v0, "com.htc.android.omadm.action.countdownOmcSecond"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->countdownSecond:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 183
    const-string v0, "com.htc.android.omadm.action.countdownOmcSession"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->countdownAction:Ljava/lang/String;

    .line 319
    const-string v0, "com.htc.android.omadm.action.runsession"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->runSessionAction:Ljava/lang/String;

    .line 458
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->runSessionReceiver:Landroid/content/BroadcastReceiver;

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->omcRunning:Z

    .line 574
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$2;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->omcStateReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    const-string v0, "HtcAboutPhoneSoftwareUpdate"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    .line 640
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$4;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$4;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mDisplayHandlerAlert:Landroid/os/Handler;

    .line 660
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$5;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$5;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->countdownSecond:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->checkOmcRunning()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->omcRunning:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mDisplayHandlerAlert:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->phoneState:I

    return p1
.end method

.method private checkOmcRunning()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getOmcRunning(Landroid/content/ContentResolver;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->omcRunning:Z

    .line 570
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "mCursor"

    .prologue
    .line 553
    if-eqz p0, :cond_0

    .line 554
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->deactivate()V

    .line 555
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    .line 99
    .local v0, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 100
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v2, 0x7f0c03d6

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mFumo:Lcom/htc/preference/HtcPreferenceScreen;

    .line 104
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mFumo:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 105
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mFumo:Lcom/htc/preference/HtcPreferenceScreen;

    const v3, 0x7f0c03da

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCidc:Lcom/htc/preference/HtcPreferenceScreen;

    .line 109
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCidc:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 110
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCidc:Lcom/htc/preference/HtcPreferenceScreen;

    const v3, 0x7f0c03d8

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCiprl:Lcom/htc/preference/HtcPreferenceScreen;

    .line 113
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCiprl:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 114
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCiprl:Lcom/htc/preference/HtcPreferenceScreen;

    const v3, 0x7f0c03d9

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 116
    new-instance v2, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mHtcSoftwareUpdate:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    .line 117
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mHtcSoftwareUpdate:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    .line 118
    return-void
.end method

.method public static getAIRPlane(Landroid/content/ContentResolver;)I
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 521
    invoke-static {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->initCommonProvider(Landroid/content/ContentResolver;)V

    .line 522
    const-string v0, "AIRPLANE_MODE"

    invoke-static {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getIntkey(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getColumnInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 3
    .parameter "cur"
    .parameter "columnName"

    .prologue
    .line 510
    const/4 v0, -0x1

    .line 511
    .local v0, ColumnValue:I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 514
    .local v1, t_nColumnIndex:I
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 516
    .end local v1           #t_nColumnIndex:I
    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->closeCursor(Landroid/database/Cursor;)V

    .line 517
    return v0
.end method

.method public static getIntkey(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 7
    .parameter "contentResolver"
    .parameter "columnName"

    .prologue
    const/4 v4, 0x0

    .line 503
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    .line 505
    .local v2, project:[Ljava/lang/String;
    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->CONTENT_URI_NOTES:Landroid/net/Uri;

    const-string v3, "_id=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 506
    .local v6, mCursor:Landroid/database/Cursor;
    invoke-static {v6, p1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getColumnInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getOmcRunning(Landroid/content/ContentResolver;)I
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 527
    invoke-static {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->initCommonProvider(Landroid/content/ContentResolver;)V

    .line 528
    const-string v0, "OMC_RUNNING"

    invoke-static {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getIntkey(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static initCommonProvider(Landroid/content/ContentResolver;)V
    .locals 8
    .parameter "contentResolver"

    .prologue
    const/4 v4, 0x0

    .line 482
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 484
    .local v2, project:[Ljava/lang/String;
    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->CONTENT_URI_NOTES:Landroid/net/Uri;

    const-string v3, "_id=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 485
    .local v6, mCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 487
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 488
    .local v7, tIsEntryFound:Z
    if-nez v7, :cond_0

    .line 490
    const-string v0, "OMADMLib"

    const-string v1, "no command data"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->closeCursor(Landroid/database/Cursor;)V

    .line 499
    .end local v7           #tIsEntryFound:Z
    :cond_1
    return-void
.end method

.method public static setIntkey(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 6
    .parameter "contentResolver"
    .parameter "columnName"
    .parameter "value"

    .prologue
    const/4 v5, -0x1

    .line 537
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->initCommonProvider(Landroid/content/ContentResolver;)V

    .line 540
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 541
    .local v1, values:Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    sget-object v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->CONTENT_URI_NOTES:Landroid/net/Uri;

    const-string v3, "_id=1"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return v5

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 547
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, omcIntentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->countdownSecond:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->omcStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v1, omcRunSessionIntentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->runSessionAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->runSessionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->doPlugin()V

    .line 92
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, title:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 615
    :goto_0
    new-instance v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$3;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$3;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 632
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0c03dc

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1

    .line 606
    :pswitch_0
    const v1, 0x7f0c03d8

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 607
    goto :goto_0

    .line 609
    :pswitch_1
    const v1, 0x7f0c03d9

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 610
    goto :goto_0

    .line 612
    :pswitch_2
    const v1, 0x7f0c03da

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->omcStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->runSessionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 311
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDestroy()V

    .line 313
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 251
    const/4 v2, 0x0

    .line 253
    .local v2, throwIntent:Landroid/content/Intent;
    iput p3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mPosition:I

    .line 256
    iget v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->phoneState:I

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v4, "voice talking can\'t trigger DM session"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getAIRPlane(Landroid/content/ContentResolver;)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 263
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v4, "enable AIR Plane mode can\'t run any session"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->checkOmcRunning()V

    .line 268
    iget-boolean v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->omcRunning:Z

    if-eqz v3, :cond_4

    .line 269
    sget v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    if-nez v3, :cond_2

    .line 271
    const/16 v3, 0x3c

    sput v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    .line 275
    :cond_2
    :try_start_0
    sget-boolean v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->threadIsRun:Z

    if-nez v3, :cond_3

    .line 276
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)V

    .line 277
    .local v0, cthread:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;
    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0           #cthread:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;
    :cond_3
    :goto_1
    invoke-virtual {p0, p3, v5, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->startSession(IZZ)V

    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 287
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p3, v5, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->startSession(IZZ)V

    throw v3

    .line 293
    :cond_4
    sput v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    .line 295
    const-string v3, "OMADMLib"

    const-string v4, "normal start session"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_5

    .line 297
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 298
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v4, "normal,mAlertDialog.dismiss()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 301
    :cond_5
    invoke-virtual {p0, p3, v5, v5}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->startSession(IZZ)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v1, "onPause(),mAlertDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 139
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 140
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 187
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v7, "onPreferenceTreeClick"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v3, 0x0

    .line 189
    .local v3, throwIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 190
    .local v2, position:I
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCidc:Lcom/htc/preference/HtcPreferenceScreen;

    if-ne p2, v6, :cond_1

    .line 191
    const/4 v2, 0x1

    .line 196
    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mPosition:I

    .line 199
    iget v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->phoneState:I

    if-eqz v6, :cond_3

    .line 200
    iget-object v5, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v6, "voice talking can\'t trigger DM session"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_1
    return v4

    .line 192
    :cond_1
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCiprl:Lcom/htc/preference/HtcPreferenceScreen;

    if-ne p2, v6, :cond_2

    .line 193
    const/4 v2, 0x2

    goto :goto_0

    .line 194
    :cond_2
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mHtcSoftwareUpdate:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    if-ne p2, v6, :cond_0

    .line 195
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    goto :goto_1

    .line 205
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getAIRPlane(Landroid/content/ContentResolver;)I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 206
    iget-object v5, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v6, "enable AIR Plane mode can\'t run any session"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 210
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->checkOmcRunning()V

    .line 211
    iget-boolean v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->omcRunning:Z

    if-eqz v6, :cond_7

    .line 212
    sget v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    if-nez v6, :cond_5

    .line 214
    const/16 v6, 0x3c

    sput v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    .line 218
    :cond_5
    :try_start_0
    sget-boolean v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->threadIsRun:Z

    if-nez v6, :cond_6

    .line 219
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)V

    .line 220
    .local v0, cthread:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;
    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0           #cthread:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;
    :cond_6
    :goto_2
    invoke-virtual {p0, v2, v5, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->startSession(IZZ)V

    :goto_3
    move v4, v5

    .line 246
    goto :goto_1

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 230
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->startSession(IZZ)V

    throw v6

    .line 236
    :cond_7
    sput v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    .line 238
    const-string v4, "OMADMLib"

    const-string v6, "normal start session"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_8

    .line 240
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 241
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v6, "normal,mAlertDialog.dismiss()"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 244
    :cond_8
    invoke-virtual {p0, v2, v5, v5}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->startSession(IZZ)V

    goto :goto_3
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 148
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 150
    .local v1, con:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 151
    const-string v2, "OMADMLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_2

    if-nez v1, :cond_2

    .line 160
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mFumo:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 161
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCidc:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 162
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCiprl:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 177
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v3, "onResume(),mAlertDialog.dismiss()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 180
    :cond_1
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 181
    return-void

    .line 168
    :cond_2
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mFumo:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 169
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCidc:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 170
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mCiprl:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onStart()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x62

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 131
    return-void
.end method

.method protected startSession(IZZ)V
    .locals 9
    .parameter "position"
    .parameter "showDialog"
    .parameter "runSession"

    .prologue
    const/4 v8, 0x1

    .line 382
    const-string v4, "OMADMLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSession("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v1, 0x0

    .line 385
    .local v1, throwIntent:Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 387
    .local v2, tmp:J
    sget-wide v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->clickTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 388
    sput-wide v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->clickTime:J

    .line 401
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 402
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "SECONDS"

    sget v5, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    if-eqz p2, :cond_1

    .line 405
    const-string v4, "pos"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->startActivity(Landroid/content/Intent;)V

    .line 409
    :cond_1
    if-nez p3, :cond_3

    .line 410
    const-string v4, "OMADMLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runSession:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 391
    :cond_2
    sget-wide v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->clickTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 392
    const-string v4, "OMADMLib"

    const-string v5, "<<<< click too close >>>>"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sput-wide v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->clickTime:J

    goto :goto_0

    .line 414
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->checkOmcRunning()V

    .line 415
    iget-boolean v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->omcRunning:Z

    if-eqz v4, :cond_4

    .line 416
    const-string v4, "OMADMLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "omcRunning:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->omcRunning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_4
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 424
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "OMC_RUNNING"

    invoke-static {v4, v5, v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->setIntkey(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 427
    new-instance v1, Landroid/content/Intent;

    .end local v1           #throwIntent:Landroid/content/Intent;
    const-string v4, "com.smithmicro.DM.intent.action.CI_DM"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .restart local v1       #throwIntent:Landroid/content/Intent;
    const-string v4, "com.smithmicro.DM.trigger"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 435
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "OMC_RUNNING"

    invoke-static {v4, v5, v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->setIntkey(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 438
    new-instance v1, Landroid/content/Intent;

    .end local v1           #throwIntent:Landroid/content/Intent;
    const-string v4, "com.smithmicro.DM.intent.action.CI_DM"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .restart local v1       #throwIntent:Landroid/content/Intent;
    const-string v4, "com.smithmicro.DM.trigger"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 445
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "OMC_RUNNING"

    invoke-static {v4, v5, v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->setIntkey(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 448
    new-instance v1, Landroid/content/Intent;

    .end local v1           #throwIntent:Landroid/content/Intent;
    const-string v4, "com.smithmicro.DM.intent.action.CI_DM"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .restart local v1       #throwIntent:Landroid/content/Intent;
    const-string v4, "com.smithmicro.DM.trigger"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

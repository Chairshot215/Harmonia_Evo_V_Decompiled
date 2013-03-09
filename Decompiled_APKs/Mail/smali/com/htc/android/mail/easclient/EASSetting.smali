.class public Lcom/htc/android/mail/easclient/EASSetting;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "EASSetting.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;,
        Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;
    }
.end annotation


# static fields
.field private static final CAY_SYNC_BODY_FORMAT_PREF_KEY:Ljava/lang/String; = "cal_sync_body_format"

.field private static final CAY_SYNC_DAYS_PREF_KEY:Ljava/lang/String; = "cal_sync_days"

.field private static final CONFLICT_RESOLVE_PREF_KEY:Ljava/lang/String; = "conflict_resolve"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DIALOG_FOLDER_SYNC:I = 0x2

.field private static final DIALOG_POWER_SAVING_ALERT:I = 0x1

.field private static final MAIL_ALWAYS_BCC_SELF_PREF_KEY:Ljava/lang/String; = "account_detail_always_bcc_myself_value"

.field private static final MAIL_DEFAULT_SYNC_PREF_KEY:Ljava/lang/String; = "account_folder_to_sync"

.field private static final MAIL_DL_ATTACH_PREF_KEY:Ljava/lang/String; = "mail_download_attach_sizes"

.field private static final MAIL_DL_DAYS_PREF_KEY:Ljava/lang/String; = "mail_download_days"

.field private static final MAIL_DL_SIZE_PREF_KEY:Ljava/lang/String; = "mail_download_sizes"

.field private static final MAIL_DOWNLOAD_MESSAGE_WHEN_SCROLL:Ljava/lang/String; = "account_detail_auto_download_message"

.field private static final MAIL_FMT_PREF_KEY:Ljava/lang/String; = "mail_formats"

.field private static final MAIL_REPLY_TEXT_PREF_KEY:Ljava/lang/String; = "account_reply_with_text_value"

.field private static final MAIL_SCHEDULE_PREF_KEY:Ljava/lang/String; = "mail_schedule"

.field private static final MESSAGE_LAYOUT_UI:I = 0x1

.field private static final SERVER_SETTING_PREF_KEY:Ljava/lang/String; = "server_setting"

.field private static final SYNC_AT_ROAMING_PREF_KEY:Ljava/lang/String; = "sync_at_roaming"


# instance fields
.field private final ACNT_CONFIG_REQUEST:I

.field private final DEFAULTSETTING:I

.field private final RECEIVESENDSETTING:I

.field private TAG:Ljava/lang/String;

.field private cResolveLabels:[Ljava/lang/String;

.field private calSyncBodyFormat:Lcom/htc/preference/HtcListPreference;

.field private calSyncBodyFormatLabels:[Ljava/lang/String;

.field private calSyncDayLabels:[Ljava/lang/String;

.field private calSyncDays:Lcom/htc/preference/HtcListPreference;

.field private conflict:[Ljava/lang/String;

.field private conflictResolve:Lcom/htc/preference/HtcListPreference;

.field private exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mAccountId:J

.field private mCurrentCalFilterType:I

.field private mCurrentMailFilterType:I

.field private mCurrentMaxAttachSize:I

.field private mCurrentMaxTruncatSize:I

.field private mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

.field private mFromWhere:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPolicyDoc:Landroid/os/Bundle;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field private mTempDefaultSyncFoldersStatus:[Z

.field private mTotalFoldersStatus:[Z

.field private mailAlwaysBccSelf:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mailDefaultSync:Lcom/htc/preference/HtcPreferenceScreen;

.field private mailDownloadAttachSizeLabels:[Ljava/lang/String;

.field private mailDownloadAttachSizeValues:[Ljava/lang/String;

.field private mailDownloadAttachSizes:Lcom/htc/preference/HtcListPreference;

.field private mailDownloadDayLabels:[Ljava/lang/String;

.field private mailDownloadDays:Lcom/htc/preference/HtcListPreference;

.field private mailDownloadMessageWhenScroll:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mailDownloadSizeLabels:[Ljava/lang/String;

.field private mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

.field private mailFormatLabels:[Ljava/lang/String;

.field private mailFormatRecord:[Ljava/lang/String;

.field private mailFormats:Lcom/htc/preference/HtcListPreference;

.field private mailReplyWithText:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mailSchedule:Lcom/htc/preference/HtcPreferenceScreen;

.field private mailScheduleLabels:[Ljava/lang/String;

.field private menuCategory:I

.field private serverProtocol:D

.field private serverSetting:Lcom/htc/preference/HtcPreferenceScreen;

.field private syncAtRoaming:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/easclient/EASSetting;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 54
    const-string v0, "EASSetting"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;

    .line 71
    iput v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->ACNT_CONFIG_REQUEST:I

    .line 72
    iput v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->DEFAULTSETTING:I

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->RECEIVESENDSETTING:I

    .line 101
    iput v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxAttachSize:I

    .line 102
    iput v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxTruncatSize:I

    .line 103
    iput v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMailFilterType:I

    .line 104
    iput v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentCalFilterType:I

    .line 113
    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting;->mTotalFoldersStatus:[Z

    .line 114
    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z

    .line 118
    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    .line 119
    sget-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->HTML:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 136
    new-instance v0, Lcom/htc/android/mail/easclient/EASSetting$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASSetting$1;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 194
    new-instance v0, Lcom/htc/android/mail/easclient/EASSetting$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASSetting$2;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v0, Lcom/htc/android/mail/easclient/EASSetting$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASSetting$3;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASSetting;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/easclient/EASSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/easclient/EASSetting;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/EASSetting;->updateSyncForXModeUI(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/easclient/EASSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadDaysUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/easclient/EASSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASSetting;->setupMailFormatUI()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/easclient/EASSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadSizeUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/easclient/EASSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadAttachSizeUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/easclient/EASSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/EASSetting;->updateCalendarSyncDaysUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/android/mail/easclient/EASSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASSetting;->updateScheduleUI()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/easclient/EASSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASSetting;->setupLayout()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/easclient/EASSetting;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/htc/android/mail/easclient/EASSetting;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/htc/android/mail/easclient/EASSetting;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/easclient/EASSetting;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/htc/android/mail/easclient/EASSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/android/mail/easclient/EASSetting;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mTotalFoldersStatus:[Z

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/android/mail/easclient/EASSetting;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/android/mail/easclient/EASSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getFolderSyncPreferenceSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDefaultSync:Lcom/htc/preference/HtcPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/android/mail/easclient/EASSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object p1
.end method

.method static synthetic access$402(Lcom/htc/android/mail/easclient/EASSetting;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/htc/android/mail/easclient/EASSetting;->serverProtocol:D

    return-wide p1
.end method

.method static synthetic access$500(Lcom/htc/android/mail/easclient/EASSetting;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mPolicyDoc:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/android/mail/easclient/EASSetting;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mPolicyDoc:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/android/mail/easclient/EASSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->menuCategory:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/android/mail/easclient/EASSetting;Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;)Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/android/mail/easclient/EASSetting;J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/easclient/EASSetting;->getExchangeAccount(J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/mail/easclient/EASSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkItsLife()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1514
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1515
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    const-string v5, "account does NOT exist!!!!!"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    :goto_0
    return v1

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1522
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private contain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "stringList"
    .parameter "str"

    .prologue
    .line 1638
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1639
    .local v1, getStr:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1640
    const/4 v4, 0x1

    .line 1643
    .end local v1           #getStr:Ljava/lang/String;
    :goto_1
    return v4

    .line 1638
    .restart local v1       #getStr:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1643
    .end local v1           #getStr:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getExchangeAccount(J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "accountId"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 1443
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _provider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v7, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "Exchange"

    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1448
    .local v6, curAccount:Landroid/database/Cursor;
    return-object v6
.end method

.method private getFolderSyncPreferenceSummary()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1648
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/mail/Mailboxs;->getMailboxsForSelectDefaultSync()Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    .line 1649
    .local v1, defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;
    if-nez v1, :cond_1

    .line 1650
    const/4 v4, 0x0

    .line 1667
    :cond_0
    :goto_0
    return-object v4

    .line 1652
    :cond_1
    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v10

    .line 1653
    .local v4, str:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1654
    .local v0, count:Ljava/lang/Integer;
    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    array-length v3, v6

    .line 1655
    .local v3, mailboxcount:I
    invoke-virtual {v1}, Lcom/htc/android/mail/Mailboxs;->getDefaultSyncEnabled()[Z

    move-result-object v5

    .line 1657
    .local v5, summarySyncEnabled:[Z
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1658
    aget-boolean v6, v5, v2

    if-ne v6, v9, :cond_2

    .line 1659
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1660
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1657
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1664
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 1665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v8, 0x7f0b00c0

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/easclient/EASSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getScheduleIndex(I)I
    .locals 5
    .parameter "scheduleCode"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1013
    if-nez p1, :cond_1

    .line 1014
    const/4 v0, 0x0

    .line 1033
    :cond_0
    :goto_0
    return v0

    .line 1015
    :cond_1
    if-eq p1, v0, :cond_0

    .line 1017
    if-ne p1, v1, :cond_2

    move v0, v1

    .line 1018
    goto :goto_0

    .line 1019
    :cond_2
    if-ne p1, v2, :cond_3

    move v0, v2

    .line 1020
    goto :goto_0

    .line 1021
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v3

    .line 1022
    goto :goto_0

    .line 1023
    :cond_4
    if-ne p1, v4, :cond_5

    move v0, v4

    .line 1024
    goto :goto_0

    .line 1025
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 1026
    const/4 v0, 0x6

    goto :goto_0

    .line 1027
    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 1028
    const/4 v0, 0x7

    goto :goto_0

    .line 1029
    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 1030
    const/16 v0, 0x8

    goto :goto_0

    .line 1031
    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 1032
    const/16 v0, 0x9

    goto :goto_0

    .line 1033
    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getScheduleType()I
    .locals 4

    .prologue
    .line 1002
    const/4 v0, -0x1

    .line 1004
    .local v0, scheduleIdx:I
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v1, v2, v3}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getScheduleOption(J)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/android/mail/easclient/EASSetting;->getScheduleIndex(I)I

    move-result v0

    .line 1005
    if-gez v0, :cond_0

    .line 1006
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/htc/android/mail/easclient/EASSetting;->getScheduleIndex(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1009
    :cond_0
    :goto_0
    return v0

    .line 1007
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isSystemAllowDataRoaming()Z
    .locals 8

    .prologue
    .line 508
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 509
    .local v2, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming_allowed"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, roamingType:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 513
    const/4 v0, 0x1

    .line 524
    .end local v2           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v3           #roamingType:Ljava/lang/String;
    .local v0, ConnWhileRoaming:Z
    :goto_0
    return v0

    .line 515
    .end local v0           #ConnWhileRoaming:Z
    .restart local v2       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v3       #roamingType:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #ConnWhileRoaming:Z
    goto :goto_0

    .line 518
    .end local v0           #ConnWhileRoaming:Z
    .end local v3           #roamingType:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_2

    const/4 v0, 0x1

    .restart local v0       #ConnWhileRoaming:Z
    :goto_1
    goto :goto_0

    .end local v0           #ConnWhileRoaming:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 520
    .end local v2           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 521
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/htc/android/mail/easclient/EASSetting;->DEBUG:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;

    iget-wide v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    const-string v7, "Cannot get System.DATA_ROAMING value"

    invoke-static {v4, v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 522
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #ConnWhileRoaming:Z
    goto :goto_0
.end method

.method private setupLayout()V
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v8, 0x7f06002b

    const/4 v7, 0x0

    .line 291
    iget v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->menuCategory:I

    packed-switch v0, :pswitch_data_0

    .line 494
    :goto_0
    return-void

    .line 295
    :pswitch_0
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->addPreferencesFromResource(I)V

    .line 296
    const-string v0, "server_setting"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->serverSetting:Lcom/htc/preference/HtcPreferenceScreen;

    .line 297
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->serverSetting:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v1, Lcom/htc/android/mail/easclient/EASSetting$4;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/EASSetting$4;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 311
    invoke-direct {p0, v7}, Lcom/htc/android/mail/easclient/EASSetting;->updateSyncForXModeUI(Ljava/lang/Boolean;)V

    .line 313
    const-string v0, "conflict_resolve"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->conflictResolve:Lcom/htc/preference/HtcListPreference;

    .line 314
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->conflictResolve:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 315
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->cResolveLabels:[Ljava/lang/String;

    .line 316
    invoke-direct {p0, v7}, Lcom/htc/android/mail/easclient/EASSetting;->updateConflictResolveUI(Ljava/lang/String;)V

    .line 318
    const-string v0, "mail_download_days"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDays:Lcom/htc/preference/HtcListPreference;

    .line 319
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDays:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 320
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDayLabels:[Ljava/lang/String;

    .line 321
    invoke-direct {p0, v7}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadDaysUI(Ljava/lang/String;)V

    .line 323
    const-string v0, "mail_formats"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    .line 324
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 325
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormatLabels:[Ljava/lang/String;

    .line 326
    const-string v0, "mail_download_sizes"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    .line 327
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 328
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASSetting;->setupMailFormatUI()V

    .line 332
    iget-wide v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->serverProtocol:D

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 338
    sget-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->PLAIN_TEXT:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 357
    :goto_1
    invoke-direct {p0, v7}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadSizeUI(Ljava/lang/String;)V

    .line 359
    const-string v0, "mail_download_attach_sizes"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizes:Lcom/htc/preference/HtcListPreference;

    .line 360
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 361
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxAttachSize:I

    .line 362
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizeLabels:[Ljava/lang/String;

    .line 363
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizeValues:[Ljava/lang/String;

    .line 364
    invoke-direct {p0, v7}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadAttachSizeUI(Ljava/lang/String;)V

    .line 366
    const-string v0, "account_folder_to_sync"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDefaultSync:Lcom/htc/preference/HtcPreferenceScreen;

    .line 367
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDefaultSync:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v1, Lcom/htc/android/mail/easclient/EASSetting$5;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/EASSetting$5;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDefaultSync:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getFolderSyncPreferenceSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    const-string v0, "cal_sync_days"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncDays:Lcom/htc/preference/HtcListPreference;

    .line 377
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncDays:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 378
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncDayLabels:[Ljava/lang/String;

    .line 379
    invoke-direct {p0, v7}, Lcom/htc/android/mail/easclient/EASSetting;->updateCalendarSyncDaysUI(Ljava/lang/String;)V

    .line 381
    const-string v0, "cal_sync_body_format"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncBodyFormat:Lcom/htc/preference/HtcListPreference;

    .line 382
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncBodyFormat:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 383
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncBodyFormatLabels:[Ljava/lang/String;

    .line 384
    invoke-direct {p0, v7}, Lcom/htc/android/mail/easclient/EASSetting;->updateCalendarSyncBodyFormatUI(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 343
    sget-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->HTML:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    goto/16 :goto_1

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    .line 349
    sget-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->PLAIN_TEXT:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 355
    :goto_2
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    .line 353
    sget-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    goto :goto_2

    .line 391
    :pswitch_1
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->addPreferencesFromResource(I)V

    .line 393
    const-string v0, "mail_download_days"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDays:Lcom/htc/preference/HtcListPreference;

    .line 394
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDays:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 395
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDayLabels:[Ljava/lang/String;

    .line 396
    invoke-direct {p0, v7}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadDaysUI(Ljava/lang/String;)V

    .line 398
    const-string v0, "mail_formats"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    .line 399
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 400
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06002e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormatLabels:[Ljava/lang/String;

    .line 401
    const-string v0, "mail_download_sizes"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    .line 402
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 403
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASSetting;->setupMailFormatUI()V

    .line 407
    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->serverProtocol:D

    const-wide/high16 v5, 0x4028

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_5

    .line 409
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 413
    sget-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->PLAIN_TEXT:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 419
    :goto_3
    iput v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxTruncatSize:I

    .line 434
    :goto_4
    invoke-direct {p0, v7}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadSizeUI(Ljava/lang/String;)V

    .line 436
    const-string v0, "mail_schedule"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailSchedule:Lcom/htc/preference/HtcPreferenceScreen;

    .line 437
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailSchedule:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v3, Lcom/htc/android/mail/easclient/EASSetting$6;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASSetting$6;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 446
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v9, :cond_7

    .line 447
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060022

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailScheduleLabels:[Ljava/lang/String;

    .line 451
    :goto_5
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASSetting;->updateScheduleUI()V

    .line 453
    const-string v0, "mail_download_attach_sizes"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizes:Lcom/htc/preference/HtcListPreference;

    .line 454
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 455
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxAttachSize:I

    .line 456
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060031

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizeLabels:[Ljava/lang/String;

    .line 457
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060032

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizeValues:[Ljava/lang/String;

    .line 458
    invoke-direct {p0, v7}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadAttachSizeUI(Ljava/lang/String;)V

    .line 460
    const-string v0, "account_reply_with_text_value"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailReplyWithText:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 461
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailReplyWithText:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 463
    const-string v0, "account_detail_always_bcc_myself_value"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailAlwaysBccSelf:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 464
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailAlwaysBccSelf:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 466
    const-string v0, "account_detail_auto_download_message"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadMessageWhenScroll:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 467
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadMessageWhenScroll:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 469
    const-string v0, "account_folder_to_sync"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDefaultSync:Lcom/htc/preference/HtcPreferenceScreen;

    .line 470
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDefaultSync:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v3, Lcom/htc/android/mail/easclient/EASSetting$7;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASSetting$7;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 477
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDefaultSync:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getFolderSyncPreferenceSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    if-nez v0, :cond_3

    .line 481
    new-instance v0, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    .line 483
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailReplyWithText:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    iget v0, v0, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;->replyWithText:I

    if-lez v0, :cond_8

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 484
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailAlwaysBccSelf:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    iget v0, v0, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;->alwaysBccSelf:I

    if-lez v0, :cond_9

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 485
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadMessageWhenScroll:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    iget v3, v3, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;->downloadMessageWhenScroll:I

    if-lez v3, :cond_a

    :goto_8
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 489
    invoke-direct {p0, v7}, Lcom/htc/android/mail/easclient/EASSetting;->updateSyncForXModeUI(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 415
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    .line 417
    sget-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->HTML:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    goto/16 :goto_3

    .line 421
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 422
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    .line 424
    sget-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->PLAIN_TEXT:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 425
    iput v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxTruncatSize:I

    .line 432
    :goto_9
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 427
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06002c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    .line 429
    sget-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 430
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxTruncatSize:I

    goto :goto_9

    .line 449
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060021

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailScheduleLabels:[Ljava/lang/String;

    goto/16 :goto_5

    :cond_8
    move v0, v2

    .line 483
    goto :goto_6

    :cond_9
    move v0, v2

    .line 484
    goto :goto_7

    :cond_a
    move v1, v2

    .line 485
    goto :goto_8

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupMailFormatUI()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1037
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    if-nez v7, :cond_0

    .line 1083
    :goto_0
    return-void

    .line 1040
    :cond_0
    const/4 v3, 0x0

    .line 1041
    .local v3, protocolAllowHTML:Z
    const/4 v4, 0x1

    .line 1044
    .local v4, serverAllowHTML:Z
    const/4 v3, 0x1

    .line 1045
    iget-wide v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->serverProtocol:D

    const-wide/high16 v9, 0x4028

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    .line 1046
    const/4 v3, 0x0

    .line 1050
    :cond_1
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mPolicyDoc:Landroid/os/Bundle;

    const-string v8, "AllowHTMLEmail"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, allowHTMLEMail:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1052
    const/4 v4, 0x0

    .line 1054
    :cond_2
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 1055
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 1058
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v7, v8, v9}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v7

    iget v7, v7, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 1059
    .local v5, svrBodyType:I
    :goto_1
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1060
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailFormatUI(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1070
    .end local v5           #svrBodyType:I
    :catch_0
    move-exception v2

    .line 1071
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    move v5, v6

    .line 1058
    goto :goto_1

    .line 1062
    .restart local v5       #svrBodyType:I
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1063
    .local v1, currentBodyType:I
    if-eq v1, v5, :cond_5

    .line 1064
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 1065
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailFormatUI(Ljava/lang/String;)V

    goto :goto_0

    .line 1067
    :cond_5
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailFormatUI(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1074
    .end local v1           #currentBodyType:I
    .end local v5           #svrBodyType:I
    :cond_6
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 1075
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormatLabels:[Ljava/lang/String;

    aget-object v6, v8, v6

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1079
    const-string v6, "1"

    invoke-direct {p0, v6}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailFormatUI(Ljava/lang/String;)V

    .line 1081
    :cond_7
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private syncCalendar(Ljava/lang/String;)V
    .locals 7
    .parameter "cat"

    .prologue
    .line 1672
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v1

    .line 1673
    .local v1, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    iget v2, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eqz v2, :cond_0

    .line 1674
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/android/mail/easclient/EASSetting$13;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASSetting$13;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    .end local v1           #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :cond_0
    :goto_0
    return-void

    .line 1683
    :catch_0
    move-exception v0

    .line 1684
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/android/mail/easclient/EASSetting;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method private updateAlwaysBccSelf(JZ)V
    .locals 8
    .parameter "accountId"
    .parameter "val"

    .prologue
    .line 1472
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 1473
    .local v1, iVal:I
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND _provider = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v3, whereClause:Ljava/lang/StringBuilder;
    const-string v4, "Exchange"

    invoke-static {v3, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1475
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1476
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "_alwaysBccMyself"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1480
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v4, :cond_0

    .line 1481
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4, v1}, Lcom/htc/android/mail/Account;->setAlwaysbccMyself(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #whereClause:Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-void

    .line 1472
    .end local v1           #iVal:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1483
    .restart local v1       #iVal:I
    :catch_0
    move-exception v0

    .line 1484
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateCalendarSyncBodyFormatUI(Ljava/lang/String;)V
    .locals 6
    .parameter "newVal"

    .prologue
    .line 1356
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncBodyFormat:Lcom/htc/preference/HtcListPreference;

    if-nez v3, :cond_0

    .line 1414
    :goto_0
    return-void

    .line 1360
    :cond_0
    const/4 v0, -0x1

    .line 1380
    .local v0, nIndex:I
    if-nez p1, :cond_1

    .line 1382
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calBodyFormat:I

    packed-switch v3, :pswitch_data_0

    .line 1385
    const/4 v0, 0x0

    .line 1391
    :goto_1
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncBodyFormat:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 1392
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncBodyFormat:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncBodyFormatLabels:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1412
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1388
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1394
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1395
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncBodyFormat:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncBodyFormatLabels:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1398
    packed-switch v0, :pswitch_data_1

    .line 1401
    const/4 v2, 0x2

    .line 1408
    .local v2, val:I
    :goto_2
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v1

    .line 1409
    .local v1, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    iput v2, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calBodyFormat:I

    .line 1410
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v3, v4, v5, v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1404
    .end local v1           #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v2           #val:I
    :pswitch_1
    const/4 v2, 0x1

    .restart local v2       #val:I
    goto :goto_2

    .line 1382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1398
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private updateCalendarSyncDaysUI(Ljava/lang/String;)V
    .locals 11
    .parameter "newVal"

    .prologue
    .line 1279
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncDays:Lcom/htc/preference/HtcListPreference;

    if-nez v8, :cond_0

    .line 1353
    :goto_0
    return-void

    .line 1283
    :cond_0
    const/4 v4, -0x1

    .line 1285
    .local v4, nIndex:I
    :try_start_0
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v8, v9, v10}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v8

    iget v1, v8, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calFilterType:I

    .line 1287
    .local v1, filterType:I
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mPolicyDoc:Landroid/os/Bundle;

    const-string v9, "MaxCalendarAgeFilter"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1288
    .local v6, strFilterType:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1289
    .local v3, maxFilterType:I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1290
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1292
    :cond_1
    iget v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentCalFilterType:I

    if-eq v3, v8, :cond_3

    .line 1293
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/EASSetting;->getCalFilterTypeIndex(I)I

    move-result v2

    .line 1294
    .local v2, idx:I
    if-eqz v3, :cond_2

    if-le v1, v3, :cond_2

    .line 1296
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1298
    :cond_2
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncDayLabels:[Ljava/lang/String;

    const/4 v9, 0x0

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v8, v9, v10}, Lcom/htc/android/mail/easclient/EASSetting;->cutStringArray([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    .line 1299
    .local v0, ent:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncDays:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1300
    iput v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentCalFilterType:I

    .line 1303
    .end local v0           #ent:[Ljava/lang/CharSequence;
    .end local v2           #idx:I
    :cond_3
    if-nez p1, :cond_4

    .line 1304
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v8, v9, v10}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v8

    iget v8, v8, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calFilterType:I

    packed-switch v8, :pswitch_data_0

    .line 1307
    :pswitch_0
    const/4 v4, 0x0

    .line 1322
    :goto_1
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncDays:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 1323
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncDays:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncDayLabels:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1351
    .end local v1           #filterType:I
    .end local v3           #maxFilterType:I
    .end local v6           #strFilterType:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 1310
    .restart local v1       #filterType:I
    .restart local v3       #maxFilterType:I
    .restart local v6       #strFilterType:Ljava/lang/String;
    :pswitch_1
    const/4 v4, 0x1

    .line 1311
    goto :goto_1

    .line 1313
    :pswitch_2
    const/4 v4, 0x2

    .line 1314
    goto :goto_1

    .line 1316
    :pswitch_3
    const/4 v4, 0x3

    .line 1317
    goto :goto_1

    .line 1319
    :pswitch_4
    const/4 v4, 0x4

    goto :goto_1

    .line 1325
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1326
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncDays:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->calSyncDayLabels:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1329
    packed-switch v4, :pswitch_data_1

    .line 1332
    const/4 v7, 0x4

    .line 1347
    .local v7, val:I
    :goto_2
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v8, v9, v10}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v5

    .line 1348
    .local v5, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    iput v7, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calFilterType:I

    .line 1349
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v8, v9, v10, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1335
    .end local v5           #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v7           #val:I
    :pswitch_5
    const/4 v7, 0x5

    .line 1336
    .restart local v7       #val:I
    goto :goto_2

    .line 1338
    .end local v7           #val:I
    :pswitch_6
    const/4 v7, 0x6

    .line 1339
    .restart local v7       #val:I
    goto :goto_2

    .line 1341
    .end local v7           #val:I
    :pswitch_7
    const/4 v7, 0x7

    .line 1342
    .restart local v7       #val:I
    goto :goto_2

    .line 1344
    .end local v7           #val:I
    :pswitch_8
    const/4 v7, 0x0

    .restart local v7       #val:I
    goto :goto_2

    .line 1304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1329
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private updateConflictResolveUI(Ljava/lang/String;)V
    .locals 6
    .parameter "newVal"

    .prologue
    .line 635
    const/4 v0, -0x1

    .line 637
    .local v0, nIndex:I
    if-nez p1, :cond_1

    .line 638
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->conflictResolving:I

    packed-switch v3, :pswitch_data_0

    .line 641
    const/4 v0, 0x0

    .line 647
    :goto_0
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->conflictResolve:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 648
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->conflictResolve:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->cResolveLabels:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 671
    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->conflict:[Ljava/lang/String;

    .line 674
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->conflict:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 678
    :cond_0
    :goto_2
    return-void

    .line 644
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 650
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 651
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->conflictResolve:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 652
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->conflictResolve:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->cResolveLabels:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 656
    packed-switch v0, :pswitch_data_1

    .line 659
    const/4 v2, 0x1

    .line 665
    .local v2, val:I
    :goto_3
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v1

    .line 666
    .local v1, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    iput v2, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->conflictResolving:I

    .line 667
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v3, v4, v5, v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 676
    .end local v1           #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v2           #val:I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 662
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2       #val:I
    goto :goto_3

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 656
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private updateDownloadMessageWhenScroll(JZ)V
    .locals 8
    .parameter "accountId"
    .parameter "val"

    .prologue
    .line 1490
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 1491
    .local v1, iVal:I
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND _provider = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v3, whereClause:Ljava/lang/StringBuilder;
    const-string v4, "Exchange"

    invoke-static {v3, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1493
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1494
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "_downloadMessageWhenScroll"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1498
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v4, :cond_0

    .line 1499
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4, p3}, Lcom/htc/android/mail/Account;->setDownloadMessageWhenScroll(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #whereClause:Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-void

    .line 1490
    .end local v1           #iVal:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1501
    .restart local v1       #iVal:I
    :catch_0
    move-exception v0

    .line 1502
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateMailDownloadAttachSizeUI(Ljava/lang/String;)V
    .locals 11
    .parameter "newVal"

    .prologue
    .line 1167
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizes:Lcom/htc/preference/HtcListPreference;

    if-nez v8, :cond_0

    .line 1259
    :goto_0
    return-void

    .line 1171
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v8, v9, v10}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v8

    iget v1, v8, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailAttachmentOpt:I

    .line 1172
    .local v1, mailOption:I
    const/4 v4, -0x1

    .line 1175
    .local v4, nIndex:I
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mPolicyDoc:Landroid/os/Bundle;

    const-string v9, "MaxAttachmentSize"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1176
    .local v6, strMaxAttachSize:Ljava/lang/String;
    const/4 v2, 0x6

    .line 1177
    .local v2, maxAttachOpt:I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1178
    const/4 v3, -0x1

    .line 1179
    .local v3, maxAttachSize:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1180
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->getAttachmentOption(I)I

    move-result v2

    .line 1182
    .end local v3           #maxAttachSize:I
    :cond_1
    iget v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxAttachSize:I

    if-eq v2, v8, :cond_3

    .line 1183
    if-le v1, v2, :cond_2

    .line 1184
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1186
    :cond_2
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizeLabels:[Ljava/lang/String;

    const/4 v9, 0x0

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v8, v9, v10}, Lcom/htc/android/mail/easclient/EASSetting;->cutStringArray([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, ent:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizeValues:[Ljava/lang/String;

    const/4 v9, 0x0

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v8, v9, v10}, Lcom/htc/android/mail/easclient/EASSetting;->cutStringArray([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v7

    .line 1188
    .local v7, val:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1189
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1190
    iput v2, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxAttachSize:I

    .line 1193
    .end local v0           #ent:[Ljava/lang/CharSequence;
    .end local v7           #val:[Ljava/lang/CharSequence;
    :cond_3
    if-nez p1, :cond_4

    .line 1194
    packed-switch v1, :pswitch_data_0

    .line 1197
    const/4 v4, 0x0

    .line 1218
    :goto_1
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 1219
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizeLabels:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1257
    .end local v1           #mailOption:I
    .end local v2           #maxAttachOpt:I
    .end local v4           #nIndex:I
    .end local v6           #strMaxAttachSize:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 1200
    .restart local v1       #mailOption:I
    .restart local v2       #maxAttachOpt:I
    .restart local v4       #nIndex:I
    .restart local v6       #strMaxAttachSize:Ljava/lang/String;
    :pswitch_0
    const/4 v4, 0x1

    .line 1201
    goto :goto_1

    .line 1203
    :pswitch_1
    const/4 v4, 0x2

    .line 1204
    goto :goto_1

    .line 1206
    :pswitch_2
    const/4 v4, 0x3

    .line 1207
    goto :goto_1

    .line 1209
    :pswitch_3
    const/4 v4, 0x4

    .line 1210
    goto :goto_1

    .line 1212
    :pswitch_4
    const/4 v4, 0x5

    .line 1213
    goto :goto_1

    .line 1215
    :pswitch_5
    const/4 v4, 0x6

    goto :goto_1

    .line 1223
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1224
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadAttachSizeLabels:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1228
    packed-switch v4, :pswitch_data_1

    .line 1231
    const/4 v7, 0x0

    .line 1252
    .local v7, val:I
    :goto_2
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v8, v9, v10}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v5

    .line 1253
    .local v5, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    iput v7, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailAttachmentOpt:I

    .line 1254
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v8, v9, v10, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1234
    .end local v5           #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v7           #val:I
    :pswitch_6
    const/4 v7, 0x1

    .line 1235
    .restart local v7       #val:I
    goto :goto_2

    .line 1237
    .end local v7           #val:I
    :pswitch_7
    const/4 v7, 0x2

    .line 1238
    .restart local v7       #val:I
    goto :goto_2

    .line 1240
    .end local v7           #val:I
    :pswitch_8
    const/4 v7, 0x3

    .line 1241
    .restart local v7       #val:I
    goto :goto_2

    .line 1243
    .end local v7           #val:I
    :pswitch_9
    const/4 v7, 0x4

    .line 1244
    .restart local v7       #val:I
    goto :goto_2

    .line 1246
    .end local v7           #val:I
    :pswitch_a
    const/4 v7, 0x5

    .line 1247
    .restart local v7       #val:I
    goto :goto_2

    .line 1249
    .end local v7           #val:I
    :pswitch_b
    const/4 v7, 0x6

    .restart local v7       #val:I
    goto :goto_2

    .line 1194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1228
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private updateMailDownloadDaysUI(Ljava/lang/String;)V
    .locals 10
    .parameter "newVal"

    .prologue
    .line 681
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDays:Lcom/htc/preference/HtcListPreference;

    if-nez v7, :cond_0

    .line 740
    :goto_0
    return-void

    .line 685
    :cond_0
    const/4 v4, -0x1

    .line 687
    .local v4, nIndex:I
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v7, v8, v9}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v7

    iget v1, v7, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    .line 689
    .local v1, filterType:I
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mPolicyDoc:Landroid/os/Bundle;

    const-string v8, "MaxEmailAgeFilter"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 690
    .local v5, strFilterType:Ljava/lang/String;
    const/4 v3, 0x0

    .line 691
    .local v3, maxFilterType:I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 692
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 694
    :cond_1
    iget v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMailFilterType:I

    if-eq v3, v7, :cond_3

    .line 695
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/EASSetting;->getMailFilterTypeIndex(I)I

    move-result v2

    .line 696
    .local v2, idx:I
    if-eqz v3, :cond_2

    if-le v1, v3, :cond_2

    .line 698
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 700
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDayLabels:[Ljava/lang/String;

    const/4 v8, 0x0

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/android/mail/easclient/EASSetting;->cutStringArray([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, ent:[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDays:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 702
    iput v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMailFilterType:I

    .line 705
    .end local v0           #ent:[Ljava/lang/CharSequence;
    .end local v2           #idx:I
    :cond_3
    if-nez p1, :cond_4

    .line 706
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/EASSetting;->getMailFilterTypeIndex(I)I

    move-result v4

    .line 707
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDays:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 708
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDays:Lcom/htc/preference/HtcListPreference;

    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDayLabels:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 738
    .end local v1           #filterType:I
    .end local v3           #maxFilterType:I
    .end local v5           #strFilterType:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 710
    .restart local v1       #filterType:I
    .restart local v3       #maxFilterType:I
    .restart local v5       #strFilterType:Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 711
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDays:Lcom/htc/preference/HtcListPreference;

    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadDayLabels:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 714
    packed-switch v4, :pswitch_data_0

    .line 720
    :pswitch_0
    const/4 v6, 0x2

    .line 735
    .local v6, val:I
    :goto_1
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v8, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v7, v8, v9, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setMailFilterType(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    .end local v6           #val:I
    :pswitch_1
    const/4 v6, 0x1

    .line 717
    .restart local v6       #val:I
    goto :goto_1

    .line 723
    .end local v6           #val:I
    :pswitch_2
    const/4 v6, 0x3

    .line 724
    .restart local v6       #val:I
    goto :goto_1

    .line 726
    .end local v6           #val:I
    :pswitch_3
    const/4 v6, 0x4

    .line 727
    .restart local v6       #val:I
    goto :goto_1

    .line 729
    .end local v6           #val:I
    :pswitch_4
    const/4 v6, 0x5

    .line 730
    .restart local v6       #val:I
    goto :goto_1

    .line 732
    .end local v6           #val:I
    :pswitch_5
    const/4 v6, 0x0

    .restart local v6       #val:I
    goto :goto_1

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateMailDownloadSizeUI(Ljava/lang/String;)V
    .locals 12
    .parameter "newVal"

    .prologue
    .line 768
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    if-nez v9, :cond_0

    .line 891
    :goto_0
    return-void

    .line 772
    :cond_0
    const/4 v4, -0x1

    .line 773
    .local v4, nIndex:I
    :try_start_0
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v10, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v9, v10, v11}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v9

    iget v2, v9, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    .line 775
    .local v2, mailOption:I
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mPolicyDoc:Landroid/os/Bundle;

    const-string v10, "MaxEmailBodyTruncationSize"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 776
    .local v6, strTruncatSize:Ljava/lang/String;
    const/16 v3, 0x9

    .line 777
    .local v3, maxTruncatOpt:I
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_1

    .line 778
    const/16 v3, 0x8

    .line 780
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 781
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 782
    .local v7, truncatSize:I
    mul-int/lit16 v7, v7, 0x400

    .line 783
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_5

    .line 784
    invoke-static {v7}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->getMIMETruncationOption(I)I

    move-result v3

    .line 789
    .end local v7           #truncatSize:I
    :cond_2
    :goto_1
    iget v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxTruncatSize:I

    if-eq v3, v9, :cond_4

    .line 791
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_6

    .line 792
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/EASSetting;->getMIMEBodyTruncatSizeIndex(I)I

    move-result v1

    .line 793
    .local v1, idx:I
    const/16 v9, 0x8

    if-eq v2, v9, :cond_3

    if-le v2, v3, :cond_3

    .line 795
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 805
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/htc/android/mail/easclient/EASSetting;->cutStringArray([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, ent:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 807
    iput v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxTruncatSize:I

    .line 810
    .end local v0           #ent:[Ljava/lang/CharSequence;
    .end local v1           #idx:I
    :cond_4
    if-nez p1, :cond_8

    .line 811
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_7

    .line 812
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASSetting;->getMIMEBodyTruncatSizeIndex(I)I

    move-result v4

    .line 816
    :goto_3
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 817
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 889
    .end local v2           #mailOption:I
    .end local v3           #maxTruncatOpt:I
    .end local v6           #strTruncatSize:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 786
    .restart local v2       #mailOption:I
    .restart local v3       #maxTruncatOpt:I
    .restart local v6       #strTruncatSize:Ljava/lang/String;
    .restart local v7       #truncatSize:I
    :cond_5
    invoke-static {v7}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->getTruncationOption(I)I

    move-result v3

    goto :goto_1

    .line 798
    .end local v7           #truncatSize:I
    :cond_6
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/EASSetting;->getBodyTruncatSizeIndex(I)I

    move-result v1

    .line 799
    .restart local v1       #idx:I
    const/16 v9, 0x9

    if-eq v2, v9, :cond_3

    const/16 v9, 0xa

    if-eq v2, v9, :cond_3

    if-le v2, v3, :cond_3

    .line 802
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 814
    .end local v1           #idx:I
    :cond_7
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASSetting;->getBodyTruncatSizeIndex(I)I

    move-result v4

    goto :goto_3

    .line 819
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 820
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 823
    packed-switch v4, :pswitch_data_0

    .line 826
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_9

    .line 827
    const/4 v8, 0x0

    .line 884
    .local v8, val:I
    :goto_4
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v10, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v9, v10, v11}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v5

    .line 885
    .local v5, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    iput v8, v5, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    .line 886
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v10, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v9, v10, v11, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V

    goto/16 :goto_0

    .line 829
    .end local v5           #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v8           #val:I
    :cond_9
    const/4 v8, 0x0

    .line 831
    .restart local v8       #val:I
    goto :goto_4

    .line 833
    .end local v8           #val:I
    :pswitch_0
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_a

    .line 834
    const/4 v8, 0x1

    .restart local v8       #val:I
    goto :goto_4

    .line 836
    .end local v8           #val:I
    :cond_a
    const/4 v8, 0x3

    .line 838
    .restart local v8       #val:I
    goto :goto_4

    .line 840
    .end local v8           #val:I
    :pswitch_1
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_b

    .line 841
    const/4 v8, 0x2

    .restart local v8       #val:I
    goto :goto_4

    .line 843
    .end local v8           #val:I
    :cond_b
    const/4 v8, 0x4

    .line 845
    .restart local v8       #val:I
    goto :goto_4

    .line 847
    .end local v8           #val:I
    :pswitch_2
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_c

    .line 848
    const/4 v8, 0x3

    .restart local v8       #val:I
    goto :goto_4

    .line 850
    .end local v8           #val:I
    :cond_c
    const/4 v8, 0x5

    .line 852
    .restart local v8       #val:I
    goto :goto_4

    .line 854
    .end local v8           #val:I
    :pswitch_3
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_d

    .line 855
    const/4 v8, 0x4

    .restart local v8       #val:I
    goto :goto_4

    .line 857
    .end local v8           #val:I
    :cond_d
    const/4 v8, 0x6

    .line 859
    .restart local v8       #val:I
    goto :goto_4

    .line 861
    .end local v8           #val:I
    :pswitch_4
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_e

    .line 862
    const/4 v8, 0x5

    .restart local v8       #val:I
    goto :goto_4

    .line 864
    .end local v8           #val:I
    :cond_e
    const/4 v8, 0x7

    .line 866
    .restart local v8       #val:I
    goto :goto_4

    .line 868
    .end local v8           #val:I
    :pswitch_5
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_f

    .line 869
    const/4 v8, 0x6

    .restart local v8       #val:I
    goto :goto_4

    .line 870
    .end local v8           #val:I
    :cond_f
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->PLAIN_TEXT:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v9, v10, :cond_10

    .line 871
    const/16 v8, 0x9

    .restart local v8       #val:I
    goto :goto_4

    .line 873
    .end local v8           #val:I
    :cond_10
    const/16 v8, 0xa

    .line 875
    .restart local v8       #val:I
    goto :goto_4

    .line 877
    .end local v8           #val:I
    :pswitch_6
    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v10, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v9, v10, :cond_11

    .line 878
    const/16 v8, 0x8

    .restart local v8       #val:I
    goto :goto_4

    .line 880
    .end local v8           #val:I
    :cond_11
    const/16 v8, 0x9

    .restart local v8       #val:I
    goto :goto_4

    .line 823
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateMailFormatUI(Ljava/lang/String;)V
    .locals 8
    .parameter "newVal"

    .prologue
    .line 1086
    const/4 v0, -0x1

    .line 1088
    .local v0, nIndex:I
    if-nez p1, :cond_1

    .line 1089
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    packed-switch v4, :pswitch_data_0

    .line 1092
    const/4 v0, 0x0

    .line 1098
    :goto_0
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 1099
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormatLabels:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1157
    :goto_1
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormatRecord:[Ljava/lang/String;

    .line 1160
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormatRecord:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 1164
    :cond_0
    :goto_2
    return-void

    .line 1095
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1101
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1102
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormatLabels:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 1106
    .local v1, oldDownloadStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;
    packed-switch v0, :pswitch_data_1

    .line 1109
    const/4 v3, 0x2

    .line 1110
    .local v3, val:I
    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->serverProtocol:D

    const-wide/high16 v6, 0x4004

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_2

    .line 1112
    sget-object v4, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 1113
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    .line 1114
    const/16 v4, 0x8

    iput v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxTruncatSize:I

    .line 1115
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1123
    :goto_3
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->PLAIN_TEXT:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v1, v4, :cond_3

    .line 1125
    const-string v4, "7"

    invoke-direct {p0, v4}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadSizeUI(Ljava/lang/String;)V

    .line 1126
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 1151
    :goto_4
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v2

    .line 1152
    .local v2, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    iput v3, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    .line 1153
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v4, v5, v6, v2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V

    goto :goto_1

    .line 1162
    .end local v1           #oldDownloadStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;
    .end local v2           #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .end local v3           #val:I
    :catch_0
    move-exception v4

    goto :goto_2

    .line 1118
    .restart local v1       #oldDownloadStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;
    .restart local v3       #val:I
    :cond_2
    sget-object v4, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->HTML:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 1119
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    .line 1120
    const/16 v4, 0x9

    iput v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxTruncatSize:I

    .line 1121
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1127
    :cond_3
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v5, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v4, v5, :cond_4

    .line 1128
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadSizeUI(Ljava/lang/String;)V

    goto :goto_4

    .line 1130
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadSizeUI(Ljava/lang/String;)V

    goto :goto_4

    .line 1134
    .end local v3           #val:I
    :pswitch_1
    const/4 v3, 0x1

    .line 1135
    .restart local v3       #val:I
    sget-object v4, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->PLAIN_TEXT:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    iput-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mDownloadSizeStatus:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 1136
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    .line 1138
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizeLabels:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1139
    const/16 v4, 0x9

    iput v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mCurrentMaxTruncatSize:I

    .line 1140
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->HTML:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    if-ne v1, v4, :cond_5

    .line 1141
    const-string v4, "2"

    invoke-direct {p0, v4}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadSizeUI(Ljava/lang/String;)V

    .line 1142
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_4

    .line 1143
    :cond_5
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1144
    const-string v4, "6"

    invoke-direct {p0, v4}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadSizeUI(Ljava/lang/String;)V

    .line 1145
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto/16 :goto_4

    .line 1147
    :cond_6
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadSizeUI(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1089
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1106
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private updateReplyWithText(JZ)V
    .locals 8
    .parameter "accountId"
    .parameter "val"

    .prologue
    .line 1453
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 1454
    .local v1, iVal:I
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND _provider = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v3, whereClause:Ljava/lang/StringBuilder;
    const-string v4, "Exchange"

    invoke-static {v3, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1456
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1457
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "_replyWithText"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1461
    invoke-static {p1, p2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    .line 1462
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v4, :cond_0

    .line 1463
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4, v1}, Lcom/htc/android/mail/Account;->setReplyWithText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #whereClause:Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-void

    .line 1453
    .end local v1           #iVal:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1465
    .restart local v1       #iVal:I
    :catch_0
    move-exception v0

    .line 1466
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateScheduleUI()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 971
    iget v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->menuCategory:I

    if-eq v5, v7, :cond_0

    .line 999
    :goto_0
    return-void

    .line 975
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getScheduleType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 977
    .local v2, newVal:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailScheduleLabels:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v4, v5, v6

    .line 979
    .local v4, summary:Ljava/lang/String;
    const-string v1, ""

    .line 980
    .local v1, ext:Ljava/lang/String;
    const/4 v3, 0x0

    .line 982
    .local v3, phoneStatus:I
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getPhoneStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 986
    :goto_1
    if-ne v3, v7, :cond_2

    .line 987
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0297

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 998
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailSchedule:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 988
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 990
    :try_start_1
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v6, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v5, v6, v7}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isConnWhileRoaming(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 991
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b0265

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/easclient/EASSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 993
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0296

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_2

    .line 994
    :catch_1
    move-exception v0

    .line 995
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private updateSyncForXModeUI(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "newVal"

    .prologue
    .line 630
    return-void
.end method


# virtual methods
.method cutStringArray([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 5
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1268
    if-gt p3, p2, :cond_1

    .line 1269
    const/4 v3, 0x0

    .line 1276
    :cond_0
    return-object v3

    .line 1271
    :cond_1
    sub-int v4, p3, p2

    new-array v3, v4, [Ljava/lang/String;

    .line 1272
    .local v3, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1273
    .local v1, idx:I
    move v0, p2

    .local v0, i:I
    move v2, v1

    .end local v1           #idx:I
    .local v2, idx:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1274
    add-int/lit8 v1, v2, 0x1

    .end local v2           #idx:I
    .restart local v1       #idx:I
    aget-object v4, p1, v0

    aput-object v4, v3, v2

    .line 1273
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #idx:I
    .restart local v2       #idx:I
    goto :goto_0
.end method

.method getBodyTruncatSizeIndex(I)I
    .locals 5
    .parameter "truncatOpt"

    .prologue
    .line 926
    const/4 v0, 0x3

    .line 927
    .local v0, nIndex:I
    packed-switch p1, :pswitch_data_0

    .line 935
    :pswitch_0
    const/4 v0, 0x1

    .line 967
    :goto_0
    return v0

    .line 931
    :pswitch_1
    const/4 v0, 0x0

    .line 932
    goto :goto_0

    .line 938
    :pswitch_2
    const/4 v0, 0x2

    .line 939
    goto :goto_0

    .line 941
    :pswitch_3
    const/4 v0, 0x3

    .line 942
    goto :goto_0

    .line 944
    :pswitch_4
    const/4 v0, 0x4

    .line 945
    goto :goto_0

    .line 947
    :pswitch_5
    const/4 v0, 0x5

    .line 948
    goto :goto_0

    .line 950
    :pswitch_6
    const/4 v0, 0x6

    .line 951
    goto :goto_0

    .line 956
    :pswitch_7
    iget-wide v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->serverProtocol:D

    const-wide/high16 v3, 0x4028

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailFormats:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    const/4 v0, 0x6

    goto :goto_0

    .line 960
    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    .line 963
    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    .line 927
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method getCalFilterTypeIndex(I)I
    .locals 1
    .parameter "filterType"

    .prologue
    .line 1419
    const/4 v0, 0x4

    .line 1421
    .local v0, nIndex:I
    packed-switch p1, :pswitch_data_0

    .line 1424
    :pswitch_0
    const/4 v0, 0x0

    .line 1439
    :goto_0
    return v0

    .line 1427
    :pswitch_1
    const/4 v0, 0x1

    .line 1428
    goto :goto_0

    .line 1430
    :pswitch_2
    const/4 v0, 0x2

    .line 1431
    goto :goto_0

    .line 1433
    :pswitch_3
    const/4 v0, 0x3

    .line 1434
    goto :goto_0

    .line 1436
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getMIMEBodyTruncatSizeIndex(I)I
    .locals 1
    .parameter "truncatOpt"

    .prologue
    .line 894
    const/4 v0, 0x2

    .line 895
    .local v0, nIndex:I
    packed-switch p1, :pswitch_data_0

    .line 923
    :goto_0
    return v0

    .line 897
    :pswitch_0
    const/4 v0, 0x0

    .line 898
    goto :goto_0

    .line 900
    :pswitch_1
    const/4 v0, 0x1

    .line 901
    goto :goto_0

    .line 903
    :pswitch_2
    const/4 v0, 0x2

    .line 904
    goto :goto_0

    .line 906
    :pswitch_3
    const/4 v0, 0x3

    .line 907
    goto :goto_0

    .line 909
    :pswitch_4
    const/4 v0, 0x4

    .line 910
    goto :goto_0

    .line 912
    :pswitch_5
    const/4 v0, 0x5

    .line 913
    goto :goto_0

    .line 915
    :pswitch_6
    const/4 v0, 0x6

    .line 916
    goto :goto_0

    .line 920
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 895
    nop

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
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method getMailFilterTypeIndex(I)I
    .locals 1
    .parameter "filterType"

    .prologue
    .line 742
    const/4 v0, 0x2

    .line 743
    .local v0, nIndex:I
    packed-switch p1, :pswitch_data_0

    .line 749
    :pswitch_0
    const/4 v0, 0x1

    .line 764
    :goto_0
    return v0

    .line 745
    :pswitch_1
    const/4 v0, 0x0

    .line 746
    goto :goto_0

    .line 752
    :pswitch_2
    const/4 v0, 0x2

    .line 753
    goto :goto_0

    .line 755
    :pswitch_3
    const/4 v0, 0x3

    .line 756
    goto :goto_0

    .line 758
    :pswitch_4
    const/4 v0, 0x4

    .line 759
    goto :goto_0

    .line 761
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v5, 0x66

    .line 497
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 498
    :cond_0
    if-nez p1, :cond_1

    .line 499
    if-ne p2, v5, :cond_1

    .line 500
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/easclient/EASSetting;->setResult(I)V

    .line 501
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->finish()V

    .line 504
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() error, incorrect parameter."

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->finish()V

    .line 264
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.eas.from_where"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mFromWhere:Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->menuCategory:I

    .line 247
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    .line 248
    iget-wide v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    .line 249
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v0, :cond_3

    .line 250
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->finish()V

    goto :goto_0

    .line 253
    :cond_3
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASSetting;->DEBUG:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFrowWhere: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mFromWhere:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mFromWhere:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 255
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASSetting;->DEBUG:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    const-string v3, "mFromWhere = null, set default from EASC"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 256
    :cond_5
    const-string v0, "extra.eas.from.easc"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mFromWhere:Ljava/lang/String;

    .line 259
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/mail/easclient/EASSetting;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASSetting;->DEBUG:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    const-string v3, "Fail to bind EAS AppSvc!"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 262
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f0b008e

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1528
    packed-switch p1, :pswitch_data_0

    .line 1634
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    .line 1530
    :pswitch_0
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0284

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0285

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/easclient/EASSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0167

    new-instance v5, Lcom/htc/android/mail/easclient/EASSetting$9;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/easclient/EASSetting$9;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1544
    :pswitch_1
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getMailboxsForSelectDefaultSync()Lcom/htc/android/mail/Mailboxs;

    move-result-object v0

    .line 1545
    .local v0, defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;
    if-eqz v0, :cond_0

    .line 1548
    const/4 v2, 0x0

    .line 1549
    .local v2, mailboxNameList:[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/android/mail/Mailboxs;->getDefaultSyncEnabled()[Z

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z

    .line 1550
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z

    array-length v3, v3

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mTotalFoldersStatus:[Z

    .line 1551
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mTotalFoldersStatus:[Z

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z

    array-length v5, v5

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1553
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b00bf

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z

    new-instance v6, Lcom/htc/android/mail/easclient/EASSetting$11;

    invoke-direct {v6, p0, v0}, Lcom/htc/android/mail/easclient/EASSetting$11;-><init>(Lcom/htc/android/mail/easclient/EASSetting;Lcom/htc/android/mail/Mailboxs;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0291

    new-instance v5, Lcom/htc/android/mail/easclient/EASSetting$10;

    invoke-direct {v5, p0, v0}, Lcom/htc/android/mail/easclient/EASSetting$10;-><init>(Lcom/htc/android/mail/easclient/EASSetting;Lcom/htc/android/mail/Mailboxs;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1628
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v3, Lcom/htc/android/mail/easclient/EASSetting$12;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASSetting$12;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1528
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->unbindService(Landroid/content/ServiceConnection;)V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 280
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    :cond_0
    monitor-exit p0

    .line 287
    :goto_0
    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 285
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 527
    const-string v3, "sync_at_roaming"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {p0, p2}, Lcom/htc/android/mail/easclient/EASSetting;->updateSyncForXModeUI(Ljava/lang/Boolean;)V

    .line 593
    :cond_0
    :goto_0
    return v8

    .line 529
    .restart local p2
    :cond_1
    const-string v3, "conflict_resolve"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 530
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/htc/android/mail/easclient/EASSetting;->updateConflictResolveUI(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    .restart local p2
    :cond_2
    const-string v3, "mail_download_days"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 532
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadDaysUI(Ljava/lang/String;)V

    .line 534
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v1

    .line 535
    .local v1, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mFromWhere:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mFromWhere:Ljava/lang/String;

    const-string v4, "extra.eas.from.mail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 536
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/EASSetting;->setResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    .end local v1           #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v3, Lcom/htc/android/mail/easclient/EASSetting;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange(mail_download_days) exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 537
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :cond_3
    :try_start_1
    iget v3, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eqz v3, :cond_0

    .line 538
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/mail/easclient/EASSetting$8;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/easclient/EASSetting$8;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 550
    .end local v1           #options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .restart local p2
    :cond_4
    const-string v3, "mail_download_sizes"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, p2

    .line 551
    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadSizeUI(Ljava/lang/String;)V

    .line 552
    new-instance v2, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v2}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    .line 554
    .local v2, uloger:Lcom/htc/android/mail/ulog/MULogMgr;
    :try_start_2
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    if-ne v3, v6, :cond_5

    .line 555
    const-string v3, "exchange"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/mail/ulog/MULogMgr;->addMailSizeULog(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 559
    :catch_1
    move-exception v0

    .line 560
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 556
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local p2
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    if-ne v3, v8, :cond_0

    .line 557
    const-string v3, "exchange"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/mail/ulog/MULogMgr;->addMailSizeULog(Ljava/lang/String;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 562
    .end local v2           #uloger:Lcom/htc/android/mail/ulog/MULogMgr;
    .restart local p2
    :cond_6
    const-string v3, "mail_formats"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 563
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailFormatUI(Ljava/lang/String;)V

    .line 564
    new-instance v2, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v2}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    .line 566
    .restart local v2       #uloger:Lcom/htc/android/mail/ulog/MULogMgr;
    :try_start_4
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    if-ne v3, v6, :cond_7

    .line 567
    const-string v3, "exchange"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/mail/ulog/MULogMgr;->addMailSizeULog(Ljava/lang/String;II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 571
    :catch_2
    move-exception v0

    .line 572
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 568
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_7
    :try_start_5
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    if-ne v3, v8, :cond_0

    .line 569
    const-string v3, "exchange"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting;->mailDownloadSizes:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/mail/ulog/MULogMgr;->addMailSizeULog(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 576
    .end local v2           #uloger:Lcom/htc/android/mail/ulog/MULogMgr;
    .restart local p2
    :cond_8
    const-string v3, "mail_download_attach_sizes"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 578
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/htc/android/mail/easclient/EASSetting;->updateMailDownloadAttachSizeUI(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 579
    .restart local p2
    :cond_9
    const-string v3, "cal_sync_days"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 580
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/htc/android/mail/easclient/EASSetting;->updateCalendarSyncDaysUI(Ljava/lang/String;)V

    .line 581
    const-string v3, "cal_sync_days"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/easclient/EASSetting;->syncCalendar(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    .restart local p2
    :cond_a
    const-string v3, "cal_sync_body_format"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 583
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/htc/android/mail/easclient/EASSetting;->updateCalendarSyncBodyFormatUI(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    .restart local p2
    :cond_b
    const-string v3, "account_reply_with_text_value"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 585
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 586
    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/android/mail/easclient/EASSetting;->updateReplyWithText(JZ)V

    goto/16 :goto_0

    .line 587
    .restart local p2
    :cond_c
    const-string v3, "account_detail_always_bcc_myself_value"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 588
    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/android/mail/easclient/EASSetting;->updateAlwaysBccSelf(JZ)V

    goto/16 :goto_0

    .line 589
    .restart local p2
    :cond_d
    const-string v3, "account_detail_auto_download_message"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 590
    iget-wide v3, p0, Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/android/mail/easclient/EASSetting;->updateDownloadMessageWhenScroll(JZ)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 268
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASSetting;->checkItsLife()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASSetting;->finish()V

    .line 272
    :cond_0
    return-void
.end method

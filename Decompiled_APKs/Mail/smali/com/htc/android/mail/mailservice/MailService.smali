.class public Lcom/htc/android/mail/mailservice/MailService;
.super Landroid/app/Service;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;,
        Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;,
        Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;,
        Lcom/htc/android/mail/mailservice/MailService$ServiceIds;,
        Lcom/htc/android/mail/mailservice/MailService$DelayHandler;,
        Lcom/htc/android/mail/mailservice/MailService$RequestHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ACCOUNT_CREATED:Ljava/lang/String; = "com.htc.android.mail.intent.action.MAIL_SERVICE_ACCOUNT_CREATED"

.field private static final ACTION_CANCEL:Ljava/lang/String; = "com.htc.android.mail.intent.action.MAIL_SERVICE_CANCEL"

.field public static final ACTION_CANCEL_NOTIFIY:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_CANCEL_NOTIFIY"

.field private static final ACTION_CHECK_MAIL:Ljava/lang/String; = "com.htc.android.mail.intent.action.MAIL_SERVICE_WAKEUP"

.field private static final ACTION_CHECK_MAIL_POWERSAVING:Ljava/lang/String; = "com.htc.android.mail.intent.action.MAIL_SERVICE_WAKEUP_POWER_SAVING"

.field private static final ACTION_CREATE_ACCOUNT:Ljava/lang/String; = "com.htc.android.mail.intent.action.MAIL_SERVICE_CREATE_ACCOUNT"

.field private static final ACTION_RESCHEDULE:Ljava/lang/String; = "com.htc.android.mail.intent.action.MAIL_SERVICE_RESCHEDULE"

.field private static final ACTION_RESCHEDULE_IFNEED:Ljava/lang/String; = "com.htc.android.mail.intent.action.MAIL_SERVICE_RESCHEDULE_IFNEED"

.field private static final ACTION_RESCHEDULE_PEAK:Ljava/lang/String; = "com.htc.android.mail.intent.action.MAIL_SERVICE_RESCHEDULE_PEAK"

.field public static final ACTION_SYNC_MAIL:Ljava/lang/String; = "com.htc.android.mail.intent.action.MAIL_SERVICE_SYNC_MAIL"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MailService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "MAILSERVICE_PWR_LOCK"

.field public static final checkmore_complete:I = 0x1

.field public static final configuration_changed:I = 0x1a

.field public static final contactGroup_changed:I = 0x17

.field public static final deleteMail_complete:I = 0x13

.field public static final delete_complete:I = 0x2

.field public static final dlgCertificateError:I = 0xd1

.field public static final dlgConnectionTimeout:I = 0xc9

.field public static final dlgHostNotFound:I = 0xc8

.field public static final dlgLoginFailed:I = 0xcd

.field public static final dlgMailNotInServer:I = 0xcc

.field public static final dlgMailboxNotFound:I = 0xce

.field public static final dlgNetworkError:I = 0xca

.field public static final dlgNoSpace:I = 0xcb

.field public static final dlgOutOfMemoryAttach:I = 0xd0

.field public static final dlgOutOfMemoryMail:I = 0xcf

.field public static final dlgServerReplyError:I = 0xd2

.field public static final error:I = -0x1

.field public static final fecthExchgAll_complete:I = 0x9

.field public static final fetchAll_complete:I = 0x7

.field public static final fetchImapAll_complete:I = 0x8

.field public static final fetchMessage_complete:I = 0x27

.field public static final fetchMultiAttachments_complete:I = 0xa

.field public static final fetchPartByUid_complete:I = 0x6

.field public static final groupMail_changed:I = 0x16

.field public static final hux_account_changed:I = 0x25

.field public static final importantMail_changed:I = 0x15

.field public static final list_complete:I = 0x3

.field private static mWasWakeupWifi:Z = false

.field public static final mail_search:I = 0x20

.field public static final markStar_complete:I = 0x11

.field public static final moveMail_complete:I = 0x12

.field public static final move_complete:I = 0x5

.field private static nowWorkingAccount:J = 0x0L

.field public static final refresh_complete:I = 0x0

.field public static final reloadMailList:I = 0xc

.field public static final reloadMailbody:I = 0xb

.field public static final saveDraft_complete:I = 0x26

.field public static final searchFilter_changed:I = 0x28

.field public static final setAttachmentIndicatorIcon:I = 0x1b

.field public static final setReadStatusLocal_complete:I = 0x14

.field public static final setReadStatus_complete:I = 0x10

.field public static final setSort_complete:I = 0x19

.field public static final showMenu:I = 0x29

.field public static final show_progress_for_loadMail:I = 0xf

.field public static final show_progress_for_readMoreMail:I = 0xe

.field public static final show_progress_for_refresh:I = 0x4

.field public static final startChangeAccount:I = 0x1d

.field public static final startDoChangeFolder:I = 0x21

.field public static final startDoComposeView:I = 0x1c

.field public static final startDoInvokeMailSearch:I = 0x1f

.field public static final startDoLaunchAccountList:I = 0x1e

.field public static final tag_changed:I = 0x24

.field public static final updateActionBarUnreadNum:I = 0x22

.field public static final updateDropDownAccountList:I = 0x23

.field public static final updateProgressStatus:I = 0xd

.field public static final updateUnreadNumber:I = 0x18


# instance fields
.field private final MSG_WAIT_3G:I

.field private final MSG_WAIT_WIFI:I

.field private accountId:J

.field private am:Landroid/app/AlarmManager;

.field private final m3GWaitTime:I

.field private mCurWifiState:I

.field private mDelayHandler:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

.field private mIsScreenOn:Z

.field private mIsSmartWifi:Z

.field private mIsWifiConnected:Z

.field private mIsWifiLockSet:Z

.field private mLooper:Landroid/os/Looper;

.field private mMailBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mNM:Landroid/app/NotificationManager;

.field private mNewUnreadMail:I

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

.field private mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

.field private final mSyncDelayRandomTime:I

.field private final mWaitTime:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWasScreenOn:Z

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/htc/android/mail/mailservice/MailService;->nowWorkingAccount:J

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/mail/mailservice/MailService;->mWasWakeupWifi:Z

    .line 138
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    iput v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mNewUnreadMail:I

    .line 74
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWaitTime:I

    .line 75
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/htc/android/mail/mailservice/MailService;->m3GWaitTime:I

    .line 76
    const/16 v0, 0x384

    iput v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mSyncDelayRandomTime:I

    .line 135
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/android/mail/mailservice/MailService;->MSG_WAIT_WIFI:I

    .line 136
    const/16 v0, 0x65

    iput v0, p0, Lcom/htc/android/mail/mailservice/MailService;->MSG_WAIT_3G:I

    .line 142
    new-instance v0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;-><init>(Lcom/htc/android/mail/mailservice/MailService;Lcom/htc/android/mail/mailservice/MailService$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mDelayHandler:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

    .line 143
    iput-boolean v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    .line 144
    iput-boolean v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z

    .line 145
    iput-boolean v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z

    .line 146
    iput-boolean v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiConnected:Z

    .line 147
    iput-boolean v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mIsSmartWifi:Z

    .line 148
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mCurWifiState:I

    .line 153
    new-instance v0, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;-><init>(Lcom/htc/android/mail/mailservice/MailService;Lcom/htc/android/mail/mailservice/MailService$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    .line 154
    new-instance v0, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;-><init>(Lcom/htc/android/mail/mailservice/MailService;Lcom/htc/android/mail/mailservice/MailService$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    .line 1258
    new-instance v0, Lcom/htc/android/mail/mailservice/MailService$19;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/mailservice/MailService$19;-><init>(Lcom/htc/android/mail/mailservice/MailService;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mMailBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1362
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/mailservice/MailService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/android/mail/mailservice/MailService;->reschedulePeak(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/htc/android/mail/mailservice/MailService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/android/mail/mailservice/MailService;->mIsSmartWifi:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/mailservice/MailService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mNewUnreadMail:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/android/mail/mailservice/MailService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/htc/android/mail/mailservice/MailService;->mNewUnreadMail:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/mailservice/MailService;)Landroid/os/IPowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/mailservice/MailService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/android/mail/mailservice/MailService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/htc/android/mail/mailservice/MailService;->mWasWakeupWifi:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    sput-boolean p0, Lcom/htc/android/mail/mailservice/MailService;->mWasWakeupWifi:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/htc/android/mail/mailservice/MailService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/android/mail/mailservice/MailService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/mailservice/MailService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/mailservice/MailService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/htc/android/mail/mailservice/MailService;->accountId:J

    return-wide v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$ServiceIds;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/mailservice/MailService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/MailService;->setWifiLock()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/mail/mailservice/MailService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/mail/mailservice/MailService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/MailService;->setPowerRelease()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/mail/mailservice/MailService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/MailService;->cancel()V

    return-void
.end method

.method public static actionCancel(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v1, "com.htc.android.mail.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 195
    return-void
.end method

.method public static actionReschedule(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "com.htc.android.mail.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    return-void
.end method

.method public static actionRescheduleIfNeed(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "com.htc.android.mail.intent.action.MAIL_SERVICE_RESCHEDULE_IFNEED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 202
    return-void
.end method

.method public static actionReschedulePeak(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "com.htc.android.mail.intent.action.MAIL_SERVICE_RESCHEDULE_PEAK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 188
    return-void
.end method

.method private addRegularSyncAlarm(J)V
    .locals 8
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 603
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v2, "com.htc.android.mail.intent.action.MAIL_SERVICE_WAKEUP_POWER_SAVING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 606
    .local v1, pi:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/mailservice/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/htc/android/mail/mailservice/MailService;->am:Landroid/app/AlarmManager;

    .line 607
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/MailService;->am:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 608
    return-void
.end method

.method private cancel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 491
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/mailservice/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 492
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 493
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v3, "com.htc.android.mail.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 496
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 497
    return-void
.end method

.method private getNextPeakSwitchTimeFromNow(Lcom/htc/android/mail/Account;)J
    .locals 19
    .parameter "a"

    .prologue
    .line 783
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 784
    .local v3, dtNow:Ljava/util/Date;
    new-instance v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->getPeakDays(Landroid/content/Context;)I

    move-result v13

    invoke-direct {v2, v13}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    .line 785
    .local v2, daysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->getPeakTimeStart(Landroid/content/Context;)I

    move-result v12

    .line 786
    .local v12, peakStart:I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->getPeakTimeEnd(Landroid/content/Context;)I

    move-result v11

    .line 787
    .local v11, peakEnd:I
    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v13

    mul-int/lit8 v13, v13, 0x3c

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v14

    add-int v4, v13, v14

    .line 788
    .local v4, minuteNow:I
    add-int/lit8 v9, v4, 0x1

    .line 790
    .local v9, nextchecktime:I
    const-wide v5, 0x7fffffffffffffffL

    .line 791
    .local v5, nextPeakTime:J
    invoke-virtual {v3}, Ljava/util/Date;->getDay()I

    move-result v13

    if-nez v13, :cond_0

    .line 792
    const/4 v10, 0x6

    .line 797
    .local v10, nowDay:I
    :goto_0
    if-ne v12, v11, :cond_3

    .line 798
    if-ne v4, v12, :cond_1

    .line 799
    const-wide/32 v5, 0xea60

    :goto_1
    move-wide v7, v5

    .line 840
    .end local v5           #nextPeakTime:J
    .local v7, nextPeakTime:J
    :goto_2
    return-wide v7

    .line 794
    .end local v7           #nextPeakTime:J
    .end local v10           #nowDay:I
    .restart local v5       #nextPeakTime:J
    :cond_0
    invoke-virtual {v3}, Ljava/util/Date;->getDay()I

    move-result v13

    add-int/lit8 v10, v13, -0x1

    .restart local v10       #nowDay:I
    goto :goto_0

    .line 800
    :cond_1
    invoke-virtual {v2, v10}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->isSet(I)Z

    move-result v13

    if-eqz v13, :cond_2

    if-ge v4, v12, :cond_2

    .line 801
    sub-int v13, v12, v4

    int-to-long v13, v13

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long v5, v13, v15

    goto :goto_1

    .line 803
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/htc/android/mail/mailservice/MailService;->getNextdayFromToday(ILcom/htc/android/mail/Account;)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x18

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x5a0

    int-to-long v0, v4

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    add-long/2addr v13, v15

    int-to-long v15, v12

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    add-long v5, v13, v15

    goto :goto_1

    .line 807
    :cond_3
    if-ge v12, v11, :cond_6

    .line 808
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/htc/android/mail/mailservice/MailService;->isInPeakTime(Lcom/htc/android/mail/Account;I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 809
    sub-int v13, v11, v4

    add-int/lit8 v13, v13, 0x1

    int-to-long v13, v13

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long v5, v13, v15

    move-wide v7, v5

    .line 810
    .end local v5           #nextPeakTime:J
    .restart local v7       #nextPeakTime:J
    goto :goto_2

    .line 812
    .end local v7           #nextPeakTime:J
    .restart local v5       #nextPeakTime:J
    :cond_4
    invoke-virtual {v2, v10}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->isSet(I)Z

    move-result v13

    if-eqz v13, :cond_5

    if-ge v4, v12, :cond_5

    .line 814
    sub-int v13, v12, v4

    int-to-long v13, v13

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long v5, v13, v15

    :goto_3
    move-wide v7, v5

    .line 819
    .end local v5           #nextPeakTime:J
    .restart local v7       #nextPeakTime:J
    goto :goto_2

    .line 816
    .end local v7           #nextPeakTime:J
    .restart local v5       #nextPeakTime:J
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/htc/android/mail/mailservice/MailService;->getNextdayFromToday(ILcom/htc/android/mail/Account;)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x18

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x5a0

    int-to-long v0, v4

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    add-long/2addr v13, v15

    int-to-long v15, v12

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    add-long v5, v13, v15

    goto :goto_3

    .line 822
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/htc/android/mail/mailservice/MailService;->isInPeakTime(Lcom/htc/android/mail/Account;I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 823
    if-le v11, v4, :cond_7

    .line 824
    sub-int v13, v11, v4

    add-int/lit8 v13, v13, 0x1

    int-to-long v13, v13

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long v5, v13, v15

    :goto_4
    move-wide v7, v5

    .line 840
    .end local v5           #nextPeakTime:J
    .restart local v7       #nextPeakTime:J
    goto/16 :goto_2

    .line 826
    .end local v7           #nextPeakTime:J
    .restart local v5       #nextPeakTime:J
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/htc/android/mail/mailservice/MailService;->getNextdayFromToday(ILcom/htc/android/mail/Account;)I

    move-result v13

    if-nez v13, :cond_8

    .line 827
    const-wide/16 v13, 0x5a0

    int-to-long v15, v4

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    add-int/lit8 v15, v11, 0x1

    int-to-long v15, v15

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    add-long v5, v13, v15

    goto :goto_4

    .line 829
    :cond_8
    const-wide/16 v13, 0x5a0

    int-to-long v15, v4

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long v5, v13, v15

    goto :goto_4

    .line 833
    :cond_9
    invoke-virtual {v2, v10}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->isSet(I)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 834
    sub-int v13, v12, v4

    int-to-long v13, v13

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long v5, v13, v15

    goto :goto_4

    .line 836
    :cond_a
    const-wide/16 v13, 0x5a0

    int-to-long v15, v4

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/htc/android/mail/mailservice/MailService;->getNextdayFromToday(ILcom/htc/android/mail/Account;)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, 0x18

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    add-long v5, v13, v15

    goto :goto_4
.end method

.method private getSyncDelayRandomSecond()J
    .locals 6

    .prologue
    .line 1275
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 1276
    .local v2, r:Ljava/util/Random;
    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v0, v3

    .line 1277
    .local v0, delay:J
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SyncDelayRandomSecond = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    :cond_0
    return-wide v0
.end method

.method private isInPeakTime(Lcom/htc/android/mail/Account;)Z
    .locals 10
    .parameter "a"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 715
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 716
    .local v1, dtNow:Ljava/util/Date;
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->getPeakDays(Landroid/content/Context;)I

    move-result v8

    invoke-direct {v0, v8}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    .line 717
    .local v0, daysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->getPeakTimeStart(Landroid/content/Context;)I

    move-result v5

    .line 718
    .local v5, peakStart:I
    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->getPeakTimeEnd(Landroid/content/Context;)I

    move-result v4

    .line 719
    .local v4, peakEnd:I
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v9

    add-int v2, v8, v9

    .line 721
    .local v2, minuteNow:I
    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v8

    if-nez v8, :cond_1

    .line 722
    const/4 v3, 0x6

    .line 726
    .local v3, nowDay:I
    :goto_0
    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->isSet(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 743
    :cond_0
    :goto_1
    return v6

    .line 724
    .end local v3           #nowDay:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .restart local v3       #nowDay:I
    goto :goto_0

    .line 730
    :cond_2
    if-eq v5, v4, :cond_0

    .line 733
    if-ge v5, v4, :cond_3

    .line 734
    if-gt v5, v2, :cond_0

    if-gt v2, v4, :cond_0

    move v6, v7

    .line 735
    goto :goto_1

    .line 740
    :cond_3
    if-ge v2, v5, :cond_4

    if-gt v2, v4, :cond_0

    :cond_4
    move v6, v7

    .line 741
    goto :goto_1
.end method

.method private isInPeakTime(Lcom/htc/android/mail/Account;I)Z
    .locals 9
    .parameter "a"
    .parameter "time"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 749
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 750
    .local v1, dtNow:Ljava/util/Date;
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->getPeakDays(Landroid/content/Context;)I

    move-result v8

    invoke-direct {v0, v8}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    .line 751
    .local v0, daysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->getPeakTimeStart(Landroid/content/Context;)I

    move-result v5

    .line 752
    .local v5, peakStart:I
    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->getPeakTimeEnd(Landroid/content/Context;)I

    move-result v4

    .line 753
    .local v4, peakEnd:I
    move v2, p2

    .line 755
    .local v2, minuteNow:I
    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v8

    if-nez v8, :cond_1

    .line 756
    const/4 v3, 0x6

    .line 760
    .local v3, nowDay:I
    :goto_0
    invoke-virtual {v0, v3}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->isSet(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 777
    :cond_0
    :goto_1
    return v6

    .line 758
    .end local v3           #nowDay:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .restart local v3       #nowDay:I
    goto :goto_0

    .line 764
    :cond_2
    if-eq v5, v4, :cond_0

    .line 767
    if-ge v5, v4, :cond_3

    .line 768
    if-gt v5, v2, :cond_0

    if-gt v2, v4, :cond_0

    move v6, v7

    .line 769
    goto :goto_1

    .line 774
    :cond_3
    if-ge v2, v5, :cond_4

    if-gt v2, v4, :cond_0

    :cond_4
    move v6, v7

    .line 775
    goto :goto_1
.end method

.method private reschedule(Z)V
    .locals 31
    .parameter "forceCheck"

    .prologue
    .line 500
    const-wide v29, 0x7fffffffffffffffL

    .line 501
    .local v29, smallFetchTime:J
    const-wide/16 v27, -0x1

    .line 502
    .local v27, smallAccountId:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 503
    .local v22, now:J
    const/16 v21, 0x0

    .line 505
    .local v21, isAnyAccountOutOfDay:Z
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailService"

    const-string v4, "Try do reschedule"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    const/4 v12, 0x0

    .line 508
    .local v12, c:Landroid/database/Cursor;
    const/16 v24, 0x0

    .line 509
    .local v24, num:I
    const/16 v17, 0x0

    .line 511
    .local v17, freq:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "_del=-1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 512
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_2

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_1
    :goto_0
    return-void

    .line 517
    :cond_2
    const/16 v19, 0x0

    .line 518
    .local v19, huxAccountProcessed:Z
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 519
    const-string v3, "_protocol"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 521
    .local v26, protocol:I
    const/4 v3, 0x4

    move/from16 v0, v26

    if-eq v0, v3, :cond_3

    .line 523
    const/4 v3, 0x6

    move/from16 v0, v26

    if-ne v0, v3, :cond_4

    .line 524
    if-nez v19, :cond_3

    .line 525
    const/16 v19, 0x1

    .line 530
    :cond_4
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 531
    .local v10, accountId:J
    const-string v3, "_nextfetchtime"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 532
    .local v15, fetchTime:J
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 533
    .local v13, fetchAccount:J
    const-string v3, "_poll_frequency_number"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 534
    .local v18, freqNum:I
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check info=> fetchTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", now:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_5
    const/16 v3, 0x9

    move/from16 v0, v18

    if-ne v0, v3, :cond_7

    .line 536
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/htc/android/mail/mailservice/DirectPushService;->startDp(Landroid/content/Context;J)V

    .line 540
    :goto_2
    if-eqz v18, :cond_6

    const/16 v3, 0x9

    move/from16 v0, v18

    if-eq v0, v3, :cond_6

    cmp-long v3, v15, v22

    if-gez v3, :cond_6

    .line 542
    new-instance v9, Lcom/htc/android/mail/Account;

    new-instance v3, Lcom/htc/android/mail/account/AccountBinder;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12, v4}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-direct {v9, v3}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V

    .line 543
    .local v9, a:Lcom/htc/android/mail/Account;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getPollQuantum(Landroid/content/Context;)I

    move-result v24

    .line 545
    const/4 v3, -0x1

    move/from16 v0, v24

    if-eq v0, v3, :cond_6

    .line 546
    move/from16 v0, v24

    int-to-long v3, v0

    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long v15, v22, v3

    .line 547
    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->updateFetchTime()V

    .line 548
    const/16 v21, 0x1

    .line 552
    .end local v9           #a:Lcom/htc/android/mail/Account;
    :cond_6
    if-eqz v18, :cond_3

    const/16 v3, 0x9

    move/from16 v0, v18

    if-eq v0, v3, :cond_3

    cmp-long v3, v15, v29

    if-gez v3, :cond_3

    cmp-long v3, v22, v29

    if-gez v3, :cond_3

    .line 554
    move-wide/from16 v29, v15

    .line 555
    move-wide/from16 v27, v13

    .line 556
    move/from16 v17, v18

    goto/16 :goto_1

    .line 538
    :cond_7
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/htc/android/mail/mailservice/DirectPushService;->stopDp(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 560
    .end local v10           #accountId:J
    .end local v13           #fetchAccount:J
    .end local v15           #fetchTime:J
    .end local v18           #freqNum:I
    .end local v19           #huxAccountProcessed:Z
    .end local v26           #protocol:I
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .restart local v19       #huxAccountProcessed:Z
    :cond_9
    if-eqz v12, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 563
    :cond_a
    if-nez p1, :cond_b

    if-eqz v21, :cond_1

    .line 568
    :cond_b
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-lez v3, :cond_f

    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->cancel()V

    .line 571
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set schedule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mins is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", smallFetchTime is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". now is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Freq + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_c
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v20, i:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.mailservice.MailService"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v3, "com.htc.android.mail.intent.action.MAIL_SERVICE_WAKEUP"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    .line 579
    .local v25, pi:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/mailservice/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/mailservice/MailService;->am:Landroid/app/AlarmManager;

    .line 582
    if-lez v17, :cond_e

    const/4 v3, 0x4

    move/from16 v0, v17

    if-ge v0, v3, :cond_e

    .line 583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/mailservice/MailService;->am:Landroid/app/AlarmManager;

    const/4 v4, 0x3

    move-wide/from16 v0, v29

    move-object/from16 v2, v25

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 584
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string v3, "MailService"

    const-string v4, "set Alarm done. type :3"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_d
    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/mailservice/MailService;->addRegularSyncAlarm(J)V

    goto/16 :goto_0

    .line 587
    :cond_e
    const/4 v3, 0x4

    move/from16 v0, v17

    if-lt v0, v3, :cond_1

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/mailservice/MailService;->am:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-wide/from16 v0, v29

    move-object/from16 v2, v25

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 589
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MailService"

    const-string v4, "set Alarm done. type :2"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    .end local v20           #i:Landroid/content/Intent;
    .end local v25           #pi:Landroid/app/PendingIntent;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->cancel()V

    .line 597
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MailService"

    const-string v4, "no account schedule."

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private reschedulePeak(Z)V
    .locals 25
    .parameter "skipCheckMail"

    .prologue
    .line 611
    const-wide v23, 0x7fffffffffffffffL

    .line 612
    .local v23, smallNextPeakSwitchTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 614
    .local v19, now:J
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailService"

    const-string v4, "Try do reschedule Peak"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_0
    const/4 v12, 0x0

    .line 617
    .local v12, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/mailservice/MailService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/mailservice/MailService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getSmartWifiState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 619
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsSmartWifi:Z

    .line 623
    :goto_0
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMART_WIFI_STATUS_RUNNING = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsSmartWifi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "_del=-1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 627
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-gtz v3, :cond_4

    .line 699
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 712
    :cond_2
    :goto_1
    return-void

    .line 621
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsSmartWifi:Z

    goto :goto_0

    .line 631
    :cond_4
    const/4 v13, 0x0

    .line 632
    .local v13, huxAccountProcessed:Z
    :cond_5
    :goto_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 633
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 634
    .local v10, accountid:J
    const-string v3, "_protocol"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 636
    .local v22, protocol:I
    const/4 v3, 0x4

    move/from16 v0, v22

    if-eq v0, v3, :cond_5

    .line 638
    const/4 v3, 0x6

    move/from16 v0, v22

    if-ne v0, v3, :cond_6

    .line 639
    if-nez v13, :cond_5

    .line 640
    const/4 v13, 0x1

    .line 645
    :cond_6
    invoke-static {v10, v11}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v9

    .line 646
    .local v9, a:Lcom/htc/android/mail/Account;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsSmartWifi:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 648
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 649
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v3}, Lcom/htc/android/mail/Account;->setCheckFreq(Landroid/content/Context;I)V

    .line 650
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 651
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartWifi enabled,set account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " checkfreq to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_7
    if-nez p1, :cond_8

    .line 653
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->getSyncDelayRandomSecond()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long v17, v3, v5

    .line 654
    .local v17, nonce:J
    move-wide/from16 v0, v17

    invoke-static {v10, v11, v0, v1}, Lcom/htc/android/mail/MailProvider;->updateAccountPollTime(JJ)I

    .line 655
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V

    .line 689
    .end local v17           #nonce:J
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/android/mail/mailservice/MailService;->getNextPeakSwitchTimeFromNow(Lcom/htc/android/mail/Account;)J

    move-result-wide v15

    .line 690
    .local v15, nextPeakSwitchTime:J
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v15, v3

    if-eqz v3, :cond_9

    .line 691
    add-long v15, v15, v19

    .line 693
    :cond_9
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set nextPeakSwitchTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_a
    cmp-long v3, v23, v15

    if-lez v3, :cond_5

    .line 695
    move-wide/from16 v23, v15

    goto/16 :goto_2

    .line 658
    .end local v15           #nextPeakSwitchTime:J
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/android/mail/mailservice/MailService;->isInPeakTime(Lcom/htc/android/mail/Account;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 659
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOn(Landroid/content/Context;)I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 660
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOn(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v3}, Lcom/htc/android/mail/Account;->setCheckFreq(Landroid/content/Context;I)V

    .line 661
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 662
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_e

    .line 664
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->actionReschedule(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 699
    .end local v9           #a:Lcom/htc/android/mail/Account;
    .end local v10           #accountid:J
    .end local v13           #huxAccountProcessed:Z
    .end local v22           #protocol:I
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_d

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v3

    .line 666
    .restart local v9       #a:Lcom/htc/android/mail/Account;
    .restart local v10       #accountid:J
    .restart local v13       #huxAccountProcessed:Z
    .restart local v22       #protocol:I
    :cond_e
    if-nez p1, :cond_8

    .line 667
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->getSyncDelayRandomSecond()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long v17, v3, v5

    .line 668
    .restart local v17       #nonce:J
    move-wide/from16 v0, v17

    invoke-static {v10, v11, v0, v1}, Lcom/htc/android/mail/MailProvider;->updateAccountPollTime(JJ)I

    .line 669
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V

    goto/16 :goto_3

    .line 674
    .end local v17           #nonce:J
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOff(Landroid/content/Context;)I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 675
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getSyncSchedulePeakOff(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v3}, Lcom/htc/android/mail/Account;->setCheckFreq(Landroid/content/Context;I)V

    .line 676
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 677
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_11

    .line 679
    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->actionReschedule(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 681
    :cond_11
    if-nez p1, :cond_8

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->getSyncDelayRandomSecond()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long v17, v3, v5

    .line 683
    .restart local v17       #nonce:J
    move-wide/from16 v0, v17

    invoke-static {v10, v11, v0, v1}, Lcom/htc/android/mail/MailProvider;->updateAccountPollTime(JJ)I

    .line 684
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 699
    .end local v9           #a:Lcom/htc/android/mail/Account;
    .end local v10           #accountid:J
    .end local v17           #nonce:J
    .end local v22           #protocol:I
    :cond_12
    if-eqz v12, :cond_13

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 702
    :cond_13
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set nextPeakSwitch smallFetchTime is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". now is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_14
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v14, i:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v3, "com.htc.android.mail.intent.action.MAIL_SERVICE_RESCHEDULE_PEAK"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v14, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 709
    .local v21, pi:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/mailservice/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/mailservice/MailService;->am:Landroid/app/AlarmManager;

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/mailservice/MailService;->am:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-wide/from16 v0, v23

    move-object/from16 v2, v21

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 711
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MailService"

    const-string v4, "reschedule Peak set Alarm done."

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1059
    return-void
.end method

.method private setPowerLock()V
    .locals 2

    .prologue
    .line 466
    sget-boolean v0, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailService"

    const-string v1, "Power acquire"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 469
    :cond_1
    return-void
.end method

.method private setPowerRelease()V
    .locals 2

    .prologue
    .line 472
    sget-boolean v0, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailService"

    const-string v1, "Power release"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 475
    :cond_1
    return-void
.end method

.method private setWifiLock()V
    .locals 2

    .prologue
    .line 478
    sget-boolean v0, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailService"

    const-string v1, "Wifi acquire"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 481
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    .line 482
    return-void
.end method

.method private setWifiRelease()V
    .locals 2

    .prologue
    .line 485
    sget-boolean v0, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailService"

    const-string v1, "Wifi release"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 488
    :cond_1
    return-void
.end method

.method private showMailNotification(JIJ)V
    .locals 6
    .parameter "id"
    .parameter "newUnread"
    .parameter "messageId"

    .prologue
    .line 1062
    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/NewMailNotification;->showNotificationInLine(Landroid/content/Context;JIJ)I

    .line 1063
    return-void
.end method

.method public static updateNotification()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method


# virtual methods
.method checkNetwork()Z
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1066
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/mailservice/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1067
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1068
    .local v2, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 1069
    .local v6, wifi:Landroid/net/NetworkInfo;
    const/4 v7, 0x0

    .line 1070
    .local v7, wimax:Landroid/net/NetworkInfo;
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v11, :cond_0

    .line 1071
    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 1073
    :cond_0
    const/16 v11, 0x12

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1075
    .local v3, usbNet:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .local v1, mOn:Z
    const/4 v5, 0x0

    .local v5, wOn:Z
    const/4 v8, 0x0

    .local v8, wimaxOn:Z
    const/4 v4, 0x0

    .line 1076
    .local v4, usbOn:Z
    if-eqz v2, :cond_1

    .line 1077
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 1079
    :cond_1
    if-eqz v6, :cond_2

    .line 1080
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 1082
    :cond_2
    if-eqz v7, :cond_3

    .line 1083
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    .line 1085
    :cond_3
    if-eqz v3, :cond_4

    .line 1086
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 1088
    :cond_4
    iput-boolean v5, p0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiConnected:Z

    .line 1090
    sget-boolean v11, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v11, :cond_5

    const-string v11, "MailService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mobile connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", wifi connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", wimax connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", usb connection:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_5
    if-eq v5, v10, :cond_6

    if-eq v1, v10, :cond_6

    if-eq v8, v10, :cond_6

    if-eq v4, v10, :cond_6

    .line 1094
    :goto_0
    return v9

    :cond_6
    move v9, v10

    goto :goto_0
.end method

.method public getNextdayFromToday(ILcom/htc/android/mail/Account;)I
    .locals 6
    .parameter "nowday"
    .parameter "a"

    .prologue
    const/4 v4, 0x7

    .line 845
    new-instance v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    invoke-virtual {p2, p0}, Lcom/htc/android/mail/Account;->getPeakDays(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    .line 846
    .local v1, daysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    const/4 v0, 0x0

    .line 847
    .local v0, dayCount:I
    add-int/lit8 v2, p1, 0x1

    .line 848
    .local v2, nextday:I
    if-ne v2, v4, :cond_0

    .line 849
    const/4 v2, 0x0

    .line 851
    :cond_0
    invoke-virtual {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 852
    add-int/lit8 v0, v0, 0x1

    .line 853
    add-int/lit8 v2, v2, 0x1

    .line 854
    if-ne v2, v4, :cond_1

    .line 855
    const/4 v2, 0x0

    .line 857
    :cond_1
    const/16 v3, 0xa

    if-le v0, v3, :cond_0

    .line 858
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MailService"

    const-string v4, "getNextdayFromToday got error!!"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_2
    const/4 v3, 0x0

    .line 863
    :goto_0
    return v3

    .line 862
    :cond_3
    sget-boolean v3, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dayCount= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v3, v0

    .line 863
    goto :goto_0
.end method

.method public newPowerLock()V
    .locals 3

    .prologue
    .line 872
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 873
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mailservice/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 874
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MAILSERVICE_PWR_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 875
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 877
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 868
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 3

    .prologue
    .line 158
    sget-boolean v1, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailService"

    const-string v2, "new Mail fetch service start!!"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-static {p0}, Lcom/htc/android/mail/Mail;->setDefaultCharset(Landroid/content/Context;)V

    .line 162
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mLooper:Landroid/os/Looper;

    .line 163
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mailservice/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService;->mMailBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/mail/mailservice/MailService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 460
    sget-boolean v0, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 462
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService;->mMailBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/mailservice/MailService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 29
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 205
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting #"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->add(I)V

    .line 207
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 208
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->removeAndTryStop(I)V

    .line 457
    :cond_2
    :goto_0
    return-void

    .line 212
    :cond_3
    const-string v4, "com.htc.android.mail.intent.action.ACTION_CANCEL_NOTIFIY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 213
    const-string v4, "AccountId"

    const-wide/16 v9, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/htc/android/mail/mailservice/MailService;->accountId:J

    .line 214
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "***** HTC MailService *****: cancel notifiy>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/android/mail/mailservice/MailService;->accountId:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_4
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/android/mail/mailservice/MailService;->accountId:J

    const-wide/16 v14, 0x0

    cmp-long v4, v9, v14

    if-ltz v4, :cond_2

    .line 216
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$1;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$1;-><init>(Lcom/htc/android/mail/mailservice/MailService;I)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 227
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->newPowerLock()V

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setPowerLock()V

    .line 230
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v4, :cond_d

    .line 234
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v4}, Landroid/os/IPowerManager;->timeSinceScreenOn()J

    move-result-wide v26

    .line 235
    .local v26, time:J
    const-wide/16 v9, 0x0

    cmp-long v4, v26, v9

    if-nez v4, :cond_c

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z

    .line 236
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Is Screen on:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    .end local v26           #time:J
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mCurWifiState:I

    .line 246
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Currect wifi state:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/android/mail/mailservice/MailService;->mCurWifiState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_7
    const-string v4, "com.htc.android.mail.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.htc.android.mail.intent.action.MAIL_SERVICE_SYNC_MAIL"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.htc.android.mail.intent.action.MAIL_SERVICE_WAKEUP_POWER_SAVING"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 249
    :cond_8
    const-string v4, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "***** HTC MailService *****: checking mail,"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v4, "checkAccountID"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 251
    .local v5, checkid:J
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Let\'s prepare to start fetch. ID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_9
    const-string v4, "isPushMail"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 254
    .local v8, isPushMail:Z
    new-instance v3, Lcom/htc/android/mail/mailservice/MailService$2;

    move-object/from16 v4, p0

    move/from16 v7, p2

    move-wide v9, v5

    move/from16 v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/htc/android/mail/mailservice/MailService$2;-><init>(Lcom/htc/android/mail/mailservice/MailService;JIZJI)V

    .line 260
    .local v3, syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    const-string v4, "com.htc.android.mail.intent.action.MAIL_SERVICE_SYNC_MAIL"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 261
    new-instance v3, Lcom/htc/android/mail/mailservice/MailService$3;

    .end local v3           #syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    move-object/from16 v4, p0

    move/from16 v7, p2

    move-wide v9, v5

    move/from16 v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/htc/android/mail/mailservice/MailService$3;-><init>(Lcom/htc/android/mail/mailservice/MailService;JIZJI)V

    .line 268
    .restart local v3       #syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    :cond_a
    move-object/from16 v23, v3

    .line 271
    .local v23, finalSyncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->checkNetwork()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 272
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v7, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$4;-><init>(Lcom/htc/android/mail/mailservice/MailService;Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 332
    :catch_0
    move-exception v22

    .line 333
    .local v22, e:Landroid/provider/Settings$SettingNotFoundException;
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SettingNotFoundException:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_b
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$8;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$8;-><init>(Lcom/htc/android/mail/mailservice/MailService;I)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 235
    .end local v3           #syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    .end local v5           #checkid:J
    .end local v8           #isPushMail:Z
    .end local v22           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v23           #finalSyncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    .restart local v26       #time:J
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 237
    .end local v26           #time:J
    :catch_1
    move-exception v22

    .line 238
    .local v22, e:Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_6

    invoke-virtual/range {v22 .. v22}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 241
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_d
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "MailService"

    const-string v7, "mPowerManagerService is null"

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z

    goto/16 :goto_2

    .line 278
    .restart local v3       #syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    .restart local v5       #checkid:J
    .restart local v8       #isPushMail:Z
    .restart local v23       #finalSyncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    :cond_f
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wifi_on"

    invoke-static {v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_11

    .line 279
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_10

    const-string v4, "MailService"

    const-string v7, "Wait for 3G."

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mDelayHandler:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

    const/16 v7, 0x65

    invoke-virtual {v4, v7}, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 281
    .local v24, message:Landroid/os/Message;
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mDelayHandler:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

    const-wide/16 v9, 0xbb8

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v9, v10}, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 283
    .end local v24           #message:Landroid/os/Message;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wifi_on"

    invoke-static {v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_19

    .line 284
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_12

    const-string v4, "MailService"

    const-string v7, "Wifi setting is on"

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z

    if-eqz v4, :cond_14

    .line 287
    if-eqz v8, :cond_13

    .line 288
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/htc/android/mail/mailservice/DirectPushService;->handlePushMailSyncError(Landroid/content/Context;J)V

    .line 290
    :cond_13
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$5;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$5;-><init>(Lcom/htc/android/mail/mailservice/MailService;I)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 298
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mCurWifiState:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_16

    .line 299
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_15

    const-string v4, "MailService"

    const-string v7, "Wakeup wifi and wait."

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_15
    new-instance v28, Landroid/content/Intent;

    const-string v4, "android.intent.action.WIFIACTIVE"

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v28, wifiActive:Landroid/content/Intent;
    const/high16 v4, 0x4000

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/mailservice/MailService;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    const/4 v4, 0x1

    sput-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->mWasWakeupWifi:Z

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mDelayHandler:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

    const/16 v7, 0x64

    invoke-virtual {v4, v7}, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 305
    .restart local v24       #message:Landroid/os/Message;
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/MailService;->mDelayHandler:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

    const-wide/16 v9, 0x3a98

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v9, v10}, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 308
    .end local v24           #message:Landroid/os/Message;
    .end local v28           #wifiActive:Landroid/content/Intent;
    :cond_16
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_17

    const-string v4, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wifi status is not enabled:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/android/mail/mailservice/MailService;->mCurWifiState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_17
    if-eqz v8, :cond_18

    .line 310
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/htc/android/mail/mailservice/DirectPushService;->handlePushMailSyncError(Landroid/content/Context;J)V

    .line 312
    :cond_18
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$6;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$6;-><init>(Lcom/htc/android/mail/mailservice/MailService;I)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 323
    :cond_19
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_1a

    const-string v4, "MailService"

    const-string v7, "Network unavailable. Try next time."

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_1a
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$7;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$7;-><init>(Lcom/htc/android/mail/mailservice/MailService;I)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 342
    .end local v3           #syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    .end local v5           #checkid:J
    .end local v8           #isPushMail:Z
    .end local v23           #finalSyncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    :cond_1b
    const-string v4, "com.htc.android.mail.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 343
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_1c

    const-string v4, "MailService"

    const-string v7, "***** HTC MailService *****: cancel"

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_1c
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$9;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$9;-><init>(Lcom/htc/android/mail/mailservice/MailService;I)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 351
    :cond_1d
    const-string v4, "com.htc.android.mail.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 352
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_1e

    const-string v4, "MailService"

    const-string v7, "***** HTC MailService *****: reschedule"

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_1e
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$10;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$10;-><init>(Lcom/htc/android/mail/mailservice/MailService;I)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 360
    :cond_1f
    const-string v4, "com.htc.android.mail.intent.action.MAIL_SERVICE_RESCHEDULE_PEAK"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 361
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_20

    const-string v4, "MailService"

    const-string v7, "***** HTC MailService *****: reschedule peak"

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_20
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$11;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$11;-><init>(Lcom/htc/android/mail/mailservice/MailService;I)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 369
    :cond_21
    const-string v4, "com.htc.android.mail.intent.action.MAIL_SERVICE_RESCHEDULE_IFNEED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 370
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_22

    const-string v4, "MailService"

    const-string v7, "***** HTC MailService *****: reschedule if need"

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_22
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$12;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$12;-><init>(Lcom/htc/android/mail/mailservice/MailService;I)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 378
    :cond_23
    const-string v4, "android.intent.action.SYNC"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 379
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_24

    const-string v4, "MailService"

    const-string v7, "***** HTC MailService *****: Force checking mail"

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->checkNetwork()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 381
    const-string v4, "SyncEmail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 382
    .local v11, email:Ljava/lang/String;
    const-string v4, "139Account"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 383
    .local v21, check139:Z
    const-string v4, "mailboxId"

    const-wide/16 v9, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 385
    .local v12, mailboxId:J
    if-eqz v21, :cond_25

    .line 386
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$13;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v12, v13, v1}, Lcom/htc/android/mail/mailservice/MailService$13;-><init>(Lcom/htc/android/mail/mailservice/MailService;JI)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 394
    :cond_25
    if-eqz v11, :cond_26

    .line 395
    new-instance v4, Ljava/lang/Thread;

    new-instance v9, Lcom/htc/android/mail/mailservice/MailService$14;

    move-object/from16 v10, p0

    move/from16 v14, p2

    invoke-direct/range {v9 .. v14}, Lcom/htc/android/mail/mailservice/MailService$14;-><init>(Lcom/htc/android/mail/mailservice/MailService;Ljava/lang/String;JI)V

    invoke-direct {v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 404
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 405
    .local v16, id:Ljava/lang/Long;
    new-instance v4, Ljava/lang/Thread;

    new-instance v14, Lcom/htc/android/mail/mailservice/MailService$15;

    move-object/from16 v15, p0

    move-wide/from16 v17, v12

    move/from16 v19, p2

    invoke-direct/range {v14 .. v19}, Lcom/htc/android/mail/mailservice/MailService$15;-><init>(Lcom/htc/android/mail/mailservice/MailService;Ljava/lang/Long;JI)V

    invoke-direct {v4, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 413
    .end local v11           #email:Ljava/lang/String;
    .end local v12           #mailboxId:J
    .end local v16           #id:Ljava/lang/Long;
    .end local v21           #check139:Z
    :cond_27
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_28

    const-string v4, "MailService"

    const-string v7, "Network unavailable. Try next time."

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_28
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$16;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$16;-><init>(Lcom/htc/android/mail/mailservice/MailService;I)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 422
    :cond_29
    const-string v4, "com.htc.android.mail.intent.action.MAIL_SERVICE_CREATE_ACCOUNT"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 423
    sget-boolean v4, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v4, :cond_2a

    const-string v4, "MailService"

    const-string v7, "***** HTC MailService *****: Create mail account"

    invoke-static {v4, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 425
    .local v20, accBundle:Landroid/os/Bundle;
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Lcom/htc/android/mail/mailservice/MailService$17;-><init>(Lcom/htc/android/mail/mailservice/MailService;Landroid/os/Bundle;I)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 437
    .end local v20           #accBundle:Landroid/os/Bundle;
    :cond_2b
    const-string v4, "android.net.wifi.SMART_WIFI_STATE_CHANGED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 438
    const-string v4, "newState"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 439
    .local v25, state:I
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/android/mail/mailservice/MailService$18;

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Lcom/htc/android/mail/mailservice/MailService$18;-><init>(Lcom/htc/android/mail/mailservice/MailService;II)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public startCheck(JJI)V
    .locals 28
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "startId"

    .prologue
    .line 937
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "enter startCheck1, accountId = "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, ",mailboxId = "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_0
    const/4 v12, 0x0

    .line 942
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    const-string v5, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/mailservice/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 943
    .local v13, cm:Landroid/net/ConnectivityManager;
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v5

    if-nez v5, :cond_8

    .line 944
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailService"

    const-string v7, "BackgroundData disabled"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    :cond_1
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MailService"

    const-string v7, "Do finally"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_2
    const-wide v26, 0x7fffffffffffffffL

    cmp-long v5, p1, v26

    if-eqz v5, :cond_3

    const-wide/16 v26, 0x0

    cmp-long v5, p1, v26

    if-nez v5, :cond_27

    .line 1032
    :cond_3
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V

    .line 1044
    :cond_4
    :goto_0
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1045
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    if-eqz v5, :cond_6

    .line 1046
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setWifiRelease()V

    .line 1047
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    .line 1049
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setPowerRelease()V

    .line 1050
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->size(I)I

    move-result v5

    if-nez v5, :cond_7

    .line 1051
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    :goto_1
    move/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->removeAndTryStop(I)V

    .line 1055
    :cond_7
    return-void

    .line 948
    :cond_8
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "_del=-1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 949
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_f

    .line 950
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "MailService"

    const-string v7, "No account"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    :cond_9
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "MailService"

    const-string v7, "Do finally"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_a
    const-wide v26, 0x7fffffffffffffffL

    cmp-long v5, p1, v26

    if-eqz v5, :cond_b

    const-wide/16 v26, 0x0

    cmp-long v5, p1, v26

    if-nez v5, :cond_28

    .line 1032
    :cond_b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V

    .line 1044
    :cond_c
    :goto_2
    if-eqz v12, :cond_d

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1045
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    if-eqz v5, :cond_e

    .line 1046
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setWifiRelease()V

    .line 1047
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    .line 1049
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setPowerRelease()V

    .line 1050
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->size(I)I

    move-result v5

    if-nez v5, :cond_7

    .line 1051
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    goto :goto_1

    .line 954
    :cond_f
    :try_start_2
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_10

    const-string v5, "MailService"

    const-string v7, "enter startCheck2"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_10
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 958
    const-string v5, "_protocol"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 959
    .local v22, protocol:I
    const/4 v5, 0x4

    move/from16 v0, v22

    if-ne v0, v5, :cond_11

    .line 961
    const-wide v26, 0x7fffffffffffffffL

    cmp-long v5, p1, v26

    if-nez v5, :cond_10

    .line 962
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_11

    const-string v5, "MailService"

    const-string v7, "startCheck - exchange"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :cond_11
    const-string v5, "_nextfetchtime"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 970
    .local v16, fetchTime:J
    const-string v5, "_id"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 977
    .local v14, fetchAccount:J
    const-string v5, "_lastupdatetime"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 978
    .local v19, lastUpdateTime:J
    const-string v5, "_poll_frequency_number"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 979
    .local v18, freqNum:I
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_12

    const-string v5, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "enter startCheck: id = "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, ", freqNum = "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, ", fetchTime = "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, ","

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, ", lastupdateTime = "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, ", current: "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_12
    const-wide v26, 0x7fffffffffffffffL

    cmp-long v5, p1, v26

    if-eqz v5, :cond_13

    cmp-long v5, p1, v14

    if-eqz v5, :cond_13

    const-wide/16 v26, 0x0

    cmp-long v5, p1, v26

    if-nez v5, :cond_10

    if-eqz v18, :cond_10

    const/16 v5, 0x9

    move/from16 v0, v18

    if-eq v0, v5, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    cmp-long v5, v16, v26

    if-gez v5, :cond_10

    .line 983
    :cond_13
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_14

    const-string v5, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Fetch mail for account:"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :cond_14
    sput-wide v14, Lcom/htc/android/mail/mailservice/MailService;->nowWorkingAccount:J

    .line 986
    new-instance v8, Lcom/htc/android/mail/Account;

    new-instance v5, Lcom/htc/android/mail/account/AccountBinder;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12, v7}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-direct {v8, v5}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V

    .line 987
    .local v8, mAccount:Lcom/htc/android/mail/Account;
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v4

    .line 988
    .local v4, requestController:Lcom/htc/android/mail/RequestController;
    new-instance v24, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mLooper:Landroid/os/Looper;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v15, v5}, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;-><init>(Lcom/htc/android/mail/mailservice/MailService;JLandroid/os/Looper;)V

    .line 989
    .local v24, requestHandler:Lcom/htc/android/mail/mailservice/MailService$RequestHandler;
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->setRequestController(Lcom/htc/android/mail/AbsRequestController;)V

    .line 990
    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 991
    .local v6, weakRequestHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v4, v6}, Lcom/htc/android/mail/RequestController;->addWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 992
    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/RequestController;->registerWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 994
    new-instance v23, Lcom/htc/android/mail/Request;

    invoke-direct/range {v23 .. v23}, Lcom/htc/android/mail/Request;-><init>()V

    .line 995
    .local v23, r:Lcom/htc/android/mail/Request;
    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 996
    const/4 v5, 0x0

    move-object/from16 v0, v23

    iput v5, v0, Lcom/htc/android/mail/Request;->messageWhat:I

    .line 998
    const/4 v5, 0x1

    move-object/from16 v0, v23

    iput v5, v0, Lcom/htc/android/mail/Request;->command:I

    .line 999
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1001
    .local v11, b:Landroid/os/Bundle;
    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v21

    .line 1002
    .local v21, m:Lcom/htc/android/mail/Mailbox;
    if-nez v21, :cond_15

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    const-wide v26, 0x7ffffffffffffffaL

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v21

    .line 1003
    :cond_15
    if-nez v21, :cond_16

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v21

    .line 1004
    :cond_16
    const-string v5, "Mailbox"

    move-object/from16 v0, v21

    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1006
    move-object/from16 v0, v23

    iput-object v11, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 1007
    move/from16 v0, p5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/android/mail/Request;->serviceStartId:I

    .line 1008
    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v26

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 1009
    const/4 v5, 0x0

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lcom/htc/android/mail/Request;->removeable:Z

    .line 1010
    new-instance v3, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move/from16 v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;-><init>(Lcom/htc/android/mail/AbsRequestController;Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;Ljava/lang/ref/WeakReference;ILcom/htc/android/mail/Account;)V

    .line 1011
    .local v3, callback:Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/Request;->setCallbackIfNotAdded(Ljava/lang/Runnable;)V

    .line 1012
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_17

    const-string v5, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "account: "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->put(ILandroid/os/Handler;)V

    .line 1017
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v5}, Lcom/htc/android/mail/RequestController;->refreshOrCheckMoreMail(Lcom/htc/android/mail/Request;Z)I

    move-result v25

    .line 1019
    .local v25, ret:I
    const-wide/16 v26, 0x0

    cmp-long v5, p1, v26

    if-nez v5, :cond_18

    .line 1020
    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->updateFetchTime()V

    .line 1023
    :cond_18
    const-wide/16 v26, -0x1

    sput-wide v26, Lcom/htc/android/mail/mailservice/MailService;->nowWorkingAccount:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 1029
    .end local v3           #callback:Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;
    .end local v4           #requestController:Lcom/htc/android/mail/RequestController;
    .end local v6           #weakRequestHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    .end local v8           #mAccount:Lcom/htc/android/mail/Account;
    .end local v11           #b:Landroid/os/Bundle;
    .end local v13           #cm:Landroid/net/ConnectivityManager;
    .end local v14           #fetchAccount:J
    .end local v16           #fetchTime:J
    .end local v18           #freqNum:I
    .end local v19           #lastUpdateTime:J
    .end local v21           #m:Lcom/htc/android/mail/Mailbox;
    .end local v22           #protocol:I
    .end local v23           #r:Lcom/htc/android/mail/Request;
    .end local v24           #requestHandler:Lcom/htc/android/mail/mailservice/MailService$RequestHandler;
    .end local v25           #ret:I
    :catchall_0
    move-exception v5

    sget-boolean v7, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v7, :cond_19

    const-string v7, "MailService"

    const-string v26, "Do finally"

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_19
    const-wide v26, 0x7fffffffffffffffL

    cmp-long v7, p1, v26

    if-eqz v7, :cond_1a

    const-wide/16 v26, 0x0

    cmp-long v7, p1, v26

    if-nez v7, :cond_26

    .line 1032
    :cond_1a
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V

    .line 1044
    :cond_1b
    :goto_4
    if-eqz v12, :cond_1c

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1045
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    if-eqz v7, :cond_1d

    .line 1046
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setWifiRelease()V

    .line 1047
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    .line 1049
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setPowerRelease()V

    .line 1050
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->size(I)I

    move-result v7

    if-nez v7, :cond_1e

    .line 1051
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->removeAndTryStop(I)V

    .line 1029
    :cond_1e
    throw v5

    .line 1027
    .restart local v13       #cm:Landroid/net/ConnectivityManager;
    :cond_1f
    :try_start_3
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_20

    const-string v5, "MailService"

    const-string v7, "end startCheck"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1029
    :cond_20
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_21

    const-string v5, "MailService"

    const-string v7, "Do finally"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_21
    const-wide v26, 0x7fffffffffffffffL

    cmp-long v5, p1, v26

    if-eqz v5, :cond_22

    const-wide/16 v26, 0x0

    cmp-long v5, p1, v26

    if-nez v5, :cond_29

    .line 1032
    :cond_22
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V

    .line 1044
    :cond_23
    :goto_5
    if-eqz v12, :cond_24

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_24

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1045
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    if-eqz v5, :cond_25

    .line 1046
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setWifiRelease()V

    .line 1047
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    .line 1049
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setPowerRelease()V

    .line 1050
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->size(I)I

    move-result v5

    if-nez v5, :cond_7

    .line 1051
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    goto/16 :goto_1

    .line 1034
    .end local v13           #cm:Landroid/net/ConnectivityManager;
    :cond_26
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v10

    .line 1035
    .local v10, accountPool:Lcom/htc/android/mail/AccountPool;
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v10, v0, v1, v2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v9

    .line 1036
    .local v9, account:Lcom/htc/android/mail/Account;
    if-eqz v9, :cond_1b

    .line 1038
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v7

    const/16 v26, 0x9

    move/from16 v0, v26

    if-eq v7, v0, :cond_1b

    .line 1039
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V

    goto/16 :goto_4

    .line 1034
    .end local v9           #account:Lcom/htc/android/mail/Account;
    .end local v10           #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v13       #cm:Landroid/net/ConnectivityManager;
    :cond_27
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v10

    .line 1035
    .restart local v10       #accountPool:Lcom/htc/android/mail/AccountPool;
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v10, v0, v1, v2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v9

    .line 1036
    .restart local v9       #account:Lcom/htc/android/mail/Account;
    if-eqz v9, :cond_4

    .line 1038
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v5

    const/16 v7, 0x9

    if-eq v5, v7, :cond_4

    .line 1039
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V

    goto/16 :goto_0

    .line 1034
    .end local v9           #account:Lcom/htc/android/mail/Account;
    .end local v10           #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_28
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v10

    .line 1035
    .restart local v10       #accountPool:Lcom/htc/android/mail/AccountPool;
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v10, v0, v1, v2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v9

    .line 1036
    .restart local v9       #account:Lcom/htc/android/mail/Account;
    if-eqz v9, :cond_c

    .line 1038
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v5

    const/16 v7, 0x9

    if-eq v5, v7, :cond_c

    .line 1039
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V

    goto/16 :goto_2

    .line 1034
    .end local v9           #account:Lcom/htc/android/mail/Account;
    .end local v10           #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_29
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v10

    .line 1035
    .restart local v10       #accountPool:Lcom/htc/android/mail/AccountPool;
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v10, v0, v1, v2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v9

    .line 1036
    .restart local v9       #account:Lcom/htc/android/mail/Account;
    if-eqz v9, :cond_23

    .line 1038
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v5

    const/16 v7, 0x9

    if-eq v5, v7, :cond_23

    .line 1039
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V

    goto/16 :goto_5
.end method

.method public startSync(JJIZ)V
    .locals 17
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "startId"
    .parameter "isPushMail"

    .prologue
    .line 881
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enter startSync, accountId = "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ",mailboxId = "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_0
    :try_start_0
    const-string v5, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/mailservice/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 886
    .local v11, cm:Landroid/net/ConnectivityManager;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v5

    if-nez v5, :cond_4

    .line 887
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailService"

    const-string v7, "BackgroundData disabled"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    if-eqz v5, :cond_2

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setWifiRelease()V

    .line 924
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    .line 926
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setPowerRelease()V

    .line 927
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->size(I)I

    move-result v5

    if-nez v5, :cond_3

    .line 928
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    :goto_0
    move/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->removeAndTryStop(I)V

    .line 931
    :cond_3
    return-void

    .line 890
    :cond_4
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v9

    .line 891
    .local v9, accountPool:Lcom/htc/android/mail/AccountPool;
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v9, v0, v1, v2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v8

    .line 893
    .local v8, account:Lcom/htc/android/mail/Account;
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v4

    .line 894
    .local v4, requestController:Lcom/htc/android/mail/RequestController;
    new-instance v14, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mLooper:Landroid/os/Looper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v14, v0, v1, v2, v5}, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;-><init>(Lcom/htc/android/mail/mailservice/MailService;JLandroid/os/Looper;)V

    .line 895
    .local v14, requestHandler:Lcom/htc/android/mail/mailservice/MailService$RequestHandler;
    invoke-virtual {v14, v4}, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->setRequestController(Lcom/htc/android/mail/AbsRequestController;)V

    .line 896
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 897
    .local v6, weakRequestHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v4, v6}, Lcom/htc/android/mail/RequestController;->addWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 898
    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/RequestController;->registerWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 900
    new-instance v13, Lcom/htc/android/mail/Request;

    invoke-direct {v13}, Lcom/htc/android/mail/Request;-><init>()V

    .line 901
    .local v13, r:Lcom/htc/android/mail/Request;
    iput-object v6, v13, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 902
    const/4 v5, 0x0

    iput v5, v13, Lcom/htc/android/mail/Request;->messageWhat:I

    .line 904
    const/4 v5, 0x1

    iput v5, v13, Lcom/htc/android/mail/Request;->command:I

    .line 905
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 907
    .local v10, b:Landroid/os/Bundle;
    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v12

    .line 908
    .local v12, m:Lcom/htc/android/mail/Mailbox;
    if-nez v12, :cond_5

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v12

    .line 909
    :cond_5
    const-string v5, "Mailbox"

    invoke-virtual {v10, v5, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 910
    const-string v5, "isPushMail"

    move/from16 v0, p6

    invoke-virtual {v10, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 912
    iput-object v10, v13, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 913
    move/from16 v0, p5

    iput v0, v13, Lcom/htc/android/mail/Request;->serviceStartId:I

    .line 914
    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v13, v0, v1}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 915
    const/4 v5, 0x0

    iput-boolean v5, v13, Lcom/htc/android/mail/Request;->removeable:Z

    .line 916
    new-instance v3, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move/from16 v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;-><init>(Lcom/htc/android/mail/AbsRequestController;Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;Ljava/lang/ref/WeakReference;ILcom/htc/android/mail/Account;)V

    .line 917
    .local v3, callback:Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;
    invoke-virtual {v13, v3}, Lcom/htc/android/mail/Request;->setCallbackIfNotAdded(Ljava/lang/Runnable;)V

    .line 918
    sget-boolean v5, Lcom/htc/android/mail/mailservice/MailService;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "MailService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "account: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move/from16 v0, p5

    invoke-virtual {v5, v0, v14}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->put(ILandroid/os/Handler;)V

    .line 920
    const/4 v5, 0x0

    invoke-virtual {v4, v13, v5}, Lcom/htc/android/mail/RequestController;->refreshOrCheckMoreMail(Lcom/htc/android/mail/Request;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    if-eqz v5, :cond_7

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setWifiRelease()V

    .line 924
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    .line 926
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setPowerRelease()V

    .line 927
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->size(I)I

    move-result v5

    if-nez v5, :cond_3

    .line 928
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    goto/16 :goto_0

    .line 922
    .end local v3           #callback:Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;
    .end local v4           #requestController:Lcom/htc/android/mail/RequestController;
    .end local v6           #weakRequestHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    .end local v8           #account:Lcom/htc/android/mail/Account;
    .end local v9           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v10           #b:Landroid/os/Bundle;
    .end local v11           #cm:Landroid/net/ConnectivityManager;
    .end local v12           #m:Lcom/htc/android/mail/Mailbox;
    .end local v13           #r:Lcom/htc/android/mail/Request;
    .end local v14           #requestHandler:Lcom/htc/android/mail/mailservice/MailService$RequestHandler;
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    if-eqz v7, :cond_8

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setWifiRelease()V

    .line 924
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/htc/android/mail/mailservice/MailService;->mIsWifiLockSet:Z

    .line 926
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/MailService;->setPowerRelease()V

    .line 927
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->size(I)I

    move-result v7

    if-nez v7, :cond_9

    .line 928
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->removeAndTryStop(I)V

    .line 922
    :cond_9
    throw v5
.end method

.class public Lcom/htc/android/mail/RequestController;
.super Lcom/htc/android/mail/AbsRequestController;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/RequestController$DraftStatus;,
        Lcom/htc/android/mail/RequestController$FetchStatus;,
        Lcom/htc/android/mail/RequestController$RequestCollection;,
        Lcom/htc/android/mail/RequestController$UpdateMailHandler;,
        Lcom/htc/android/mail/RequestController$EASCallback;,
        Lcom/htc/android/mail/RequestController$ProgressHandler;,
        Lcom/htc/android/mail/RequestController$BlockingStack;,
        Lcom/htc/android/mail/RequestController$RequestStackThread;,
        Lcom/htc/android/mail/RequestController$SmtpThread;,
        Lcom/htc/android/mail/RequestController$CertificateCallback;,
        Lcom/htc/android/mail/RequestController$MainRequestQueueThread;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RequestController"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "MAIL_PWR_LOCK"

.field private static final WIFILOCK_KEY:Ljava/lang/String; = "MAIL_WIFI_LOCK"

.field private static mRequestController:Lcom/htc/android/mail/RequestController;


# instance fields
.field private mAcceptCertificate:Z

.field mAcceptCertificateRunnable:Ljava/lang/Runnable;

.field private mAccountPool:Lcom/htc/android/mail/AccountPool;

.field private mActiveModeBinder:Landroid/os/Binder;

.field private mApplicationContext:Landroid/content/Context;

.field private mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

.field private mCResolver:Landroid/content/ContentResolver;

.field private mCheckServer:Lcom/htc/android/mail/server/Server;

.field private mContext:Landroid/content/Context;

.field private mContextLock:Ljava/lang/Object;

.field private mCurrentProgressStatusMsg:Landroid/os/Message;

.field private mDraftStatus:Lcom/htc/android/mail/RequestController$DraftStatus;

.field private mEASCallbacks:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Lcom/htc/android/mail/RequestController$EASCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchStatus:Lcom/htc/android/mail/RequestController$FetchStatus;

.field private mIsStopChecking:Z

.field private mMailNotFound:I

.field private mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

.field private mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

.field private mProgressHandler:Lcom/htc/android/mail/RequestController$ProgressHandler;

.field private mRedo:Z

.field mRejectCertificateRunnable:Ljava/lang/Runnable;

.field private mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

.field private mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;

.field private mStopCheckLock:Ljava/lang/Object;

.field private mSuspendLock:Ljava/lang/Object;

.field private mUnknowHostLock:Ljava/lang/Object;

.field private mUpdateMailHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeSyncLock:Ljava/lang/Object;

.field private mWeakHandlerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWeakMailRequestHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiSyncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/RequestController;->mRequestController:Lcom/htc/android/mail/RequestController;

    .line 115
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 135
    invoke-direct {p0}, Lcom/htc/android/mail/AbsRequestController;-><init>()V

    .line 86
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;

    .line 87
    iput-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 91
    iput-boolean v2, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 92
    iput v2, p0, Lcom/htc/android/mail/RequestController;->mMailNotFound:I

    .line 93
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    .line 94
    new-instance v1, Lcom/htc/android/mail/RequestController$ProgressHandler;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/RequestController$ProgressHandler;-><init>(Lcom/htc/android/mail/RequestController;)V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mProgressHandler:Lcom/htc/android/mail/RequestController$ProgressHandler;

    .line 95
    iput-object v3, p0, Lcom/htc/android/mail/RequestController;->mCurrentProgressStatusMsg:Landroid/os/Message;

    .line 96
    new-instance v1, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v1}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mEASCallbacks:Lcom/htc/android/mail/util/SparseArray;

    .line 97
    new-instance v1, Lcom/htc/android/mail/RequestController$RequestCollection;

    invoke-direct {v1, v3}, Lcom/htc/android/mail/RequestController$RequestCollection;-><init>(Lcom/htc/android/mail/RequestController$1;)V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    .line 99
    new-instance v1, Lcom/htc/android/mail/RequestController$DraftStatus;

    invoke-direct {v1}, Lcom/htc/android/mail/RequestController$DraftStatus;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mDraftStatus:Lcom/htc/android/mail/RequestController$DraftStatus;

    .line 100
    new-instance v1, Lcom/htc/android/mail/RequestController$FetchStatus;

    invoke-direct {v1}, Lcom/htc/android/mail/RequestController$FetchStatus;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mFetchStatus:Lcom/htc/android/mail/RequestController$FetchStatus;

    .line 105
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mSuspendLock:Ljava/lang/Object;

    .line 107
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mContextLock:Ljava/lang/Object;

    .line 108
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mUnknowHostLock:Ljava/lang/Object;

    .line 109
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    .line 111
    iput-boolean v2, p0, Lcom/htc/android/mail/RequestController;->mRedo:Z

    .line 113
    iput-boolean v2, p0, Lcom/htc/android/mail/RequestController;->mAcceptCertificate:Z

    .line 117
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mWifiSyncLock:Ljava/lang/Object;

    .line 119
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mWakeSyncLock:Ljava/lang/Object;

    .line 1728
    new-instance v1, Lcom/htc/android/mail/RequestController$3;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/RequestController$3;-><init>(Lcom/htc/android/mail/RequestController;)V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mAcceptCertificateRunnable:Ljava/lang/Runnable;

    .line 1736
    new-instance v1, Lcom/htc/android/mail/RequestController$4;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/RequestController$4;-><init>(Lcom/htc/android/mail/RequestController;)V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mRejectCertificateRunnable:Ljava/lang/Runnable;

    .line 137
    const-string v1, "networkaddress.cache.ttl"

    const-string v2, "0"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1}, Lcom/htc/android/mail/RequestController;->setContext(Landroid/content/Context;)V

    .line 141
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    .line 143
    new-instance v1, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-direct {v1, p0, v3}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;-><init>(Lcom/htc/android/mail/RequestController;Lcom/htc/android/mail/RequestController$1;)V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    .line 145
    new-instance v1, Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/RequestController$RequestStackThread;-><init>(Lcom/htc/android/mail/RequestController;)V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    .line 147
    new-instance v1, Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/RequestController$RequestStackThread;-><init>(Lcom/htc/android/mail/RequestController;)V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    .line 149
    new-instance v1, Lcom/htc/android/mail/RequestController$SmtpThread;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/RequestController$SmtpThread;-><init>(Lcom/htc/android/mail/RequestController;)V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;

    .line 151
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UpdateMail"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 152
    .local v0, updateMailThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 153
    new-instance v1, Lcom/htc/android/mail/RequestController$UpdateMailHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;-><init>(Lcom/htc/android/mail/RequestController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mUpdateMailHandler:Landroid/os/Handler;

    .line 155
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/RequestController;->enableUICallback(Lcom/htc/android/mail/Account;)V

    .line 156
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$ProgressHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mProgressHandler:Lcom/htc/android/mail/RequestController$ProgressHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$SmtpThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/RequestController;Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/ssl/MailSslError;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/RequestController;->handleSslError(Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/ssl/MailSslError;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/RequestController;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mUnknowHostLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/RequestController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/android/mail/RequestController;->mMailNotFound:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/android/mail/RequestController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/htc/android/mail/RequestController;->mMailNotFound:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/RequestController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController;->setWifiRelease()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/RequestController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController;->setPowerRelease()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/android/mail/RequestController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController;->setActiveModeRelease()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$MainRequestQueueThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$RequestStackThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$RequestStackThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/android/mail/RequestController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/htc/android/mail/RequestController;->mAcceptCertificate:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/android/mail/RequestController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController;->redo()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/android/mail/RequestController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController;->resume()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/android/mail/RequestController;Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/RequestController;->checkSendErrorNotification(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    return-void
.end method

.method static synthetic access$2700()Lcom/htc/android/mail/RequestController;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/htc/android/mail/RequestController;->mRequestController:Lcom/htc/android/mail/RequestController;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/android/mail/RequestController;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/android/mail/RequestController;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/android/mail/RequestController;->mCurrentProgressStatusMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/AccountPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/android/mail/RequestController;Lcom/htc/android/mail/Account;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/RequestController;->clearSendErrorInOutbox(Lcom/htc/android/mail/Account;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/mail/RequestController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/htc/android/mail/RequestController;->mRedo:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/mail/RequestController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/htc/android/mail/RequestController;->mRedo:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/RequestController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController;->setWifiLock()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/mail/RequestController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController;->setPowerLock()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/mail/RequestController;Lcom/htc/android/mail/Request;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/htc/android/mail/RequestController;->setActiveMode(Lcom/htc/android/mail/Request;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;

    return-object v0
.end method

.method private broadcastDeleteMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "account"
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3482
    .local p3, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3483
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3484
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3485
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3486
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3487
    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/mail/MailRequestHandler;->onDeleteMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V

    .line 3484
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3491
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method private broadcastFetchMessageComplete(JI)V
    .locals 7
    .parameter "messageId"
    .parameter "done"

    .prologue
    .line 3550
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3551
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3552
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3553
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3554
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3555
    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/mail/MailRequestHandler;->onFetchMessageComplete(JI)V

    .line 3552
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3559
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method private broadcastMarkStarComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Lcom/htc/android/mail/MailMessage;Ljava/lang/Integer;)V
    .locals 7
    .parameter "account"
    .parameter "r"
    .parameter "message"
    .parameter "flag"

    .prologue
    .line 3458
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3459
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3460
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3461
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3462
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3463
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/htc/android/mail/MailRequestHandler;->onMarkStarComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Lcom/htc/android/mail/MailMessage;Ljava/lang/Integer;)V

    .line 3460
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3467
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method private broadcastSaveDraftComplete(Ljava/lang/String;J)V
    .locals 7
    .parameter "key"
    .parameter "messageId"

    .prologue
    .line 3538
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3539
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3540
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3541
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3542
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3543
    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/mail/MailRequestHandler;->onSaveDraftComplete(Ljava/lang/String;J)V

    .line 3540
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3547
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method private broadcastSetReadStatusComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 7
    .parameter "account"
    .parameter "r"
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3446
    .local p3, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3447
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3448
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3449
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3450
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3451
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/htc/android/mail/MailRequestHandler;->onSetReadStatusComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;Ljava/lang/Integer;)V

    .line 3448
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3455
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method private broadcastShowProgressForRefreshAndCheckMore(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V
    .locals 3
    .parameter "account"
    .parameter "request"

    .prologue
    .line 3318
    const/4 v0, -0x1

    .line 3319
    .local v0, what:I
    iget v1, p2, Lcom/htc/android/mail/Request;->command:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3320
    const/4 v0, 0x4

    .line 3324
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3325
    return-void

    .line 3322
    :cond_0
    const/16 v0, 0xe

    goto :goto_0
.end method

.method private checkSendErrorNotification(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    .locals 8
    .parameter "c"
    .parameter "account"

    .prologue
    .line 4355
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4364
    :cond_0
    :goto_0
    return-void

    .line 4356
    :cond_1
    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    iget-wide v6, v6, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/htc/android/mail/MailProvider;->getTotalMailNum(JIJ)I

    move-result v0

    .line 4357
    .local v0, num:I
    if-lez v0, :cond_2

    .line 4358
    new-instance v1, Lcom/htc/android/mail/SendErrorNotification;

    invoke-direct {v1, p1}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 4359
    .local v1, sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/htc/android/mail/SendErrorNotification;->showNotification(J)I

    goto :goto_0

    .line 4361
    .end local v1           #sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    :cond_2
    new-instance v2, Lcom/htc/android/mail/SendErrorNotification;

    invoke-direct {v2, p1}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 4362
    .local v2, sendnotify:Lcom/htc/android/mail/SendErrorNotification;
    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/SendErrorNotification;->clearNotification(J)I

    goto :goto_0
.end method

.method private clearSendErrorInOutbox(Lcom/htc/android/mail/Account;J)V
    .locals 4
    .parameter "account"
    .parameter "mailboxId"

    .prologue
    .line 3780
    const/4 v0, 0x0

    .line 3781
    .local v0, outbox:Lcom/htc/android/mail/Mailbox;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3782
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v0

    .line 3784
    :cond_0
    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 3785
    new-instance v1, Lcom/htc/android/mail/SendErrorNotification;

    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 3786
    .local v1, sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/SendErrorNotification;->clearNotification(J)I

    .line 3788
    .end local v1           #sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    :cond_1
    return-void
.end method

.method private emptyMailboxInternal(JJ)V
    .locals 7
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/16 v6, 0xa

    .line 1163
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1, p2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1164
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    .line 1166
    .local v2, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v2, :cond_0

    .line 1168
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    invoke-virtual {v4, p1, p2, v6}, Lcom/htc/android/mail/RequestController$RequestCollection;->containsCommand(JI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1170
    new-instance v3, Lcom/htc/android/mail/Request;

    invoke-direct {v3}, Lcom/htc/android/mail/Request;-><init>()V

    .line 1171
    .local v3, r:Lcom/htc/android/mail/Request;
    iput v6, v3, Lcom/htc/android/mail/Request;->command:I

    .line 1172
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1173
    .local v1, b:Landroid/os/Bundle;
    const-string v4, "Mailbox"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1174
    iput-object v1, v3, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 1175
    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 1177
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/android/mail/RequestController;->removeRequest(JJ)V

    .line 1178
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    invoke-virtual {v4, v3}, Lcom/htc/android/mail/RequestController$RequestCollection;->add(Lcom/htc/android/mail/Request;)V

    .line 1180
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mUpdateMailHandler:Landroid/os/Handler;

    iget v5, v3, Lcom/htc/android/mail/Request;->command:I

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mContextLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;

    monitor-exit v1

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mContextLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    monitor-exit v1

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;
    .locals 2
    .parameter "context"

    .prologue
    .line 125
    sget-object v0, Lcom/htc/android/mail/RequestController;->mRequestController:Lcom/htc/android/mail/RequestController;

    if-nez v0, :cond_1

    .line 126
    const-class v1, Lcom/htc/android/mail/RequestController;

    monitor-enter v1

    .line 127
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/RequestController;->mRequestController:Lcom/htc/android/mail/RequestController;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/htc/android/mail/RequestController;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/RequestController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/RequestController;->mRequestController:Lcom/htc/android/mail/RequestController;

    .line 130
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    sget-object v0, Lcom/htc/android/mail/RequestController;->mRequestController:Lcom/htc/android/mail/RequestController;

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleSslError(Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/ssl/MailSslError;)V
    .locals 6
    .parameter
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Lcom/htc/android/mail/ssl/MailSslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1621
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/mail/RequestController;->mAcceptCertificate:Z

    .line 1623
    new-instance v0, Lcom/htc/android/mail/RequestController$CertificateCallback;

    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/htc/android/mail/RequestController$CertificateCallback;-><init>(Landroid/content/Context;)V

    .line 1624
    .local v0, callback:Lcom/htc/android/mail/RequestController$CertificateCallback;
    invoke-virtual {v0, p2}, Lcom/htc/android/mail/RequestController$CertificateCallback;->setMailSslError(Lcom/htc/android/mail/ssl/MailSslError;)V

    .line 1625
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mAcceptCertificateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/RequestController$CertificateCallback;->setAcceptCertificateCallback(Ljava/lang/Runnable;)V

    .line 1626
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mRejectCertificateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/RequestController$CertificateCallback;->setRejectCertificateCallback(Ljava/lang/Runnable;)V

    .line 1627
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 1628
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 1629
    const/16 v2, 0xd1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1630
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1632
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mSuspendLock:Ljava/lang/Object;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 1638
    :cond_0
    return-void

    .line 1636
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1633
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isSameRequest(Lcom/htc/android/mail/Request;Lcom/htc/android/mail/Request;)Z
    .locals 11
    .parameter "queuedReq"
    .parameter "newReq"

    .prologue
    const/4 v10, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1229
    iget v6, p1, Lcom/htc/android/mail/Request;->command:I

    iget v7, p2, Lcom/htc/android/mail/Request;->command:I

    if-eq v6, v7, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return v4

    .line 1232
    :cond_1
    iget-object v6, p1, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v7, "Mailbox"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    .line 1233
    .local v3, runningMailbox:Lcom/htc/android/mail/Mailbox;
    iget-object v6, p2, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v7, "Mailbox"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/Mailbox;

    .line 1234
    .local v1, newMailbox:Lcom/htc/android/mail/Mailbox;
    iget-wide v6, v3, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v8, v1, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    move v4, v5

    .line 1235
    goto :goto_0

    .line 1239
    :cond_2
    invoke-virtual {p1}, Lcom/htc/android/mail/Request;->getAccount()Lcom/htc/android/mail/Account;

    move-result-object v2

    .line 1240
    .local v2, runningAccount:Lcom/htc/android/mail/Account;
    if-eqz v2, :cond_0

    .line 1241
    invoke-virtual {p2}, Lcom/htc/android/mail/Request;->getAccount()Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1242
    .local v0, newAccount:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_3

    move v4, v5

    goto :goto_0

    .line 1243
    :cond_3
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    if-ne v6, v10, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 1244
    invoke-virtual {v3}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 1245
    goto :goto_0
.end method

.method private isServerRefreshingInternal(Lcom/htc/android/mail/Account;)Z
    .locals 5
    .parameter "account"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3756
    if-nez p1, :cond_1

    .line 3776
    :cond_0
    :goto_0
    return v1

    .line 3758
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/mail/RequestController;->getRefreshCheckMoreNum(J)I

    move-result v3

    if-lez v3, :cond_3

    .line 3759
    sget-boolean v1, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "RequestController"

    const-string v3, "isServerRefreshing():Imap/POP3/Exchange server is refreshing"

    invoke-static {v1, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v1, v2

    .line 3760
    goto :goto_0

    .line 3763
    :cond_3
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 3764
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/htc/android/mail/server/ExchangeServer;->getMailboxRefreshing(J)Ljava/lang/String;

    move-result-object v0

    .line 3765
    .local v0, mailbox_server_id:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 3766
    sget-boolean v1, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 3767
    const-string v1, "RequestController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServerRefreshing():Exchange server is refreshing... mailbox server id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v1, v2

    .line 3770
    goto :goto_0

    .line 3772
    :cond_5
    sget-boolean v2, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RequestController"

    const-string v3, "isServerRefreshing():Exchange server is not refreshing..."

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private newActiveBinder()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mActiveModeBinder:Landroid/os/Binder;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController;->mActiveModeBinder:Landroid/os/Binder;

    .line 186
    :cond_0
    return-void
.end method

.method private redo()V
    .locals 1

    .prologue
    .line 1750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/RequestController;->mRedo:Z

    .line 1751
    return-void
.end method

.method private refreshOrCheckMoreMailInternal([Lcom/htc/android/mail/Request;)I
    .locals 18
    .parameter "requests"

    .prologue
    .line 1253
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v14, v0

    if-nez v14, :cond_1

    :cond_0
    const/4 v14, -0x1

    .line 1322
    :goto_0
    return v14

    .line 1254
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-virtual {v14}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->getRequestsInQueue()[Lcom/htc/android/mail/Request;

    move-result-object v1

    .line 1255
    .local v1, allRequestsInMain:[Lcom/htc/android/mail/Request;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1257
    .local v12, requestsNotToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Request;>;"
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Request;
    array-length v7, v2

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v2           #arr$:[Lcom/htc/android/mail/Request;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_a

    aget-object v10, v2, v5

    .line 1258
    .local v10, queuedReq:Lcom/htc/android/mail/Request;
    if-nez v10, :cond_3

    .line 1257
    .end local v5           #i$:I
    :cond_2
    :goto_2
    add-int/lit8 v4, v5, 0x1

    .restart local v4       #i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .line 1259
    :cond_3
    iget v14, v10, Lcom/htc/android/mail/Request;->command:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_4

    iget v14, v10, Lcom/htc/android/mail/Request;->command:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    .line 1261
    :cond_4
    const/4 v9, 0x1

    .line 1262
    .local v9, needRemove:Z
    move-object/from16 v3, p1

    .local v3, arr$:[Lcom/htc/android/mail/Request;
    array-length v8, v3

    .local v8, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v8, :cond_8

    aget-object v11, v3, v4

    .line 1263
    .local v11, r:Lcom/htc/android/mail/Request;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/htc/android/mail/RequestController;->isSameRequest(Lcom/htc/android/mail/Request;Lcom/htc/android/mail/Request;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1264
    const/4 v9, 0x0

    .line 1265
    iget-boolean v14, v11, Lcom/htc/android/mail/Request;->removeable:Z

    if-nez v14, :cond_5

    const/4 v14, 0x0

    iput-boolean v14, v10, Lcom/htc/android/mail/Request;->removeable:Z

    .line 1266
    :cond_5
    sget-boolean v14, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v14, :cond_6

    const-string v14, "RequestController"

    const-string v15, "queued request exists"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :cond_6
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    invoke-virtual {v11}, Lcom/htc/android/mail/Request;->callbackIfNotAdded()V

    .line 1262
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1271
    .end local v11           #r:Lcom/htc/android/mail/Request;
    :cond_8
    iget-boolean v14, v10, Lcom/htc/android/mail/Request;->removeable:Z

    if-eqz v14, :cond_2

    if-eqz v9, :cond_2

    .line 1272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    if-eqz v14, :cond_2

    .line 1273
    sget-boolean v14, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v14, :cond_9

    const-string v14, "RequestController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remove request: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    const/4 v15, 0x0

    invoke-virtual {v14, v10, v15}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->removeRequest(Lcom/htc/android/mail/Request;Z)V

    goto :goto_2

    .line 1279
    .end local v3           #arr$:[Lcom/htc/android/mail/Request;
    .end local v4           #i$:I
    .end local v8           #len$:I
    .end local v9           #needRemove:Z
    .end local v10           #queuedReq:Lcom/htc/android/mail/Request;
    .restart local v5       #i$:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-virtual {v14}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->getRunningRequest()Lcom/htc/android/mail/Request;

    move-result-object v13

    .line 1280
    .local v13, runningReq:Lcom/htc/android/mail/Request;
    if-eqz v13, :cond_13

    iget v14, v13, Lcom/htc/android/mail/Request;->command:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_b

    iget v14, v13, Lcom/htc/android/mail/Request;->command:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_13

    .line 1282
    :cond_b
    const/4 v9, 0x1

    .line 1283
    .restart local v9       #needRemove:Z
    move-object/from16 v2, p1

    .restart local v2       #arr$:[Lcom/htc/android/mail/Request;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_4
    if-ge v4, v7, :cond_12

    aget-object v11, v2, v4

    .line 1285
    .restart local v11       #r:Lcom/htc/android/mail/Request;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1286
    sget-boolean v14, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v14, :cond_c

    const-string v14, "RequestController"

    const-string v15, "already in the queue, don\'t need to check it with running request"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1291
    :cond_d
    iget-boolean v14, v13, Lcom/htc/android/mail/Request;->isStopped:Z

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lcom/htc/android/mail/RequestController;->isSameRequest(Lcom/htc/android/mail/Request;Lcom/htc/android/mail/Request;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1292
    const/4 v9, 0x0

    .line 1293
    iget-boolean v14, v11, Lcom/htc/android/mail/Request;->removeable:Z

    if-nez v14, :cond_e

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/htc/android/mail/Request;->removeable:Z

    .line 1294
    :cond_e
    sget-boolean v14, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v14, :cond_f

    const-string v14, "RequestController"

    const-string v15, "running request exists"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :cond_f
    const/4 v6, 0x0

    .line 1296
    .local v6, insertQueue:Z
    iget-object v14, v11, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    if-eqz v14, :cond_10

    .line 1298
    iget-object v14, v11, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v15, "isPushMail"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v6, 0x1

    .line 1300
    :cond_10
    if-nez v6, :cond_c

    .line 1301
    sget-boolean v14, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v14, :cond_11

    const-string v14, "RequestController"

    const-string v15, "don\'t add request since running request exists"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :cond_11
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    invoke-virtual {v11}, Lcom/htc/android/mail/Request;->callbackIfNotAdded()V

    goto :goto_5

    .line 1308
    .end local v6           #insertQueue:Z
    .end local v11           #r:Lcom/htc/android/mail/Request;
    :cond_12
    iget-boolean v14, v13, Lcom/htc/android/mail/Request;->removeable:Z

    if-eqz v14, :cond_13

    if-eqz v9, :cond_13

    .line 1309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    if-eqz v14, :cond_13

    .line 1310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    const/4 v15, 0x0

    invoke-virtual {v14, v13, v15}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->removeRequest(Lcom/htc/android/mail/Request;Z)V

    .line 1315
    .end local v2           #arr$:[Lcom/htc/android/mail/Request;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v9           #needRemove:Z
    :cond_13
    move-object/from16 v2, p1

    .restart local v2       #arr$:[Lcom/htc/android/mail/Request;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_6
    if-ge v4, v7, :cond_15

    aget-object v11, v2, v4

    .line 1316
    .restart local v11       #r:Lcom/htc/android/mail/Request;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 1317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    invoke-virtual {v14, v11}, Lcom/htc/android/mail/RequestController$RequestCollection;->add(Lcom/htc/android/mail/Request;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-virtual {v14, v11}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->addRequest(Lcom/htc/android/mail/Request;)V

    .line 1315
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1322
    .end local v11           #r:Lcom/htc/android/mail/Request;
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private removeNullWeakHandler(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3791
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3792
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 3793
    return-void
.end method

.method private resume()V
    .locals 2

    .prologue
    .line 1744
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1745
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1746
    monitor-exit v1

    .line 1747
    return-void

    .line 1746
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setActiveMode(Lcom/htc/android/mail/Request;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3002
    sget-boolean v0, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RequestController"

    const-string v1, "setActiveMode"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/htc/android/mail/Request;->isWifiActiveMode:Z

    if-eqz v0, :cond_1

    .line 3004
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3007
    :cond_1
    return-void
.end method

.method private setActiveModeRelease()V
    .locals 3

    .prologue
    .line 3010
    sget-boolean v1, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "RequestController"

    const-string v2, "setActiveModeRelease"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3013
    .local v0, wifimanager:Landroid/net/wifi/WifiManager;
    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mContextLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    if-nez p1, :cond_0

    .line 161
    :try_start_0
    monitor-exit v1

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;

    .line 166
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;

    .line 167
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPowerLock()V
    .locals 2

    .prologue
    .line 2996
    sget-boolean v0, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RequestController"

    const-string v1, "Power acquire"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController;->newPowerLock()V

    .line 2998
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2999
    :cond_2
    return-void
.end method

.method private setPowerRelease()V
    .locals 2

    .prologue
    .line 3016
    sget-boolean v0, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RequestController"

    const-string v1, "Power release"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3018
    :cond_1
    return-void
.end method

.method private setWifiLock()V
    .locals 2

    .prologue
    .line 2985
    sget-boolean v0, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RequestController"

    const-string v1, "Wifi acquire"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController;->newWifiLock()V

    .line 2987
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 2988
    :cond_2
    return-void
.end method

.method private setWifiRelease()V
    .locals 2

    .prologue
    .line 2991
    sget-boolean v0, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RequestController"

    const-string v1, "Wifi release"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2992
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2993
    :cond_1
    return-void
.end method

.method private showNotification(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 16
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 3169
    if-nez p1, :cond_1

    .line 3189
    :cond_0
    return-void

    .line 3170
    :cond_1
    if-eqz p2, :cond_0

    .line 3171
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    const/4 v14, 0x4

    if-eq v1, v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    const/16 v14, 0xa

    if-eq v1, v14, :cond_0

    .line 3173
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 3174
    .local v11, parameter:Landroid/os/Bundle;
    if-eqz v11, :cond_0

    .line 3175
    const-string v1, "Mailbox"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/Mailbox;

    .line 3176
    .local v10, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v10, :cond_0

    .line 3177
    invoke-virtual {v10}, Lcom/htc/android/mail/Mailbox;->needShowNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v14, "ServerSyncResults"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Lcom/htc/android/mail/server/Server$SyncResult;

    move-object v13, v1

    check-cast v13, [Lcom/htc/android/mail/server/Server$SyncResult;

    .line 3179
    .local v13, syncResults:[Lcom/htc/android/mail/server/Server$SyncResult;
    if-eqz v13, :cond_0

    .line 3180
    move-object v7, v13

    .local v7, arr$:[Lcom/htc/android/mail/server/Server$SyncResult;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v12, v7, v8

    .line 3181
    .local v12, syncResult:Lcom/htc/android/mail/server/Server$SyncResult;
    iget v4, v12, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    .line 3182
    .local v4, newUnreadMail:I
    iget-wide v5, v12, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageId:J

    .line 3183
    .local v5, messageId:J
    iget-wide v2, v12, Lcom/htc/android/mail/server/Server$SyncResult;->accountId:J

    .line 3184
    .local v2, accountId:J
    sget-boolean v1, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "RequestController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NewUnreadMail is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-static/range {v1 .. v6}, Lcom/htc/android/mail/NewMailNotification;->showNotificationInLine(Landroid/content/Context;JIJ)I

    .line 3180
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private syncMailToServerInternal(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 1130
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, p2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1131
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1133
    :cond_0
    new-instance v1, Lcom/htc/android/mail/Request;

    invoke-direct {v1}, Lcom/htc/android/mail/Request;-><init>()V

    .line 1134
    .local v1, r:Lcom/htc/android/mail/Request;
    const/16 v2, 0xb

    iput v2, v1, Lcom/htc/android/mail/Request;->command:I

    .line 1135
    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 1137
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/RequestController$RequestCollection;->add(Lcom/htc/android/mail/Request;)V

    .line 1138
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->addRequest(Lcom/htc/android/mail/Request;)V

    goto :goto_0
.end method


# virtual methods
.method public addRequest(Lcom/htc/android/mail/Request;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 1063
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 1064
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/RequestController$RequestCollection;->add(Lcom/htc/android/mail/Request;)V

    .line 1066
    iget v1, p1, Lcom/htc/android/mail/Request;->command:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/htc/android/mail/Request;->command:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1067
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "addRequest not support refresh or checkMore command"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1070
    :cond_1
    iget v0, p1, Lcom/htc/android/mail/Request;->command:I

    .line 1072
    .local v0, command:I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x201

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_4

    .line 1075
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/RequestController$RequestStackThread;->pushRequest(Lcom/htc/android/mail/Request;)V

    .line 1090
    .end local v0           #command:I
    :cond_3
    :goto_0
    return-void

    .line 1077
    .restart local v0       #command:I
    :cond_4
    const/16 v1, 0x67

    if-eq v0, v1, :cond_5

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1fe

    if-eq v0, v1, :cond_5

    const/16 v1, 0x200

    if-ne v0, v1, :cond_7

    .line 1081
    :cond_5
    sget-boolean v1, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "RequestController"

    const-string v2, "add request: IMAP_fetchPartByUid/EXCHG_fetchMailAttach"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_6
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/RequestController$RequestStackThread;->pushRequest(Lcom/htc/android/mail/Request;)V

    goto :goto_0

    .line 1087
    :cond_7
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->addRequest(Lcom/htc/android/mail/Request;)V

    goto :goto_0
.end method

.method public addWeakHandler(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1051
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_0
    return-void
.end method

.method public broadcastAttachmentDownloadChange(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V
    .locals 7
    .parameter "account"
    .parameter "msg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Landroid/os/Message;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3510
    .local p3, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 3511
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3512
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 3513
    .local v5, obj:Ljava/lang/Object;
    if-eq v5, p3, :cond_1

    .line 3512
    .end local v5           #obj:Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3514
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_1
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3515
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3516
    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/MailRequestHandler;->onAttachProgressChange(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    goto :goto_1

    .line 3520
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    return-void
.end method

.method public broadcastAttachmentDownloadComplete(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V
    .locals 7
    .parameter "account"
    .parameter "msg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Landroid/os/Message;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3524
    .local p3, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 3525
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3526
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 3527
    .local v5, obj:Ljava/lang/Object;
    if-eq v5, p3, :cond_1

    .line 3526
    .end local v5           #obj:Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3528
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_1
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3529
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3530
    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/MailRequestHandler;->onDownloadAttachComplete(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    goto :goto_1

    .line 3534
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    return-void
.end method

.method public broadcastAttachmentDownloadStart(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V
    .locals 7
    .parameter "account"
    .parameter "msg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Landroid/os/Message;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3496
    .local p3, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 3497
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3498
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 3499
    .local v5, obj:Ljava/lang/Object;
    if-eq v5, p3, :cond_1

    .line 3498
    .end local v5           #obj:Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3500
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_1
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3501
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3502
    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/MailRequestHandler;->onDownloadAttachStart(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    goto :goto_1

    .line 3506
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    return-void
.end method

.method public broadcastDoChangeAccount(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    .line 3382
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3383
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3384
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3385
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3386
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3387
    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/MailRequestHandler;->startChangeAccount(J)V

    .line 3384
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3391
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public broadcastDoChangeFolder()V
    .locals 7

    .prologue
    .line 3369
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3370
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3371
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3372
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3373
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3374
    invoke-virtual {v2}, Lcom/htc/android/mail/MailRequestHandler;->startDoChangeFolder()V

    .line 3371
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3378
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public broadcastDoComposeView()V
    .locals 7

    .prologue
    .line 3356
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3357
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3358
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3359
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3360
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3361
    invoke-virtual {v2}, Lcom/htc/android/mail/MailRequestHandler;->startDoComposeView()V

    .line 3358
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3365
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public broadcastMailSearch(Z)V
    .locals 7
    .parameter "token"

    .prologue
    .line 3395
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3396
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3397
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3398
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3399
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3400
    invoke-virtual {v2, p1}, Lcom/htc/android/mail/MailRequestHandler;->startMailSearch(Z)V

    .line 3397
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3404
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public broadcastMoveMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "account"
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3470
    .local p3, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3471
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3472
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3473
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3474
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3475
    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/mail/MailRequestHandler;->onMoveMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V

    .line 3472
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3479
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 10
    .parameter "account"
    .parameter "what"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 3192
    if-nez p1, :cond_1

    .line 3315
    :cond_0
    :goto_0
    return-void

    .line 3194
    :cond_1
    iget-object v7, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3195
    .local v0, allWeakHandler:[Ljava/lang/Object;
    packed-switch p2, :pswitch_data_0

    .line 3313
    :pswitch_0
    sget-boolean v7, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "RequestController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3197
    :pswitch_1
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/android/mail/RequestController;->mCurrentProgressStatusMsg:Landroid/os/Message;

    .line 3198
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/htc/android/mail/MailProvider;->updateAccountLastUpdateTime(J)I

    .line 3199
    invoke-direct {p0, p1, p3, p4}, Lcom/htc/android/mail/RequestController;->showNotification(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3200
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .local v5, obj:Ljava/lang/Object;
    move-object v6, v5

    .line 3201
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 3202
    .local v6, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 3203
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_3

    .line 3204
    sget-boolean v7, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "RequestController"

    const-string v8, "broadcastResult: handler != null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3205
    :cond_2
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2, p1, p3, p4}, Lcom/htc/android/mail/MailRequestHandler;->onRefreshComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3200
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3207
    .restart local v2       #handler:Landroid/os/Handler;
    :cond_3
    sget-boolean v7, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "RequestController"

    const-string v8, "broadcastResult: handler == null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    :cond_4
    invoke-direct {p0, v6}, Lcom/htc/android/mail/RequestController;->removeNullWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_2

    .line 3213
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :pswitch_2
    move-object v1, v0

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .restart local v5       #obj:Ljava/lang/Object;
    move-object v6, v5

    .line 3214
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 3215
    .restart local v6       #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 3216
    .restart local v2       #handler:Landroid/os/Handler;
    if-eqz v2, :cond_5

    .line 3217
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2, p1, p3}, Lcom/htc/android/mail/MailRequestHandler;->onShowProgressForRefresh(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V

    .line 3213
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3219
    .restart local v2       #handler:Landroid/os/Handler;
    :cond_5
    invoke-direct {p0, v6}, Lcom/htc/android/mail/RequestController;->removeNullWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_4

    .line 3224
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :pswitch_3
    move-object v1, v0

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_5
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .restart local v5       #obj:Ljava/lang/Object;
    move-object v6, v5

    .line 3225
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 3226
    .restart local v6       #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 3227
    .restart local v2       #handler:Landroid/os/Handler;
    if-eqz v2, :cond_6

    .line 3228
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2, p1, p3}, Lcom/htc/android/mail/MailRequestHandler;->onShowProgressForReadMoreMail(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V

    .line 3224
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3230
    .restart local v2       #handler:Landroid/os/Handler;
    :cond_6
    invoke-direct {p0, v6}, Lcom/htc/android/mail/RequestController;->removeNullWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_6

    .line 3235
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :pswitch_4
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/htc/android/mail/MailProvider;->updateAccountLastUpdateTime(J)I

    .line 3236
    move-object v1, v0

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_7
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .restart local v5       #obj:Ljava/lang/Object;
    move-object v6, v5

    .line 3237
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 3238
    .restart local v6       #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 3239
    .restart local v2       #handler:Landroid/os/Handler;
    if-eqz v2, :cond_7

    .line 3240
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2, p1, p3, p4}, Lcom/htc/android/mail/MailRequestHandler;->onCheckMoreComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3236
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3242
    .restart local v2       #handler:Landroid/os/Handler;
    :cond_7
    invoke-direct {p0, v6}, Lcom/htc/android/mail/RequestController;->removeNullWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_8

    .line 3247
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :pswitch_5
    move-object v1, v0

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_9
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .restart local v5       #obj:Ljava/lang/Object;
    move-object v6, v5

    .line 3248
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 3249
    .restart local v6       #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 3250
    .restart local v2       #handler:Landroid/os/Handler;
    if-eqz v2, :cond_8

    .line 3251
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2, p1, p3, p4}, Lcom/htc/android/mail/MailRequestHandler;->onListComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3247
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3253
    .restart local v2       #handler:Landroid/os/Handler;
    :cond_8
    invoke-direct {p0, v6}, Lcom/htc/android/mail/RequestController;->removeNullWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_a

    .line 3258
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :pswitch_6
    move-object v1, v0

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_b
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .restart local v5       #obj:Ljava/lang/Object;
    move-object v6, v5

    .line 3259
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 3260
    .restart local v6       #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 3261
    .restart local v2       #handler:Landroid/os/Handler;
    if-eqz v2, :cond_9

    .line 3262
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2, p1, p3, p4}, Lcom/htc/android/mail/MailRequestHandler;->onReloadMailList(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3258
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3264
    .restart local v2       #handler:Landroid/os/Handler;
    :cond_9
    invoke-direct {p0, v6}, Lcom/htc/android/mail/RequestController;->removeNullWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_c

    .line 3269
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :pswitch_7
    move-object v1, v0

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_d
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .restart local v5       #obj:Ljava/lang/Object;
    move-object v6, v5

    .line 3270
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 3271
    .restart local v6       #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 3272
    .restart local v2       #handler:Landroid/os/Handler;
    if-eqz v2, :cond_a

    .line 3273
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2, p1, p3, p4}, Lcom/htc/android/mail/MailRequestHandler;->onDeleteComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3269
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3275
    .restart local v2       #handler:Landroid/os/Handler;
    :cond_a
    invoke-direct {p0, v6}, Lcom/htc/android/mail/RequestController;->removeNullWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_e

    .line 3280
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :pswitch_8
    move-object v1, v0

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_f
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .restart local v5       #obj:Ljava/lang/Object;
    move-object v6, v5

    .line 3281
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 3282
    .restart local v6       #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 3283
    .restart local v2       #handler:Landroid/os/Handler;
    if-eqz v2, :cond_b

    .line 3284
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2, p1, p3, p4}, Lcom/htc/android/mail/MailRequestHandler;->onMoveComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3280
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3286
    .restart local v2       #handler:Landroid/os/Handler;
    :cond_b
    invoke-direct {p0, v6}, Lcom/htc/android/mail/RequestController;->removeNullWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_10

    .line 3291
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :pswitch_9
    move-object v1, v0

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_11
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .restart local v5       #obj:Ljava/lang/Object;
    move-object v6, v5

    .line 3292
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 3293
    .restart local v6       #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 3294
    .restart local v2       #handler:Landroid/os/Handler;
    if-eqz v2, :cond_c

    .line 3295
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2, p1, p3, p4}, Lcom/htc/android/mail/MailRequestHandler;->onFetchImapAllComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3291
    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 3297
    .restart local v2       #handler:Landroid/os/Handler;
    :cond_c
    invoke-direct {p0, v6}, Lcom/htc/android/mail/RequestController;->removeNullWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_12

    .line 3302
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :pswitch_a
    move-object v1, v0

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_13
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .restart local v5       #obj:Ljava/lang/Object;
    move-object v6, v5

    .line 3303
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 3304
    .restart local v6       #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 3305
    .restart local v2       #handler:Landroid/os/Handler;
    if-eqz v2, :cond_d

    .line 3306
    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .end local v2           #handler:Landroid/os/Handler;
    invoke-virtual {v2, p1, p3, p4}, Lcom/htc/android/mail/MailRequestHandler;->onFetchAllComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3302
    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3308
    .restart local v2       #handler:Landroid/os/Handler;
    :cond_d
    invoke-direct {p0, v6}, Lcom/htc/android/mail/RequestController;->removeNullWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_14

    .line 3195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public broadcastSearchFilterChanged()V
    .locals 7

    .prologue
    .line 3421
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3422
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3423
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3424
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3425
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3426
    invoke-virtual {v2}, Lcom/htc/android/mail/MailRequestHandler;->searchFilterChanged()V

    .line 3423
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3430
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public broadcastSetSortComplete(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V
    .locals 7
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3329
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 3330
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3331
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 3332
    .local v5, obj:Ljava/lang/Object;
    if-ne v5, p2, :cond_1

    .line 3331
    .end local v5           #obj:Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3333
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_1
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3334
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3335
    invoke-virtual {v2, p1}, Lcom/htc/android/mail/MailRequestHandler;->onSetSortComplete(Lcom/htc/android/mail/Account;)V

    goto :goto_1

    .line 3339
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    return-void
.end method

.method public broadcastShowMenu()V
    .locals 7

    .prologue
    .line 3408
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3409
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3410
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3411
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3412
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3413
    invoke-virtual {v2}, Lcom/htc/android/mail/MailRequestHandler;->showMenu()V

    .line 3410
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3417
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public broadcastTagChanged(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V
    .locals 7
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3343
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3344
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3345
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3346
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3347
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3348
    invoke-virtual {v2, p1}, Lcom/htc/android/mail/MailRequestHandler;->onTagChanged(Lcom/htc/android/mail/Account;)V

    .line 3345
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3352
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public checkCommand(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/Request;)Z
    .locals 6
    .parameter "account"
    .parameter
    .parameter "req"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Lcom/htc/android/mail/Request;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const/4 v4, 0x0

    .line 3109
    const/4 v1, 0x0

    .line 3110
    .local v1, isBroadcastOrHandle:Z
    if-nez p3, :cond_0

    move v2, v1

    .line 3165
    .end local v1           #isBroadcastOrHandle:Z
    .local v2, isBroadcastOrHandle:I
    :goto_0
    return v2

    .line 3112
    .end local v2           #isBroadcastOrHandle:I
    .restart local v1       #isBroadcastOrHandle:Z
    :cond_0
    const/4 v0, 0x0

    .line 3113
    .local v0, handler:Landroid/os/Handler;
    if-eqz p2, :cond_1

    .line 3114
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #handler:Landroid/os/Handler;
    check-cast v0, Landroid/os/Handler;

    .line 3117
    .restart local v0       #handler:Landroid/os/Handler;
    :cond_1
    iget v3, p3, Lcom/htc/android/mail/Request;->command:I

    packed-switch v3, :pswitch_data_0

    .line 3162
    .end local v0           #handler:Landroid/os/Handler;
    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_3

    .line 3163
    sget-boolean v3, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3164
    const-string v3, "RequestController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCommand, command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Lcom/htc/android/mail/Request;->command:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is broadcasted or handled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v2, v1

    .line 3165
    .restart local v2       #isBroadcastOrHandle:I
    goto :goto_0

    .line 3119
    .end local v2           #isBroadcastOrHandle:I
    .restart local v0       #handler:Landroid/os/Handler;
    :pswitch_1
    if-nez p2, :cond_5

    .line 3120
    const/4 v3, 0x4

    invoke-virtual {p0, p1, v3, p3, v4}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3148
    .end local v0           #handler:Landroid/os/Handler;
    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 3149
    goto :goto_1

    .line 3129
    .restart local v0       #handler:Landroid/os/Handler;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/RequestController;->isServerRefreshing(Lcom/htc/android/mail/Account;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3131
    if-eqz v0, :cond_6

    move-object v3, v0

    .line 3132
    check-cast v3, Lcom/htc/android/mail/MailRequestHandler;

    invoke-virtual {v3, p1, p3}, Lcom/htc/android/mail/MailRequestHandler;->onShowProgressForRefresh(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V

    .line 3142
    :cond_6
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mCurrentProgressStatusMsg:Landroid/os/Message;

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/htc/android/mail/RequestController;->isServerRefreshing(Lcom/htc/android/mail/Account;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3143
    if-eqz v0, :cond_4

    .line 3144
    check-cast v0, Lcom/htc/android/mail/MailRequestHandler;

    .end local v0           #handler:Landroid/os/Handler;
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mCurrentProgressStatusMsg:Landroid/os/Message;

    invoke-virtual {v0, p1, v3}, Lcom/htc/android/mail/MailRequestHandler;->onUpdateProgressStatus(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    goto :goto_2

    .line 3151
    .restart local v0       #handler:Landroid/os/Handler;
    :pswitch_2
    if-nez p2, :cond_8

    .line 3152
    const/16 v3, 0xe

    invoke-virtual {p0, p1, v3, p3, v4}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3158
    .end local v0           #handler:Landroid/os/Handler;
    :cond_7
    :goto_3
    const/4 v1, 0x1

    goto :goto_1

    .line 3154
    .restart local v0       #handler:Landroid/os/Handler;
    :cond_8
    if-eqz v0, :cond_7

    .line 3155
    check-cast v0, Lcom/htc/android/mail/MailRequestHandler;

    .end local v0           #handler:Landroid/os/Handler;
    invoke-virtual {v0, p1, p3}, Lcom/htc/android/mail/MailRequestHandler;->onShowProgressForReadMoreMail(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V

    goto :goto_3

    .line 3117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public checkIncomingAccount(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    .locals 7
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const/4 v3, 0x0

    .line 2378
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/server/ServerPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;

    move-result-object v2

    .line 2380
    .local v2, serverpool:Lcom/htc/android/mail/server/ServerPool;
    const/4 v1, 0x1

    .line 2381
    .local v1, redo:Z
    :goto_0
    iget-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    .line 2382
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lcom/htc/android/mail/server/ServerPool;->getServer(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/server/Server;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2384
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v4}, Lcom/htc/android/mail/server/Server;->checkNewAccount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2385
    const/4 v1, 0x0

    .line 2386
    const/4 v4, 0x1

    .line 2403
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2404
    :try_start_1
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    if-eqz v6, :cond_1

    .line 2405
    iget-boolean v6, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-eqz v6, :cond_0

    .line 2406
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 2407
    monitor-exit v5

    .line 2417
    :goto_1
    return v3

    .line 2409
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2410
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    const/4 v6, 0x0

    iput v6, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2411
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2413
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move v3, v4

    .line 2386
    goto :goto_1

    .line 2387
    :catch_0
    move-exception v0

    .line 2388
    .local v0, e:Ljava/security/cert/CertificateException;
    :try_start_2
    iget-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-nez v4, :cond_2

    .line 2389
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v4}, Lcom/htc/android/mail/server/Server;->getSslError()Lcom/htc/android/mail/ssl/MailSslError;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/htc/android/mail/RequestController;->handleSslError(Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/ssl/MailSslError;)V

    .line 2390
    iget-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mAcceptCertificate:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_3

    .line 2391
    const/4 v1, 0x1

    .line 2403
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2404
    :try_start_3
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_8

    .line 2405
    iget-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-eqz v5, :cond_7

    .line 2406
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 2407
    monitor-exit v4

    goto :goto_1

    .line 2413
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2393
    :cond_3
    const/4 v1, 0x0

    .line 2403
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2404
    :try_start_4
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_a

    .line 2405
    iget-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-eqz v5, :cond_9

    .line 2406
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 2407
    monitor-exit v4

    goto :goto_1

    .line 2413
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 2397
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 2398
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    iget-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-nez v4, :cond_b

    .line 2399
    const-string v4, "RequestController"

    const-string v5, "catch exceptin"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2400
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2403
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2404
    :try_start_6
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    if-eqz v6, :cond_5

    .line 2405
    iget-boolean v6, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-eqz v6, :cond_4

    .line 2406
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 2407
    monitor-exit v5

    goto :goto_1

    .line 2413
    :catchall_3
    move-exception v3

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    .line 2409
    :cond_4
    :try_start_7
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2410
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    const/4 v6, 0x0

    iput v6, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2411
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2413
    :cond_5
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2403
    throw v4

    .line 2416
    :cond_6
    iput-boolean v3, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    goto :goto_1

    .line 2409
    .local v0, e:Ljava/security/cert/CertificateException;
    :cond_7
    :try_start_8
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2410
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    const/4 v6, 0x0

    iput v6, v5, Lcom/htc/android/mail/server/Server;->state:I

    .line 2411
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2413
    :cond_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 2409
    :cond_9
    :try_start_9
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2410
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    const/4 v6, 0x0

    iput v6, v5, Lcom/htc/android/mail/server/Server;->state:I

    .line 2411
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2413
    :cond_a
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    .line 2403
    .local v0, e:Ljava/lang/Exception;
    :cond_b
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2404
    :try_start_a
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_d

    .line 2405
    iget-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-eqz v5, :cond_c

    .line 2406
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 2407
    monitor-exit v4

    goto/16 :goto_1

    .line 2413
    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v3

    .line 2409
    :cond_c
    :try_start_b
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2410
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    const/4 v6, 0x0

    iput v6, v5, Lcom/htc/android/mail/server/Server;->state:I

    .line 2411
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2413
    :cond_d
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_5
    move-exception v3

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v3
.end method

.method public checkOutgoingAccount(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    .locals 7
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const/4 v3, 0x0

    .line 2336
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/server/ServerPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;

    move-result-object v2

    .line 2338
    .local v2, serverpool:Lcom/htc/android/mail/server/ServerPool;
    const/4 v1, 0x1

    .line 2339
    .local v1, redo:Z
    :goto_0
    iget-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    .line 2340
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lcom/htc/android/mail/server/ServerPool;->getSmtpServer(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/server/Server;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2342
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v4}, Lcom/htc/android/mail/server/Server;->checkNewAccount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2343
    const/4 v1, 0x0

    .line 2344
    const/4 v4, 0x1

    .line 2360
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2361
    :try_start_1
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    if-eqz v6, :cond_1

    .line 2362
    iget-boolean v6, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-eqz v6, :cond_0

    .line 2363
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 2364
    monitor-exit v5

    .line 2374
    :goto_1
    return v3

    .line 2366
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2367
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    const/4 v6, 0x0

    iput v6, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2368
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2370
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move v3, v4

    .line 2344
    goto :goto_1

    .line 2345
    :catch_0
    move-exception v0

    .line 2346
    .local v0, e:Ljava/security/cert/CertificateException;
    :try_start_2
    iget-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-nez v4, :cond_2

    .line 2347
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v4}, Lcom/htc/android/mail/server/Server;->getSslError()Lcom/htc/android/mail/ssl/MailSslError;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/htc/android/mail/RequestController;->handleSslError(Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/ssl/MailSslError;)V

    .line 2348
    iget-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mAcceptCertificate:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_3

    .line 2349
    const/4 v1, 0x1

    .line 2360
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2361
    :try_start_3
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_8

    .line 2362
    iget-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-eqz v5, :cond_7

    .line 2363
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 2364
    monitor-exit v4

    goto :goto_1

    .line 2370
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2351
    :cond_3
    const/4 v1, 0x0

    .line 2360
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2361
    :try_start_4
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_a

    .line 2362
    iget-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-eqz v5, :cond_9

    .line 2363
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 2364
    monitor-exit v4

    goto :goto_1

    .line 2370
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 2355
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 2356
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    iget-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-nez v4, :cond_b

    .line 2357
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2360
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2361
    :try_start_6
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    if-eqz v6, :cond_5

    .line 2362
    iget-boolean v6, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-eqz v6, :cond_4

    .line 2363
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 2364
    monitor-exit v5

    goto :goto_1

    .line 2370
    :catchall_3
    move-exception v3

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    .line 2366
    :cond_4
    :try_start_7
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2367
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    const/4 v6, 0x0

    iput v6, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2368
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2370
    :cond_5
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2360
    throw v4

    .line 2373
    :cond_6
    iput-boolean v3, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    goto :goto_1

    .line 2366
    .local v0, e:Ljava/security/cert/CertificateException;
    :cond_7
    :try_start_8
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2367
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    const/4 v6, 0x0

    iput v6, v5, Lcom/htc/android/mail/server/Server;->state:I

    .line 2368
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2370
    :cond_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 2366
    :cond_9
    :try_start_9
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2367
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    const/4 v6, 0x0

    iput v6, v5, Lcom/htc/android/mail/server/Server;->state:I

    .line 2368
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2370
    :cond_a
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    .line 2360
    .local v0, e:Ljava/lang/Exception;
    :cond_b
    iget-object v4, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2361
    :try_start_a
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_d

    .line 2362
    iget-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    if-eqz v5, :cond_c

    .line 2363
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 2364
    monitor-exit v4

    goto/16 :goto_1

    .line 2370
    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v3

    .line 2366
    :cond_c
    :try_start_b
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2367
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    const/4 v6, 0x0

    iput v6, v5, Lcom/htc/android/mail/server/Server;->state:I

    .line 2368
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2370
    :cond_d
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_5
    move-exception v3

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v3
.end method

.method public checkRequestStatus(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V
    .locals 10
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const-wide v8, 0x7fffffffffffffffL

    const/4 v7, 0x0

    .line 3041
    if-nez p1, :cond_1

    .line 3051
    :cond_0
    :goto_0
    return-void

    .line 3042
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-nez v5, :cond_4

    .line 3043
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 3044
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 3045
    .local v0, a:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-nez v5, :cond_3

    .line 3044
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3046
    :cond_3
    invoke-virtual {p0, v0, p2, v7}, Lcom/htc/android/mail/RequestController;->getAllRequestStatus(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/Request;)V

    goto :goto_2

    .line 3049
    .end local v0           #a:Lcom/htc/android/mail/Account;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    invoke-virtual {p0, p1, p2, v7}, Lcom/htc/android/mail/RequestController;->getAllRequestStatus(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/Request;)V

    goto :goto_0
.end method

.method public deleteMail(Lcom/htc/android/mail/Request;)V
    .locals 18
    .parameter "r"

    .prologue
    .line 1460
    if-nez p1, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Request;->getAccount()Lcom/htc/android/mail/Account;

    move-result-object v2

    .line 1463
    .local v2, account:Lcom/htc/android/mail/Account;
    if-eqz v2, :cond_0

    .line 1465
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/htc/android/mail/RequestController$RequestCollection;->add(Lcom/htc/android/mail/Request;)V

    .line 1467
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 1468
    .local v13, parameter:Landroid/os/Bundle;
    const-string v14, "Mailbox"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/Mailbox;

    .line 1469
    .local v10, mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v14, "MailMessageList"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1471
    .local v9, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    if-eqz v9, :cond_3

    .line 1472
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v11, v14, [J

    .line 1473
    .local v11, messageIdArray:[J
    sget-object v14, Lcom/htc/android/mail/RequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v15, "DELETE"

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v12

    .line 1474
    .local v12, messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    new-instance v4, Ljava/lang/Integer;

    const/4 v14, 0x1

    invoke-direct {v4, v14}, Ljava/lang/Integer;-><init>(I)V

    .line 1475
    .local v4, deleted:Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 1476
    .local v5, i:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/MailMessage;

    .line 1477
    .local v8, mailMessage:Lcom/htc/android/mail/MailMessage;
    iget-wide v14, v8, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->putLocal(JI)V

    .line 1478
    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .local v6, i:I
    iget-wide v14, v8, Lcom/htc/android/mail/MailMessage;->id:J

    aput-wide v14, v11, v5

    .line 1481
    invoke-static {v8}, Lcom/htc/android/mail/ReadScreen$MessageIds;->delete(Lcom/htc/android/mail/MailMessage;)V

    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_1

    .line 1485
    .end local v8           #mailMessage:Lcom/htc/android/mail/MailMessage;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v9}, Lcom/htc/android/mail/RequestController;->broadcastDeleteMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V

    .line 1487
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    .line 1488
    .local v3, defaultMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v3, :cond_3

    iget-wide v14, v10, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v0, v3, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    .line 1489
    const-string v14, "messageIdArray"

    invoke-virtual {v13, v14, v11}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1492
    .end local v3           #defaultMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v4           #deleted:Ljava/lang/Integer;
    .end local v5           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #messageIdArray:[J
    .end local v12           #messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mUpdateMailHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/Request;->command:I

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public deleteMailOnServer(JJLjava/lang/String;)V
    .locals 4
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "uid"

    .prologue
    .line 1098
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1099
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_accountId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1100
    const-string v2, "_messageId"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1101
    const-string v2, "_request"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1102
    const-string v2, "_fromMailboxId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1103
    const-string v2, "_uid"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1106
    new-instance v0, Lcom/htc/android/mail/Request;

    invoke-direct {v0}, Lcom/htc/android/mail/Request;-><init>()V

    .line 1107
    .local v0, r:Lcom/htc/android/mail/Request;
    const/16 v2, 0x9

    iput v2, v0, Lcom/htc/android/mail/Request;->command:I

    .line 1109
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/RequestController$RequestCollection;->add(Lcom/htc/android/mail/Request;)V

    .line 1110
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->addRequest(Lcom/htc/android/mail/Request;)V

    .line 1111
    return-void
.end method

.method public deleteOldDraft(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "account"
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1497
    .local p3, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1507
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    new-instance v1, Lcom/htc/android/mail/Request;

    invoke-direct {v1}, Lcom/htc/android/mail/Request;-><init>()V

    .line 1499
    .local v1, r:Lcom/htc/android/mail/Request;
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 1500
    const/4 v2, 0x4

    iput v2, v1, Lcom/htc/android/mail/Request;->command:I

    .line 1501
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1502
    .local v0, bundle:Landroid/os/Bundle;
    iput-object v0, v1, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 1503
    iget-object v2, v1, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v3, "Mailbox"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1504
    iget-object v2, v1, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v3, "MailMessageList"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1505
    iget-object v2, v1, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v3, "IsOldDraft"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1506
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/RequestController;->deleteMail(Lcom/htc/android/mail/Request;)V

    goto :goto_0
.end method

.method public declared-synchronized disableUICallback(Lcom/htc/android/mail/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 247
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 248
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mEASCallbacks:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/RequestController$EASCallback;

    .line 249
    .local v0, callback:Lcom/htc/android/mail/RequestController$EASCallback;
    if-eqz v0, :cond_0

    .line 250
    invoke-static {v0}, Lcom/htc/android/mail/server/ExchangeServer;->unregisterCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V

    .line 251
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mEASCallbacks:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/util/SparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v0           #callback:Lcom/htc/android/mail/RequestController$EASCallback;
    :cond_0
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public doLaunchAccountList()V
    .locals 7

    .prologue
    .line 3434
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3435
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3436
    .local v0, allHandler:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3437
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3438
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_0

    .line 3439
    invoke-virtual {v2}, Lcom/htc/android/mail/MailRequestHandler;->startDoLaunchAccountList()V

    .line 3436
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3443
    .end local v0           #allHandler:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public emptyMailbox(JJ)V
    .locals 14
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 1143
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, p1, v10

    if-nez v10, :cond_4

    .line 1144
    iget-object v10, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v11, p0, Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;

    move-wide v0, p1

    invoke-virtual {v10, v11, v0, v1}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v5

    .line 1145
    .local v5, combinedAccount:Lcom/htc/android/mail/Account;
    if-nez v5, :cond_1

    .line 1160
    .end local v5           #combinedAccount:Lcom/htc/android/mail/Account;
    :cond_0
    :goto_0
    return-void

    .line 1146
    .restart local v5       #combinedAccount:Lcom/htc/android/mail/Account;
    :cond_1
    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v10

    move-wide/from16 v0, p3

    invoke-virtual {v10, v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    .line 1147
    .local v6, combinedMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v6, :cond_0

    .line 1149
    iget-object v10, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v11, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 1151
    .local v3, accounts:[Lcom/htc/android/mail/Account;
    move-object v4, v3

    .local v4, arr$:[Lcom/htc/android/mail/Account;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v2, v4, v7

    .line 1152
    .local v2, a:Lcom/htc/android/mail/Account;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 1151
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1153
    :cond_3
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v10

    iget v11, v6, Lcom/htc/android/mail/Mailbox;->kind:I

    invoke-virtual {v10, v11}, Lcom/htc/android/mail/Mailboxs;->getMailboxByKind(I)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    .line 1154
    .local v9, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v9, :cond_2

    .line 1155
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    iget-wide v12, v9, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/htc/android/mail/RequestController;->emptyMailboxInternal(JJ)V

    goto :goto_2

    .line 1158
    .end local v2           #a:Lcom/htc/android/mail/Account;
    .end local v3           #accounts:[Lcom/htc/android/mail/Account;
    .end local v4           #arr$:[Lcom/htc/android/mail/Account;
    .end local v5           #combinedAccount:Lcom/htc/android/mail/Account;
    .end local v6           #combinedMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #mailbox:Lcom/htc/android/mail/Mailbox;
    :cond_4
    invoke-direct/range {p0 .. p4}, Lcom/htc/android/mail/RequestController;->emptyMailboxInternal(JJ)V

    goto :goto_0
.end method

.method public declared-synchronized enableUICallback(Lcom/htc/android/mail/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 215
    monitor-enter p0

    if-nez p1, :cond_2

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mEASCallbacks:Lcom/htc/android/mail/util/SparseArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/RequestController$EASCallback;

    .line 217
    .local v0, callback:Lcom/htc/android/mail/RequestController$EASCallback;
    if-nez v0, :cond_1

    .line 218
    new-instance v0, Lcom/htc/android/mail/RequestController$EASCallback;

    .end local v0           #callback:Lcom/htc/android/mail/RequestController$EASCallback;
    invoke-direct {v0, p0, p1}, Lcom/htc/android/mail/RequestController$EASCallback;-><init>(Lcom/htc/android/mail/RequestController;Lcom/htc/android/mail/Account;)V

    .line 219
    .restart local v0       #callback:Lcom/htc/android/mail/RequestController$EASCallback;
    sget-boolean v2, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RequestController"

    const-string v3, "Register EAS Callback for account: GLOBAL"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/htc/android/mail/server/ExchangeServer;->registerCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;Landroid/content/Context;)V

    .line 221
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mEASCallbacks:Lcom/htc/android/mail/util/SparseArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v0           #callback:Lcom/htc/android/mail/RequestController$EASCallback;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :cond_2
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 224
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mEASCallbacks:Lcom/htc/android/mail/util/SparseArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/RequestController$EASCallback;

    .line 225
    .local v1, callbackGlobal:Lcom/htc/android/mail/RequestController$EASCallback;
    if-eqz v1, :cond_4

    .line 226
    sget-boolean v2, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "RequestController"

    const-string v3, "Unregister EAS Callback for account: GLOBAL"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_3
    invoke-static {v1}, Lcom/htc/android/mail/server/ExchangeServer;->unregisterCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V

    .line 228
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mEASCallbacks:Lcom/htc/android/mail/util/SparseArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/util/SparseArray;->remove(J)V

    .line 229
    const/4 v1, 0x0

    .line 232
    :cond_4
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mEASCallbacks:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/RequestController$EASCallback;

    .line 233
    .restart local v0       #callback:Lcom/htc/android/mail/RequestController$EASCallback;
    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lcom/htc/android/mail/RequestController$EASCallback;

    .end local v0           #callback:Lcom/htc/android/mail/RequestController$EASCallback;
    invoke-direct {v0, p0, p1}, Lcom/htc/android/mail/RequestController$EASCallback;-><init>(Lcom/htc/android/mail/RequestController;Lcom/htc/android/mail/Account;)V

    .line 235
    .restart local v0       #callback:Lcom/htc/android/mail/RequestController$EASCallback;
    sget-boolean v2, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "RequestController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register EAS Callback for account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/htc/android/mail/server/ExchangeServer;->registerCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;Landroid/content/Context;)V

    .line 237
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mEASCallbacks:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    .end local v0           #callback:Lcom/htc/android/mail/RequestController$EASCallback;
    .end local v1           #callbackGlobal:Lcom/htc/android/mail/RequestController$EASCallback;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public fetchMessageAgain(JJLjava/lang/String;Lcom/htc/android/mail/Mailbox;Ljava/lang/ref/WeakReference;)V
    .locals 3
    .parameter "accountId"
    .parameter "messageId"
    .parameter "uid"
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3797
    .local p7, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    new-instance v1, Lcom/htc/android/mail/Request;

    invoke-direct {v1}, Lcom/htc/android/mail/Request;-><init>()V

    .line 3798
    .local v1, r:Lcom/htc/android/mail/Request;
    iput-object p7, v1, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 3799
    const/4 v2, 0x7

    iput v2, v1, Lcom/htc/android/mail/Request;->command:I

    .line 3800
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3801
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "Mailbox"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3802
    const-string v2, "Uid"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3803
    const-string v2, "MsgId"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3804
    iput-object v0, v1, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 3805
    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 3806
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/RequestController;->addRequest(Lcom/htc/android/mail/Request;)V

    .line 3807
    return-void
.end method

.method public fetchMessageDone(JI)V
    .locals 2
    .parameter "messageId"
    .parameter "done"

    .prologue
    .line 3844
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mFetchStatus:Lcom/htc/android/mail/RequestController$FetchStatus;

    monitor-enter v1

    .line 3845
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mFetchStatus:Lcom/htc/android/mail/RequestController$FetchStatus;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$FetchStatus;->fetchDone(J)V

    .line 3846
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3847
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/RequestController;->broadcastFetchMessageComplete(JI)V

    .line 3848
    return-void

    .line 3846
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAllRequestStatus(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/Request;)V
    .locals 11
    .parameter "account"
    .parameter
    .parameter "req"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Lcom/htc/android/mail/Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3069
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    if-nez p1, :cond_1

    .line 3106
    :cond_0
    :goto_0
    return-void

    .line 3071
    :cond_1
    if-eqz p3, :cond_2

    .line 3072
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/android/mail/RequestController;->checkCommand(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/Request;)Z

    goto :goto_0

    .line 3076
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    invoke-virtual {v7}, Lcom/htc/android/mail/RequestController$RequestCollection;->getAllRequests()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 3077
    if-eqz p1, :cond_3

    .line 3078
    sget-boolean v7, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 3079
    const-string v7, "RequestController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllRequestStatus for account: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", There are "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    invoke-virtual {v9}, Lcom/htc/android/mail/RequestController$RequestCollection;->getAllRequests()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Requests in the queue..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    :cond_3
    iget-object v7, p0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    invoke-virtual {v7}, Lcom/htc/android/mail/RequestController$RequestCollection;->getAllRequests()Ljava/util/Vector;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/htc/android/mail/Request;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/Request;

    .line 3083
    .local v0, allReq:[Lcom/htc/android/mail/Request;
    move-object v1, v0

    .local v1, arr$:[Lcom/htc/android/mail/Request;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v5, v1, v2

    .line 3084
    .local v5, r:Lcom/htc/android/mail/Request;
    sget-boolean v7, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "RequestController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/htc/android/mail/Request;->command:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    :cond_4
    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    invoke-virtual {p0, p1, p2, v5}, Lcom/htc/android/mail/RequestController;->checkCommand(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/Request;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3083
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3092
    .end local v0           #allReq:[Lcom/htc/android/mail/Request;
    .end local v1           #arr$:[Lcom/htc/android/mail/Request;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #r:Lcom/htc/android/mail/Request;
    :cond_6
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 3093
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/htc/android/mail/server/ExchangeServer;->getMailboxRefreshing(J)Ljava/lang/String;

    move-result-object v4

    .line 3094
    .local v4, mailbox_server_id:Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 3095
    sget-boolean v7, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 3096
    const-string v7, "RequestController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exchange server is refreshing... mailbox server id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    :cond_7
    new-instance v6, Lcom/htc/android/mail/Request;

    invoke-direct {v6}, Lcom/htc/android/mail/Request;-><init>()V

    .line 3099
    .local v6, request:Lcom/htc/android/mail/Request;
    const/4 v7, 0x1

    iput v7, v6, Lcom/htc/android/mail/Request;->command:I

    .line 3100
    invoke-virtual {p0, p1, p2, v6}, Lcom/htc/android/mail/RequestController;->checkCommand(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/Request;)Z

    goto/16 :goto_0

    .line 3103
    .end local v6           #request:Lcom/htc/android/mail/Request;
    :cond_8
    sget-boolean v7, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "RequestController"

    const-string v8, "Exchange server is not refreshing..."

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getDraftStatus(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 3867
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mDraftStatus:Lcom/htc/android/mail/RequestController$DraftStatus;

    monitor-enter v1

    .line 3868
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mDraftStatus:Lcom/htc/android/mail/RequestController$DraftStatus;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/RequestController$DraftStatus;->getStatus(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3869
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRefreshCheckMoreNum(J)I
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$RequestCollection;->getRefreshCheckMoreRequests(J)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public isNeedToFetch(J)Z
    .locals 11
    .parameter "messageId"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3811
    const/4 v8, 0x0

    .line 3812
    .local v8, needToFetch:Z
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mFetchStatus:Lcom/htc/android/mail/RequestController$FetchStatus;

    monitor-enter v1

    .line 3813
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mFetchStatus:Lcom/htc/android/mail/RequestController$FetchStatus;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$FetchStatus;->isNeedToFetch(J)Z

    move-result v8

    .line 3814
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3815
    if-eqz v8, :cond_0

    .line 3816
    const-string v3, "_id = ?"

    .line 3817
    .local v3, where:Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 3818
    .local v4, args:[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_done"

    aput-object v0, v2, v9

    .line 3819
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3820
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 3821
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3822
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3823
    .local v7, done:I
    if-ne v7, v10, :cond_1

    move v8, v9

    .line 3827
    .end local v7           #done:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3832
    :goto_1
    if-nez v8, :cond_0

    .line 3833
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mFetchStatus:Lcom/htc/android/mail/RequestController$FetchStatus;

    monitor-enter v1

    .line 3834
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mFetchStatus:Lcom/htc/android/mail/RequestController$FetchStatus;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$FetchStatus;->fetchDone(J)V

    .line 3835
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3839
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    return v8

    .line 3814
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #args:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #done:I
    :cond_1
    move v8, v10

    .line 3823
    goto :goto_0

    .line 3825
    .end local v7           #done:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 3829
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 3835
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public isSending(Lcom/htc/android/mail/Account;)Z
    .locals 5
    .parameter "account"

    .prologue
    const/4 v2, 0x1

    .line 1770
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1772
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isSendingMail(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1782
    :cond_0
    :goto_0
    return v2

    .line 1773
    :catch_0
    move-exception v1

    .line 1774
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1775
    const/4 v0, 0x0

    .local v0, bRes:Z
    move v2, v0

    .line 1776
    goto :goto_0

    .line 1778
    .end local v0           #bRes:Z
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;

    if-eqz v3, :cond_2

    .line 1779
    iget-object v3, p0, Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;

    invoke-virtual {v3}, Lcom/htc/android/mail/RequestController$SmtpThread;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 1781
    :cond_2
    sget-boolean v3, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "RequestController"

    const-string v4, "SmtpThread is null. Should not happen"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isServerRefreshing(Lcom/htc/android/mail/Account;)Z
    .locals 10
    .parameter "account"

    .prologue
    .line 3729
    if-nez p1, :cond_0

    const/4 v6, 0x0

    .line 3752
    :goto_0
    return v6

    .line 3730
    :cond_0
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 3731
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v7, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 3732
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_b

    aget-object v0, v2, v4

    .line 3733
    .local v0, a:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 3732
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3734
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v7, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    const-wide v8, 0x7ffffffffffffffdL

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 3735
    :cond_3
    invoke-direct {p0, v0}, Lcom/htc/android/mail/RequestController;->isServerRefreshingInternal(Lcom/htc/android/mail/Account;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    .line 3737
    .end local v0           #a:Lcom/htc/android/mail/Account;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_4
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_a

    .line 3738
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v7, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    const-wide v8, 0x7ffffffffffffffdL

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 3739
    .local v3, huxUnifiedAccount:Lcom/htc/android/mail/Account;
    invoke-direct {p0, v3}, Lcom/htc/android/mail/RequestController;->isServerRefreshingInternal(Lcom/htc/android/mail/Account;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    .line 3740
    :cond_5
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v7, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 3741
    .restart local v1       #accounts:[Lcom/htc/android/mail/Account;
    if-nez v1, :cond_7

    .line 3742
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "RequestController"

    const-string v7, "No HUX accounts"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3743
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 3745
    :cond_7
    move-object v2, v1

    .restart local v2       #arr$:[Lcom/htc/android/mail/Account;
    array-length v5, v2

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v5, :cond_b

    aget-object v0, v2, v4

    .line 3746
    .restart local v0       #a:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 3745
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3747
    :cond_9
    invoke-direct {p0, v0}, Lcom/htc/android/mail/RequestController;->isServerRefreshingInternal(Lcom/htc/android/mail/Account;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3750
    .end local v0           #a:Lcom/htc/android/mail/Account;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #huxUnifiedAccount:Lcom/htc/android/mail/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_a
    invoke-direct {p0, p1}, Lcom/htc/android/mail/RequestController;->isServerRefreshingInternal(Lcom/htc/android/mail/Account;)Z

    move-result v6

    goto/16 :goto_0

    .line 3752
    .restart local v1       #accounts:[Lcom/htc/android/mail/Account;
    .restart local v2       #arr$:[Lcom/htc/android/mail/Account;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public markStar(Lcom/htc/android/mail/Request;)V
    .locals 17
    .parameter "r"

    .prologue
    .line 1381
    if-nez p1, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Request;->getAccount()Lcom/htc/android/mail/Account;

    move-result-object v2

    .line 1383
    .local v2, account:Lcom/htc/android/mail/Account;
    if-eqz v2, :cond_0

    .line 1385
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/htc/android/mail/RequestController$RequestCollection;->add(Lcom/htc/android/mail/Request;)V

    .line 1387
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 1388
    .local v9, parameter:Landroid/os/Bundle;
    const-string v12, "MailMessage"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/MailMessage;

    .line 1389
    .local v5, mailMessage:Lcom/htc/android/mail/MailMessage;
    const-string v12, "Mailbox"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailbox;

    .line 1390
    .local v6, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v5, :cond_4

    .line 1392
    sget-object v12, Lcom/htc/android/mail/RequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v13, "FLAG"

    invoke-virtual {v12, v13}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v8

    .line 1393
    .local v8, messageStatusFlag:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    new-instance v4, Ljava/lang/Integer;

    iget v12, v5, Lcom/htc/android/mail/MailMessage;->flags:I

    invoke-direct {v4, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 1394
    .local v4, flag:Ljava/lang/Integer;
    iget-wide v12, v5, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v8, v12, v13, v14}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->putLocal(JI)V

    .line 1396
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_3

    .line 1397
    invoke-static {}, Lcom/htc/android/mail/ReadScreen$MessageIds;->getUriStr()Ljava/lang/String;

    move-result-object v11

    .line 1398
    .local v11, uriStr:Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 1399
    sget-object v12, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 1400
    .local v7, match:I
    const/16 v12, 0x16e

    if-ne v7, v12, :cond_2

    .line 1401
    invoke-static {v5}, Lcom/htc/android/mail/ReadScreen$MessageIds;->delete(Lcom/htc/android/mail/MailMessage;)V

    .line 1404
    .end local v7           #match:I
    :cond_2
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v12

    iget-wide v14, v6, Lcom/htc/android/mail/Mailbox;->id:J

    const-string v16, "markStar"

    invoke-static/range {v12 .. v16}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1405
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1410
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #uriStr:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v5, v4}, Lcom/htc/android/mail/RequestController;->broadcastMarkStarComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Lcom/htc/android/mail/MailMessage;Ljava/lang/Integer;)V

    .line 1412
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    .line 1413
    .local v3, defaultMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    iget-wide v12, v6, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v14, v3, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_4

    .line 1414
    const-string v12, "messageIdArray"

    const/4 v13, 0x1

    new-array v13, v13, [J

    const/4 v14, 0x0

    iget-wide v15, v5, Lcom/htc/android/mail/MailMessage;->id:J

    aput-wide v15, v13, v14

    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1417
    .end local v3           #defaultMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v4           #flag:Ljava/lang/Integer;
    .end local v8           #messageStatusFlag:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/RequestController;->mUpdateMailHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/htc/android/mail/Request;->command:I

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public moveMail(Lcom/htc/android/mail/Request;)V
    .locals 20
    .parameter "r"

    .prologue
    .line 1422
    if-nez p1, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Request;->getAccount()Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 1425
    .local v3, account:Lcom/htc/android/mail/Account;
    if-eqz v3, :cond_0

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/RequestController$RequestCollection;->add(Lcom/htc/android/mail/Request;)V

    .line 1429
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 1430
    .local v14, parameter:Landroid/os/Bundle;
    const-string v16, "FromMailbox"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailbox;

    .line 1431
    .local v6, fromMailbox:Lcom/htc/android/mail/Mailbox;
    const-string v16, "MailMessageList"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1432
    .local v11, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    const-string v16, "ToMailbox"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/htc/android/mail/Mailbox;

    .line 1434
    .local v15, toMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v11, :cond_4

    .line 1435
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v12, v0, [J

    .line 1436
    .local v12, messageIdArray:[J
    sget-object v16, Lcom/htc/android/mail/RequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v17, "DELETE"

    invoke-virtual/range {v16 .. v17}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v13

    .line 1437
    .local v13, messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    new-instance v5, Ljava/lang/Integer;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1438
    .local v5, deleted:Ljava/lang/Integer;
    const/4 v7, 0x0

    .line 1439
    .local v7, i:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/MailMessage;

    .line 1440
    .local v10, mailMessage:Lcom/htc/android/mail/MailMessage;
    iget-wide v0, v10, Lcom/htc/android/mail/MailMessage;->id:J

    move-wide/from16 v16, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-wide/from16 v0, v16

    move/from16 v2, v18

    invoke-virtual {v13, v0, v1, v2}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->putLocal(JI)V

    .line 1441
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .local v8, i:I
    iget-wide v0, v10, Lcom/htc/android/mail/MailMessage;->id:J

    move-wide/from16 v16, v0

    aput-wide v16, v12, v7

    .line 1444
    invoke-static {v10}, Lcom/htc/android/mail/ReadScreen$MessageIds;->delete(Lcom/htc/android/mail/MailMessage;)V

    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    goto :goto_1

    .line 1448
    .end local v10           #mailMessage:Lcom/htc/android/mail/MailMessage;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1, v11}, Lcom/htc/android/mail/RequestController;->broadcastMoveMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V

    .line 1450
    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    .line 1451
    .local v4, defaultMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v4, :cond_4

    iget-wide v0, v6, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v16, v0

    iget-wide v0, v4, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_3

    iget-wide v0, v15, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v16, v0

    iget-wide v0, v4, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-nez v16, :cond_4

    .line 1452
    :cond_3
    const-string v16, "messageIdArray"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v12}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1455
    .end local v4           #defaultMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v5           #deleted:Ljava/lang/Integer;
    .end local v7           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #messageIdArray:[J
    .end local v13           #messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController;->mUpdateMailHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/Request;->command:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public newPowerLock()V
    .locals 4

    .prologue
    .line 200
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mWakeSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 204
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "MAIL_PWR_LOCK"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 205
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 207
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_0
    monitor-exit v2

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newWifiLock()V
    .locals 4

    .prologue
    .line 189
    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mWifiSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 193
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    const-string v1, "MAIL_WIFI_LOCK"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/RequestController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 194
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 196
    .end local v0           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    monitor-exit v2

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public refreshOrCheckMoreMail(Lcom/htc/android/mail/Request;Z)I
    .locals 17
    .parameter "r"
    .parameter "isAuto"

    .prologue
    .line 1185
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Request;->getAccount()Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 1186
    .local v3, account:Lcom/htc/android/mail/Account;
    if-nez v3, :cond_0

    const/4 v13, -0x1

    .line 1225
    :goto_0
    return v13

    .line 1188
    :cond_0
    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v13

    const-wide v15, 0x7fffffffffffffffL

    cmp-long v13, v13, v15

    if-nez v13, :cond_9

    .line 1189
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v14, "Mailbox"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Mailbox;

    .line 1190
    .local v11, requestMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v11, :cond_1

    iget v13, v11, Lcom/htc/android/mail/Mailbox;->kind:I

    if-nez v13, :cond_2

    :cond_1
    const/4 v13, -0x1

    goto :goto_0

    .line 1191
    :cond_2
    const/4 v9, 0x0

    .line 1192
    .local v9, mailbox:Lcom/htc/android/mail/Mailbox;
    const/4 v10, 0x0

    .line 1193
    .local v10, newRequest:Lcom/htc/android/mail/Request;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v4

    .line 1194
    .local v4, accounts:[Lcom/htc/android/mail/Account;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    .local v12, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Request;>;"
    const/4 v6, 0x0

    .line 1196
    .local v6, hasHuxAccount:Z
    move-object v5, v4

    .local v5, arr$:[Lcom/htc/android/mail/Account;
    array-length v8, v5

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_8

    aget-object v2, v5, v7

    .line 1197
    .local v2, a:Lcom/htc/android/mail/Account;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v13

    const-wide v15, 0x7fffffffffffffffL

    cmp-long v13, v13, v15

    if-eqz v13, :cond_3

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v13

    if-nez v13, :cond_4

    .line 1196
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1198
    :cond_4
    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Lcom/htc/android/mail/Account;->refreshMailOpenFolder(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1199
    :cond_5
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_6

    .line 1200
    if-nez v6, :cond_3

    .line 1201
    const/4 v6, 0x1

    .line 1202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    const-wide v15, 0x7ffffffffffffffdL

    invoke-virtual/range {v13 .. v16}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v2

    .line 1207
    :cond_6
    iget v13, v11, Lcom/htc/android/mail/Mailbox;->kind:I

    const v14, 0x7ffffffa

    if-ne v13, v14, :cond_7

    .line 1208
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v13

    iget-wide v14, v11, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v13, v14, v15}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    .line 1212
    :goto_3
    if-eqz v9, :cond_3

    .line 1213
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Request;->newInstance()Lcom/htc/android/mail/Request;

    move-result-object v10

    .line 1214
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 1215
    iget-object v13, v10, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v14, "Mailbox"

    invoke-virtual {v13, v14, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1216
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1210
    :cond_7
    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v13

    iget v14, v11, Lcom/htc/android/mail/Mailbox;->kind:I

    invoke-virtual {v13, v14}, Lcom/htc/android/mail/Mailboxs;->getMailboxByKind(I)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    goto :goto_3

    .line 1218
    .end local v2           #a:Lcom/htc/android/mail/Account;
    :cond_8
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/htc/android/mail/Request;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/htc/android/mail/Request;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/android/mail/RequestController;->refreshOrCheckMoreMailInternal([Lcom/htc/android/mail/Request;)I

    .line 1223
    .end local v4           #accounts:[Lcom/htc/android/mail/Account;
    .end local v5           #arr$:[Lcom/htc/android/mail/Account;
    .end local v6           #hasHuxAccount:Z
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v10           #newRequest:Lcom/htc/android/mail/Request;
    .end local v11           #requestMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v12           #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Request;>;"
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/htc/android/mail/RequestController;->broadcastShowProgressForRefreshAndCheckMore(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V

    .line 1225
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1220
    :cond_9
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/htc/android/mail/Request;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/android/mail/RequestController;->refreshOrCheckMoreMailInternal([Lcom/htc/android/mail/Request;)I

    goto :goto_4
.end method

.method public registerWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V
    .locals 11
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const-wide v9, 0x7fffffffffffffffL

    const/4 v8, 0x0

    .line 3022
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3023
    if-eqz p1, :cond_4

    .line 3024
    sget-boolean v5, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3025
    const-string v5, "RequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerMailRequestHandler for account: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", there are "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " handler registered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    :cond_0
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-nez v5, :cond_3

    .line 3028
    iget-object v5, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 3029
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v0, v2, v3

    .line 3030
    .local v0, a:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-nez v5, :cond_2

    .line 3029
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3031
    :cond_2
    invoke-virtual {p0, v0, p2, v8}, Lcom/htc/android/mail/RequestController;->getAllRequestStatus(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/Request;)V

    goto :goto_1

    .line 3034
    .end local v0           #a:Lcom/htc/android/mail/Account;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    invoke-virtual {p0, p1, p2, v8}, Lcom/htc/android/mail/RequestController;->getAllRequestStatus(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/Request;)V

    .line 3037
    :cond_4
    return-void
.end method

.method public removeAllWeakMailRequestHandlers()V
    .locals 1

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 3064
    return-void
.end method

.method public removeRequest(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->removeRequest(J)V

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    if-eqz v0, :cond_1

    .line 1531
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(J)V

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    if-eqz v0, :cond_2

    .line 1534
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(J)V

    .line 1536
    :cond_2
    return-void
.end method

.method public removeRequest(JI)V
    .locals 1
    .parameter "accountId"
    .parameter "command"

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    if-eqz v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->removeRequest(JI)V

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    if-eqz v0, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(JI)V

    .line 1565
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    if-eqz v0, :cond_2

    .line 1566
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(JI)V

    .line 1570
    :cond_2
    return-void
.end method

.method public removeRequest(JJ)V
    .locals 1
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->removeRequest(JJ)V

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    if-eqz v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(JJ)V

    .line 1579
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    if-eqz v0, :cond_2

    .line 1580
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(JJ)V

    .line 1582
    :cond_2
    return-void
.end method

.method public removeRequest(JLjava/lang/ref/WeakReference;)V
    .locals 2
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1540
    .local p3, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/RequestController$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/android/mail/RequestController$2;-><init>(Lcom/htc/android/mail/RequestController;JLjava/lang/ref/WeakReference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1554
    return-void
.end method

.method public removeRequest(Lcom/htc/android/mail/Request;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1603
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/RequestController;->removeRequest(Lcom/htc/android/mail/Request;Z)V

    .line 1604
    return-void
.end method

.method public removeRequest(Lcom/htc/android/mail/Request;Z)V
    .locals 1
    .parameter "r"
    .parameter "isImmediate"

    .prologue
    .line 1607
    invoke-virtual {p1}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 1609
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->removeRequest(Lcom/htc/android/mail/Request;Z)V

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    if-eqz v0, :cond_1

    .line 1613
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(Lcom/htc/android/mail/Request;)V

    .line 1615
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    if-eqz v0, :cond_2

    .line 1616
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(Lcom/htc/android/mail/Request;)V

    .line 1618
    :cond_2
    return-void
.end method

.method public removeWeakHandler(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1057
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1060
    :cond_0
    return-void
.end method

.method public saveDraftDone(Ljava/lang/String;J)V
    .locals 3
    .parameter "key"
    .parameter "messageId"

    .prologue
    .line 3859
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mDraftStatus:Lcom/htc/android/mail/RequestController$DraftStatus;

    monitor-enter v1

    .line 3860
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mDraftStatus:Lcom/htc/android/mail/RequestController$DraftStatus;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/htc/android/mail/RequestController$DraftStatus;->setStatus(Ljava/lang/String;I)V

    .line 3861
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/RequestController;->broadcastSaveDraftComplete(Ljava/lang/String;J)V

    .line 3862
    monitor-exit v1

    .line 3863
    return-void

    .line 3862
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public savingDraft(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 3852
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mDraftStatus:Lcom/htc/android/mail/RequestController$DraftStatus;

    monitor-enter v1

    .line 3853
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mDraftStatus:Lcom/htc/android/mail/RequestController$DraftStatus;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/htc/android/mail/RequestController$DraftStatus;->setStatus(Ljava/lang/String;I)V

    .line 3854
    monitor-exit v1

    .line 3855
    return-void

    .line 3854
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendAllMail(Lcom/htc/android/mail/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/RequestController$SmtpThread;->sendAllMail(Lcom/htc/android/mail/Account;)V

    .line 1765
    :cond_0
    return-void
.end method

.method public sendMail(Lcom/htc/android/mail/Account;JI)V
    .locals 6
    .parameter "account"
    .parameter "messageId"
    .parameter "retryCount"

    .prologue
    const/4 v3, 0x0

    .line 1754
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;

    if-eqz v1, :cond_0

    .line 1755
    new-instance v0, Lcom/htc/android/mail/MailMessage;

    move-wide v1, p2

    move-object v4, v3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 1756
    .local v0, mailMessage:Lcom/htc/android/mail/MailMessage;
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 1757
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/RequestController$SmtpThread;->addMessage(Lcom/htc/android/mail/MailMessage;)V

    .line 1759
    .end local v0           #mailMessage:Lcom/htc/android/mail/MailMessage;
    :cond_0
    return-void
.end method

.method public setReadStatus(Lcom/htc/android/mail/Request;)V
    .locals 25
    .parameter "r"

    .prologue
    .line 1327
    if-nez p1, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Request;->getAccount()Lcom/htc/android/mail/Account;

    move-result-object v4

    .line 1329
    .local v4, account:Lcom/htc/android/mail/Account;
    if-eqz v4, :cond_0

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController;->mRequestCollection:Lcom/htc/android/mail/RequestController$RequestCollection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/RequestController$RequestCollection;->add(Lcom/htc/android/mail/Request;)V

    .line 1333
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    move-object/from16 v18, v0

    .line 1334
    .local v18, parameter:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/android/mail/Request;->command:I

    .line 1335
    .local v5, command:I
    const-string v21, "MailMessageList"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1336
    .local v13, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    const-string v21, "Mailbox"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/htc/android/mail/Mailbox;

    .line 1337
    .local v14, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v13, :cond_7

    .line 1338
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v16, v0

    .line 1339
    .local v16, messageIdArray:[J
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v5, v0, :cond_5

    new-instance v8, Ljava/lang/Integer;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1340
    .local v8, i:Ljava/lang/Integer;
    :goto_1
    sget-object v21, Lcom/htc/android/mail/RequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v22, "READ"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v17

    .line 1342
    .local v17, messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    const/16 v19, 0x0

    .line 1343
    .local v19, syncMessageId:Z
    invoke-static {}, Lcom/htc/android/mail/ReadScreen$MessageIds;->getUriStr()Ljava/lang/String;

    move-result-object v20

    .line 1344
    .local v20, uriStr:Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 1345
    sget-object v21, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 1346
    .local v15, match:I
    const/16 v21, 0x163

    move/from16 v0, v21

    if-ne v15, v0, :cond_2

    .line 1347
    const/16 v19, 0x1

    .line 1351
    .end local v15           #match:I
    :cond_2
    const/4 v10, 0x0

    .line 1352
    .local v10, index:I
    sget-object v21, Lcom/htc/android/mail/RequestController;->mGroupStatusMap:Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;

    const-string v22, "READ_UNCOMMIT"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$GroupStatus;

    move-result-object v7

    .line 1353
    .local v7, groupStatus:Lcom/htc/android/mail/AbsRequestController$GroupStatus;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/android/mail/MailMessage;

    .line 1354
    .local v12, mailMessage:Lcom/htc/android/mail/MailMessage;
    iget-wide v0, v12, Lcom/htc/android/mail/MailMessage;->id:J

    move-wide/from16 v21, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v17

    move-wide/from16 v1, v21

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->putLocal(JI)V

    .line 1355
    add-int/lit8 v11, v10, 0x1

    .end local v10           #index:I
    .local v11, index:I
    iget-wide v0, v12, Lcom/htc/android/mail/MailMessage;->id:J

    move-wide/from16 v21, v0

    aput-wide v21, v16, v10

    .line 1356
    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v21

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 1357
    :cond_3
    iget-wide v0, v12, Lcom/htc/android/mail/MailMessage;->id:J

    move-wide/from16 v21, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v17

    move-wide/from16 v1, v21

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->putRemote(JI)V

    .line 1360
    :cond_4
    iget-wide v0, v12, Lcom/htc/android/mail/MailMessage;->accountId:J

    move-wide/from16 v21, v0

    iget-object v0, v12, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    move-object/from16 v23, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Lcom/htc/android/mail/AbsRequestController$GroupStatus;->increment(JLjava/lang/String;)V

    move v10, v11

    .end local v11           #index:I
    .restart local v10       #index:I
    goto :goto_2

    .line 1339
    .end local v7           #groupStatus:Lcom/htc/android/mail/AbsRequestController$GroupStatus;
    .end local v8           #i:Ljava/lang/Integer;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #index:I
    .end local v12           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v17           #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .end local v19           #syncMessageId:Z
    .end local v20           #uriStr:Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/Integer;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_1

    .line 1369
    .restart local v7       #groupStatus:Lcom/htc/android/mail/AbsRequestController$GroupStatus;
    .restart local v8       #i:Ljava/lang/Integer;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #index:I
    .restart local v17       #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .restart local v19       #syncMessageId:Z
    .restart local v20       #uriStr:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v13, v8}, Lcom/htc/android/mail/RequestController;->broadcastSetReadStatusComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;Ljava/lang/Integer;)V

    .line 1371
    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    .line 1372
    .local v6, defaultMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v6, :cond_7

    iget-wide v0, v14, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v21, v0

    iget-wide v0, v6, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-nez v21, :cond_7

    .line 1373
    const-string v21, "messageIdArray"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1376
    .end local v6           #defaultMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v7           #groupStatus:Lcom/htc/android/mail/AbsRequestController$GroupStatus;
    .end local v8           #i:Ljava/lang/Integer;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #index:I
    .end local v16           #messageIdArray:[J
    .end local v17           #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .end local v19           #syncMessageId:Z
    .end local v20           #uriStr:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController;->mUpdateMailHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/Request;->command:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public stop(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->removeRequest(J)V

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    if-eqz v0, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(J)V

    .line 1591
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    if-eqz v0, :cond_2

    .line 1592
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(J)V

    .line 1595
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;

    if-eqz v0, :cond_3

    .line 1596
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/RequestController$SmtpThread;->removeMailMessage(J)V

    .line 1599
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mEASCallbacks:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->remove(J)V

    .line 1600
    return-void
.end method

.method public stopCheckAccount()V
    .locals 3

    .prologue
    .line 2325
    iget-object v1, p0, Lcom/htc/android/mail/RequestController;->mStopCheckLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2326
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    if-eqz v0, :cond_0

    .line 2327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/RequestController;->mIsStopChecking:Z

    .line 2328
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v0}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 2329
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    const/4 v2, 0x0

    iput v2, v0, Lcom/htc/android/mail/server/Server;->state:I

    .line 2330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/RequestController;->mCheckServer:Lcom/htc/android/mail/server/Server;

    .line 2332
    :cond_0
    monitor-exit v1

    .line 2333
    return-void

    .line 2332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopRequest(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1510
    .local p1, handler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/RequestController$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/RequestController$1;-><init>(Lcom/htc/android/mail/RequestController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1523
    return-void
.end method

.method public syncMailToServer(J)V
    .locals 10
    .parameter "accountId"

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    .line 1115
    cmp-long v6, p1, v8

    if-nez v6, :cond_4

    .line 1116
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v7, p0, Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6, v7, p1, p2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 1117
    .local v3, combinedAccount:Lcom/htc/android/mail/Account;
    if-nez v3, :cond_1

    .line 1127
    .end local v3           #combinedAccount:Lcom/htc/android/mail/Account;
    :cond_0
    :goto_0
    return-void

    .line 1119
    .restart local v3       #combinedAccount:Lcom/htc/android/mail/Account;
    :cond_1
    iget-object v6, p0, Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;

    iget-object v7, p0, Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 1120
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 1121
    .local v0, a:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1120
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1122
    :cond_3
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/htc/android/mail/RequestController;->syncMailToServerInternal(J)V

    goto :goto_2

    .line 1125
    .end local v0           #a:Lcom/htc/android/mail/Account;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #combinedAccount:Lcom/htc/android/mail/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/RequestController;->syncMailToServerInternal(J)V

    goto :goto_0
.end method

.method public unregisterWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V
    .locals 3
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3055
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 3056
    if-eqz p1, :cond_0

    .line 3057
    sget-boolean v0, Lcom/htc/android/mail/RequestController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3058
    const-string v0, "RequestController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterMailRequestHandler for account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", there are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handler registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    :cond_0
    return-void
.end method

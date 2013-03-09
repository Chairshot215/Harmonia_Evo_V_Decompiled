.class public Lcom/htc/android/mail/mailservice/EASNotification;
.super Landroid/content/BroadcastReceiver;
.source "EASNotification.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final DEBUG_BROADCAST:Z = false

.field private static final TAG:Ljava/lang/String; = "EAS_NOTIFI"

.field static mHandler:Lcom/htc/android/mail/eassvc/util/ThreadHandler;


# instance fields
.field private accountId:J

.field private mContext:Landroid/content/Context;

.field receiveAction:Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/mailservice/EASNotification;->DEBUG_BROADCAST:Z

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/mailservice/EASNotification;->mHandler:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J

    .line 36
    new-instance v0, Lcom/htc/android/mail/mailservice/EASNotification$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/mailservice/EASNotification$1;-><init>(Lcom/htc/android/mail/mailservice/EASNotification;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/EASNotification;->receiveAction:Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;

    .line 30
    sget-object v0, Lcom/htc/android/mail/mailservice/EASNotification;->mHandler:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    const-string v1, "EASNotifiThread"

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/util/ThreadHandler;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/mail/mailservice/EASNotification;->mHandler:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    .line 32
    sget-object v0, Lcom/htc/android/mail/mailservice/EASNotification;->mHandler:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/EASNotification;->receiveAction:Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mAction:Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/htc/android/mail/mailservice/EASNotification;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 143
    sget-boolean v1, Lcom/htc/android/mail/mailservice/EASNotification;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_0

    const-string v1, "EAS_NOTIFI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;

    .line 148
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 149
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/htc/android/mail/mailservice/EASNotification;->mHandler:Lcom/htc/android/mail/eassvc/util/ThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->addRequest(Landroid/os/Message;)V

    .line 151
    return-void
.end method

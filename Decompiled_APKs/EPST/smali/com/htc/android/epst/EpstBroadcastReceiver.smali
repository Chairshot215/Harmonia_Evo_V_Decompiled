.class public Lcom/htc/android/epst/EpstBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EpstBroadcastReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EpstBroadcastReceiver"

.field private static final MSG_INITIATE_RECEIVER:I = 0x1

.field private static mIntent:Landroid/content/Intent;


# instance fields
.field private DBG:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/epst/EpstBroadcastReceiver;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/EpstBroadcastReceiver;->DBG:Z

    .line 32
    new-instance v0, Lcom/htc/android/epst/EpstBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/EpstBroadcastReceiver$1;-><init>(Lcom/htc/android/epst/EpstBroadcastReceiver;)V

    iput-object v0, p0, Lcom/htc/android/epst/EpstBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 75
    const-string v0, "EpstBroadcastReceiver"

    const-string v1, "EpstBroadcastReceiver:IN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method static synthetic access$000()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/htc/android/epst/EpstBroadcastReceiver;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/epst/EpstBroadcastReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/android/epst/EpstBroadcastReceiver;->DBG:Z

    return v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iget-boolean v1, p0, Lcom/htc/android/epst/EpstBroadcastReceiver;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EpstBroadcastReceiver"

    const-string v2, "ACTION_BOOT_COMPLETED IN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    sget-boolean v1, Lcom/htc/android/epst/HtcFeatureList;->SUPPORT_MEDIA_PROXY:Z

    if-eqz v1, :cond_1

    .line 88
    :cond_1
    invoke-static {v4}, Lcom/htc/android/epst/EntryEPSTInfo;->initDMAgent(Z)V

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/epst/EpstBroadcastReceiver;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "EpstBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packagename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_3
    sget-object v1, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    if-nez v1, :cond_4

    .line 93
    sput-object p1, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    .line 95
    :cond_4
    sput-object p2, Lcom/htc/android/epst/EpstBroadcastReceiver;->mIntent:Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/htc/android/epst/EpstBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

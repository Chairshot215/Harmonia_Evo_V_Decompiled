.class public Lcom/htc/android/worldclock/AlarmInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmInitReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/AlarmInitReceiver;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitReceiver;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/AlarmInitReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 36
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitReceiver;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/htc/android/worldclock/AlarmInitReceiver;->mIntent:Landroid/content/Intent;

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmInitReceiver$1;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmInitReceiver$1;-><init>(Lcom/htc/android/worldclock/AlarmInitReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    return-void
.end method

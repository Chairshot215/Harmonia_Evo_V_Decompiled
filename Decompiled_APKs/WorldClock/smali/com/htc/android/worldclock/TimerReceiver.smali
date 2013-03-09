.class public Lcom/htc/android/worldclock/TimerReceiver;
.super Lcom/htc/android/worldclock/AlarmReceiver;
.source "TimerReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/TimerReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/TimerReceiver;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerReceiver;->mIntent:Landroid/content/Intent;

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
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerReceiver;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/htc/android/worldclock/TimerReceiver;->mIntent:Landroid/content/Intent;

    .line 39
    invoke-static {p1}, Lcom/htc/android/worldclock/TimerAlertWakeLock;->acquire(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/TimerReceiver$1;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/TimerReceiver$1;-><init>(Lcom/htc/android/worldclock/TimerReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

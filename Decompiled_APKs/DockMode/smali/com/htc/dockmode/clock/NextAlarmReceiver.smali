.class public Lcom/htc/dockmode/clock/NextAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NextAlarmReceiver.java"


# static fields
.field private static final SNOOZE:Ljava/lang/String; = "snooze"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/clock/NextAlarmReceiver;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/dockmode/clock/NextAlarmReceiver;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/clock/NextAlarmReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/dockmode/clock/NextAlarmReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 19
    iput-object p2, p0, Lcom/htc/dockmode/clock/NextAlarmReceiver;->mIntent:Landroid/content/Intent;

    .line 20
    iput-object p1, p0, Lcom/htc/dockmode/clock/NextAlarmReceiver;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/dockmode/clock/NextAlarmReceiver$1;

    invoke-direct {v1, p0}, Lcom/htc/dockmode/clock/NextAlarmReceiver$1;-><init>(Lcom/htc/dockmode/clock/NextAlarmReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    return-void
.end method

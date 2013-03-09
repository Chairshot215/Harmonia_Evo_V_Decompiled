.class Lcom/htc/android/worldclock/DeskClock$2;
.super Landroid/content/BroadcastReceiver;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$2;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 268
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 269
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    new-instance v1, Lcom/htc/android/worldclock/DeskClock$2$1;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/DeskClock$2$1;-><init>(Lcom/htc/android/worldclock/DeskClock$2;)V

    invoke-virtual {v1}, Lcom/htc/android/worldclock/DeskClock$2$1;->start()V

    .line 280
    :cond_0
    return-void
.end method

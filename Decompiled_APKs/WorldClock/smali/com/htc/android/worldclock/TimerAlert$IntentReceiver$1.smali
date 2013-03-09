.class Lcom/htc/android/worldclock/TimerAlert$IntentReceiver$1;
.super Ljava/lang/Object;
.source "TimerAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerAlert$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 324
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerAlert$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

    iget-object v1, v1, Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/TimerAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 325
    .local v0, state:I
    if-nez v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerAlert$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

    iget-object v1, v1, Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #getter for: Lcom/htc/android/worldclock/TimerAlert;->mTimerType:I
    invoke-static {v1}, Lcom/htc/android/worldclock/TimerAlert;->access$400(Lcom/htc/android/worldclock/TimerAlert;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 327
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerAlert$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

    iget-object v1, v1, Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/TimerAlert;->finish()V

    .line 330
    :cond_0
    return-void
.end method

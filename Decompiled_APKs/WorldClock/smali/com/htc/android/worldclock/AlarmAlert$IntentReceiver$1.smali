.class Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver$1;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 870
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 871
    .local v0, state:I
    if-nez v0, :cond_0

    .line 872
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$400(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 873
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/AlarmAlert;->finish()V

    .line 876
    :cond_0
    return-void
.end method

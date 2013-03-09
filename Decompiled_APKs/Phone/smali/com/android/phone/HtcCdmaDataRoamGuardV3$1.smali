.class Lcom/android/phone/HtcCdmaDataRoamGuardV3$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaDataRoamGuardV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaDataRoamGuardV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaDataRoamGuardV3;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaDataRoamGuardV3;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3$1;->this$0:Lcom/android/phone/HtcCdmaDataRoamGuardV3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, action:Ljava/lang/String;
    const-string v1, "htc.android.intent.action.cancel_data_raom_guard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string v1, "HtcCdmaDataRoamGuardV3"

    const-string v2, "OoO cancel data roaming gard !!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v1, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3$1;->this$0:Lcom/android/phone/HtcCdmaDataRoamGuardV3;

    invoke-virtual {v1}, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->finish()V

    .line 43
    :cond_0
    return-void
.end method

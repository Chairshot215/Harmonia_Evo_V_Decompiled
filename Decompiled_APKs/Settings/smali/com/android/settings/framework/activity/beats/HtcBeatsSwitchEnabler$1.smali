.class Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcBeatsSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler$1;->this$0:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler$1;->this$0:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mHeadState:I
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->access$002(Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;I)I

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler$1;->this$0:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->mBtState:I
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->access$102(Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;I)I

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler$1;->this$0:Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;

    #calls: Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->updateEnabledState()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;->access$200(Lcom/android/settings/framework/activity/beats/HtcBeatsSwitchEnabler;)V

    .line 66
    return-void
.end method

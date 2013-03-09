.class Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 228
    if-eqz p2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mbSIMChecked:Z
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, mSIMState:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->handleSIMState(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->access$200(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;Ljava/lang/String;)V

    .line 260
    .end local v0           #mSIMState:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    const-string v2, "OOBE_CustomizationActivity"

    const-string v3, "Customization finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v1, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1$1;

    const-string v2, "CustomizationActivity"

    invoke-direct {v1, p0, v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;Ljava/lang/String;)V

    .line 247
    .local v1, serviceThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 250
    .end local v1           #serviceThread:Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.action.CSL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->handleCSL()V
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->access$400(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V

    goto :goto_0

    .line 252
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.action.CustomizationPicker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->handleCustomizationPicker()V
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->access$500(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V

    goto :goto_0

    .line 255
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.rosie.ACTION_SCAN_HTC_WIDGET_DONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const-string v2, "OOBE_CustomizationActivity"

    const-string v3, "Rosie Ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    const/4 v3, 0x1

    #setter for: Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->misRosieReady:Z
    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->access$602(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;Z)Z

    goto :goto_0
.end method

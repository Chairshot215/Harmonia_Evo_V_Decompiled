.class Lcom/android/phone/EmergencyCallbackModeExitDialog$7;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyCallbackModeExitDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 355
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    invoke-static {}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, phoneinECMState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phoneinECMState"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v0, "phoneinECMState"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    invoke-static {}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive, phoneinECMState false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "exit_ecm_result"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->setResult(ILandroid/content/Intent;)V

    .line 366
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    .line 369
    :cond_2
    return-void
.end method

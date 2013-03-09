.class Lcom/android/phone/NetworkUnlockScreen$1;
.super Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;
.source "NetworkUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkUnlockScreen;->checkNetworkUnlockPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkUnlockScreen;

.field final synthetic val$type:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkUnlockScreen;ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    iput-object p4, p0, Lcom/android/phone/NetworkUnlockScreen$1;->val$type:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;-><init>(Lcom/android/phone/NetworkUnlockScreen;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method onNetworkLockChangedResponse(Z)V
    .locals 7
    .parameter "success"

    .prologue
    const/4 v6, 0x0

    .line 366
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$100(Lcom/android/phone/NetworkUnlockScreen;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 367
    const-string v3, "NetworkUnlockScreen"

    const-string v4, "hide after checkPin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$100(Lcom/android/phone/NetworkUnlockScreen;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 369
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #setter for: Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3, v6}, Lcom/android/phone/NetworkUnlockScreen;->access$102(Lcom/android/phone/NetworkUnlockScreen;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 371
    :cond_0
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #calls: Lcom/android/phone/NetworkUnlockScreen;->updateNetworkLockType()V
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$200(Lcom/android/phone/NetworkUnlockScreen;)V

    .line 372
    if-eqz p1, :cond_3

    .line 374
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$300(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 376
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$400(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 377
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #calls: Lcom/android/phone/NetworkUnlockScreen;->processFinishingRebootDialog()V
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$500(Lcom/android/phone/NetworkUnlockScreen;)V

    .line 391
    :goto_0
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$300(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->clearFailedAttempts()V

    .line 404
    :goto_1
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$1000(Lcom/android/phone/NetworkUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I
    invoke-static {v3, v4}, Lcom/android/phone/NetworkUnlockScreen;->access$1102(Lcom/android/phone/NetworkUnlockScreen;I)I

    .line 406
    return-void

    .line 381
    :cond_1
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$300(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetworkLockType()I

    move-result v3

    if-nez v3, :cond_2

    .line 382
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$300(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 383
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$400(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 384
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #calls: Lcom/android/phone/NetworkUnlockScreen;->processFinishingRebootDialog()V
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$500(Lcom/android/phone/NetworkUnlockScreen;)V

    goto :goto_0

    .line 387
    :cond_2
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    iget-object v4, p0, Lcom/android/phone/NetworkUnlockScreen$1;->val$type:Ljava/lang/CharSequence;

    #calls: Lcom/android/phone/NetworkUnlockScreen;->showSuccessDialog(Ljava/lang/CharSequence;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkUnlockScreen;->access$600(Lcom/android/phone/NetworkUnlockScreen;Ljava/lang/CharSequence;)V

    .line 388
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #calls: Lcom/android/phone/NetworkUnlockScreen;->processTitle()V
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$700(Lcom/android/phone/NetworkUnlockScreen;)V

    goto :goto_0

    .line 393
    :cond_3
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$300(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 394
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$300(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v2

    .line 395
    .local v2, failAttempt:I
    const/4 v3, 0x3

    if-le v2, v3, :cond_4

    .line 396
    add-int/lit8 v3, v2, -0x3

    mul-int/lit16 v3, v3, 0x7530

    int-to-long v0, v3

    .line 397
    .local v0, availableTime:J
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$300(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportAvailableTimeStamp(J)V

    .line 398
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #calls: Lcom/android/phone/NetworkUnlockScreen;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/android/phone/NetworkUnlockScreen;->access$800(Lcom/android/phone/NetworkUnlockScreen;J)V

    .line 400
    .end local v0           #availableTime:J
    :cond_4
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #calls: Lcom/android/phone/NetworkUnlockScreen;->processTitle()V
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$700(Lcom/android/phone/NetworkUnlockScreen;)V

    .line 401
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #calls: Lcom/android/phone/NetworkUnlockScreen;->showErrorDialog(Ljava/lang/CharSequence;)V
    invoke-static {v3, v6}, Lcom/android/phone/NetworkUnlockScreen;->access$900(Lcom/android/phone/NetworkUnlockScreen;Ljava/lang/CharSequence;)V

    .line 402
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$1;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/phone/NetworkUnlockScreen;->access$400(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_1
.end method

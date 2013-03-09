.class Lcom/android/phone/SimUnlockScreen$2;
.super Lcom/android/phone/SimUnlockScreen$UnblockSimPin;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimUnlockScreen;->checkPUK(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/SimUnlockScreen$UnblockSimPin;-><init>(Lcom/android/phone/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 4
    .parameter "success"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 785
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$100(Lcom/android/phone/SimUnlockScreen;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    const-string v0, "SimUnlockScreen"

    const-string v1, "hide after checkPUK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$100(Lcom/android/phone/SimUnlockScreen;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 790
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/SimUnlockScreen;->access$102(Lcom/android/phone/SimUnlockScreen;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #calls: Lcom/android/phone/SimUnlockScreen;->resetPukInfo()V
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$900(Lcom/android/phone/SimUnlockScreen;)V

    .line 794
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$200(Lcom/android/phone/SimUnlockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 795
    if-eqz p1, :cond_2

    .line 796
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v3, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$300(Lcom/android/phone/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x20c012f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$400(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 801
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$500(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 809
    :goto_0
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$500(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 810
    return-void

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #calls: Lcom/android/phone/SimUnlockScreen;->updateDetailSimStatus()V
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$600(Lcom/android/phone/SimUnlockScreen;)V

    .line 804
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$400(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v0

    aget v0, v0, v2

    if-lez v0, :cond_3

    .line 805
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #calls: Lcom/android/phone/SimUnlockScreen;->processPUKTitle()V
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$1000(Lcom/android/phone/SimUnlockScreen;)V

    .line 807
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$2;->this$0:Lcom/android/phone/SimUnlockScreen;

    #calls: Lcom/android/phone/SimUnlockScreen;->showUnblockErrorDialog(I)V
    invoke-static {v0, v3}, Lcom/android/phone/SimUnlockScreen;->access$1100(Lcom/android/phone/SimUnlockScreen;I)V

    goto :goto_0
.end method

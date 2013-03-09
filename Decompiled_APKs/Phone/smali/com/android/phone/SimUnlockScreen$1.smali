.class Lcom/android/phone/SimUnlockScreen$1;
.super Lcom/android/phone/SimUnlockScreen$CheckSimPin;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimUnlockScreen;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/SimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/phone/SimUnlockScreen$CheckSimPin;-><init>(Lcom/android/phone/SimUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 10
    .parameter "success"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 713
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$100(Lcom/android/phone/SimUnlockScreen;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 715
    const-string v3, "SimUnlockScreen"

    const-string v4, "hide after checkPin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$100(Lcom/android/phone/SimUnlockScreen;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 718
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3, v4}, Lcom/android/phone/SimUnlockScreen;->access$102(Lcom/android/phone/SimUnlockScreen;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 721
    :cond_0
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$200(Lcom/android/phone/SimUnlockScreen;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setClickable(Z)V

    .line 722
    if-eqz p1, :cond_2

    .line 724
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 725
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$300(Lcom/android/phone/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x20c012e

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 731
    :cond_1
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$400(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 732
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$500(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 768
    :goto_0
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$500(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 769
    return-void

    .line 735
    :cond_2
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #calls: Lcom/android/phone/SimUnlockScreen;->updateDetailSimStatus()V
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$600(Lcom/android/phone/SimUnlockScreen;)V

    .line 738
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$400(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v3

    aget v0, v3, v8

    .line 739
    .local v0, pinRetry:I
    if-lez v0, :cond_5

    .line 741
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    const-string v4, "keyguard_password_enter_pin_code_with_counter_verizon"

    const/4 v5, -0x1

    #calls: Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/phone/SimUnlockScreen;->access$700(Lcom/android/phone/SimUnlockScreen;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, tempStr:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    if-le v0, v9, :cond_3

    .line 747
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    const-string v4, "keyguard_password_times_left_verizon"

    #calls: Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v4, v0}, Lcom/android/phone/SimUnlockScreen;->access$700(Lcom/android/phone/SimUnlockScreen;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 751
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$800(Lcom/android/phone/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #tempStr:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #calls: Lcom/android/phone/SimUnlockScreen;->showUnblockErrorDialog(I)V
    invoke-static {v3, v9}, Lcom/android/phone/SimUnlockScreen;->access$1100(Lcom/android/phone/SimUnlockScreen;I)V

    .line 765
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$1200(Lcom/android/phone/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #setter for: Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v3, v8}, Lcom/android/phone/SimUnlockScreen;->access$1302(Lcom/android/phone/SimUnlockScreen;I)I

    goto :goto_0

    .line 749
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    .restart local v2       #tempStr:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    const-string v4, "keyguard_password_time_left_verizon"

    #calls: Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v4, v0}, Lcom/android/phone/SimUnlockScreen;->access$700(Lcom/android/phone/SimUnlockScreen;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 755
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #tempStr:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$800(Lcom/android/phone/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/SimUnlockScreen;->access$300(Lcom/android/phone/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x20c0113

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v7}, Lcom/android/phone/SimUnlockScreen;->access$400(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v7

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 760
    :cond_5
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #calls: Lcom/android/phone/SimUnlockScreen;->resetPukInfo()V
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$900(Lcom/android/phone/SimUnlockScreen;)V

    .line 761
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$1;->this$0:Lcom/android/phone/SimUnlockScreen;

    #calls: Lcom/android/phone/SimUnlockScreen;->processPUKTitle()V
    invoke-static {v3}, Lcom/android/phone/SimUnlockScreen;->access$1000(Lcom/android/phone/SimUnlockScreen;)V

    goto :goto_2
.end method

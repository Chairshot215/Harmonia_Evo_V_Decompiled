.class Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;
.super Landroid/os/CountDownTimer;
.source "PasswordUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$000(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 639
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$500(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10402d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 646
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$602(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;I)I

    .line 647
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    iget-object v0, v0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->enableForgotPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    sget-object v1, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->ForgotLockPattern:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;

    #calls: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$700(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    sget-object v1, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;

    #calls: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$700(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 628
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 629
    .local v1, secondsRemaining:I
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    iget-object v2, v2, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    const v3, 0x1040300

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, instructions:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$500(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    return-void
.end method

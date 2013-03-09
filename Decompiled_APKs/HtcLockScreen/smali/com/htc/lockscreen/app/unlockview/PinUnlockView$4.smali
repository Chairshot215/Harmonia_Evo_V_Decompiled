.class Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;
.super Landroid/os/CountDownTimer;
.source "PinUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 395
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->access$000(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->access$100(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10402d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 402
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPinkeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;
    invoke-static {v0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->access$200(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->access$302(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;I)I

    .line 405
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    iget-object v0, v0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->enableForgotPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    sget-object v1, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->ForgotLockPattern:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    #calls: Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->access$400(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    sget-object v1, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    #calls: Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->access$400(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 386
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 387
    .local v1, secondsRemaining:I
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

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

    .line 390
    .local v0, instructions:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->access$100(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    return-void
.end method

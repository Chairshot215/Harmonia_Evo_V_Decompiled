.class Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;
.super Landroid/os/Handler;
.source "PasswordUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 522
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 524
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->removeMessages(I)V

    .line 525
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$000(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 526
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$000(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 527
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$200(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 528
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$200(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    .line 529
    .local v0, active:Z
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$200(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$000(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    .line 530
    .local v1, activeForView:Z
    const-string v3, "PasswordUnlockView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST_FOCUS active:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " activeForView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$200(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$000(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/widget/EditText;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    .line 533
    .local v2, result:Z
    const-string v3, "PasswordUnlockView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST_FOCUS result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    if-eqz v2, :cond_1

    .line 535
    invoke-virtual {p0, v6}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->removeMessages(I)V

    goto/16 :goto_0

    .line 537
    :cond_1
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mRetry:I
    invoke-static {v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$300(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)I

    move-result v3

    if-gt v3, v7, :cond_0

    .line 538
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    invoke-static {v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$308(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)I

    .line 539
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$000(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 540
    const-wide/16 v3, 0x12c

    invoke-virtual {p0, v6, v3, v4}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 546
    .end local v0           #active:Z
    .end local v1           #activeForView:Z
    .end local v2           #result:Z
    :pswitch_1
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$100(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mVerifyOK:Z
    invoke-static {v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$400(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    iget-object v3, v3, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3, v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto/16 :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

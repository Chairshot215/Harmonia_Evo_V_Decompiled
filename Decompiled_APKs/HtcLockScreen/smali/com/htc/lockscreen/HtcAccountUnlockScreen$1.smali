.class Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;
.super Ljava/lang/Object;
.source "HtcAccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/HtcAccountUnlockScreen;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/HtcAccountUnlockScreen;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    iput-boolean p2, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    iget-boolean v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->val$success:Z

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$000(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 212
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$000(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$000(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 214
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$000(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    const-string v1, "launch_lock_direct"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$100(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 224
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$200(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 227
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$200(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 233
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$300(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1040308

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$400(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$200(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    goto :goto_0
.end method

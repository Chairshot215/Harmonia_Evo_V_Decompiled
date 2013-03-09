.class Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;
.super Landroid/os/CountDownTimer;
.source "HtcPatternUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/HtcPatternUnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/HtcPatternUnlockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 662
    iput-object p1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$000(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 676
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    invoke-virtual {v1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mInstructions:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$902(Lcom/htc/lockscreen/HtcPatternUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #calls: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateStatusLines()V
    invoke-static {v0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$500(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)V

    .line 679
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v0, v1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$702(Lcom/htc/lockscreen/HtcPatternUnlockScreen;I)I

    .line 680
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEnableFallback:Z
    invoke-static {v0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$1000(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    sget-object v1, Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;->ForgotLockPattern:Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;

    #calls: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateFooter(Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;)V
    invoke-static {v0, v1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$1100(Lcom/htc/lockscreen/HtcPatternUnlockScreen;Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;)V

    .line 685
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    sget-object v1, Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;->Normal:Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;

    #calls: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateFooter(Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;)V
    invoke-static {v0, v1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$1100(Lcom/htc/lockscreen/HtcPatternUnlockScreen;Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 666
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 667
    .local v0, secondsRemaining:I
    iget-object v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    invoke-virtual {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040300

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mInstructions:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$902(Lcom/htc/lockscreen/HtcPatternUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    iget-object v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #calls: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateStatusLines()V
    invoke-static {v1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$500(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)V

    .line 671
    return-void
.end method

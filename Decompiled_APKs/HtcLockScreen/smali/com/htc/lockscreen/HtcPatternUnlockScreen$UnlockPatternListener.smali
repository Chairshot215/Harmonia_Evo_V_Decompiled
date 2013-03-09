.class Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;
.super Ljava/lang/Object;
.source "HtcPatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/HtcPatternUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/HtcPatternUnlockScreen;Lcom/htc/lockscreen/HtcPatternUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$100(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 620
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$100(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 609
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$400(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$000(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 629
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #calls: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateStatusLines()V
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$500(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)V

    .line 630
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/lockscreen/app/util/MyUtil;->unlockKeyStore(Ljava/lang/String;)V

    .line 631
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$100(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 632
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$100(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 655
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 635
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$100(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    const/16 v3, 0x1b58

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 637
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$000(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 638
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 639
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$608(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)I

    .line 640
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$708(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)I

    .line 641
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$100(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 643
    :cond_2
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$700(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 644
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$400(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 645
    .local v0, deadline:J
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #calls: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->handleAttemptLockout(J)V
    invoke-static {v2, v0, v1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$800(Lcom/htc/lockscreen/HtcPatternUnlockScreen;J)V

    goto :goto_0

    .line 648
    .end local v0           #deadline:J
    :cond_3
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    iget-object v3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    invoke-virtual {v3}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10402e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mInstructions:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$902(Lcom/htc/lockscreen/HtcPatternUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 649
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #calls: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateStatusLines()V
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$500(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)V

    .line 650
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$000(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$300(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$000(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$300(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 606
    return-void
.end method

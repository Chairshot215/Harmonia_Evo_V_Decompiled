.class Lcom/htc/lockscreen/HtcLockScreen$3;
.super Ljava/lang/Object;
.source "HtcLockScreen.java"

# interfaces
.implements Lcom/htc/lockscreen/app/LSState$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/HtcLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/HtcLockScreen;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/HtcLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/htc/lockscreen/HtcLockScreen$3;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backToLock()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen$3;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    iget-object v0, v0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 714
    return-void
.end method

.method public getLockScreenScreenState()Lcom/htc/lockscreen/HtcLockScreen$ScreenState;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen$3;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    #getter for: Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;
    invoke-static {v0}, Lcom/htc/lockscreen/HtcLockScreen;->access$700(Lcom/htc/lockscreen/HtcLockScreen;)Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    move-result-object v0

    return-object v0
.end method

.method public getLockScreenViewMode()I
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen$3;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLockScreen;->getLockScreenViewMode()I

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen$3;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    #getter for: Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z
    invoke-static {v0}, Lcom/htc/lockscreen/HtcLockScreen;->access$400(Lcom/htc/lockscreen/HtcLockScreen;)Z

    move-result v0

    return v0
.end method

.method public isKeyguardShow()Z
    .locals 4

    .prologue
    .line 701
    iget-object v1, p0, Lcom/htc/lockscreen/HtcLockScreen$3;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    #calls: Lcom/htc/lockscreen/HtcLockScreen;->isKeyguardShowing()Z
    invoke-static {v1}, Lcom/htc/lockscreen/HtcLockScreen;->access$600(Lcom/htc/lockscreen/HtcLockScreen;)Z

    move-result v0

    .line 702
    .local v0, show:Z
    const-string v1, "HtcLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeyguardShow show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return v0
.end method

.method public onUIReady()V
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/app/LSState;->setShowLiveWallpaper(Z)V

    .line 739
    return-void
.end method

.method public recreatMe()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen$3;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcLockScreen;->recreateMe()V

    .line 724
    return-void
.end method

.method public unlock(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen$3;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/HtcLockScreen;->goToUnlockScreen(I)V

    .line 709
    return-void
.end method

.class Lcom/htc/idlescreen/base/FxIdleScreen$1;
.super Ljava/lang/Object;
.source "FxIdleScreen.java"

# interfaces
.implements Lcom/htc/idlescreen/base/IdleState$ViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/FxIdleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/FxIdleScreen;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/FxIdleScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContainer()Lcom/htc/idlescreen/base/widget/IdleContainer;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->getContainer()Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    return-object v0
.end method

.method public getFxEngineCallback()Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$500(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    move-result-object v0

    return-object v0
.end method

.method public getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mIdleScreenCallback:Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$600(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    return-object v0
.end method

.method public getRing()Lcom/htc/idlescreen/base/widget/IdleRing;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutPanel()Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->getShortcutPanel()Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentScene(Lcom/htc/fusion/fx/FxScene;)Z
    .locals 4
    .parameter "scene"

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, curScene:Lcom/htc/fusion/fx/FxScene;
    iget-object v3, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v3}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$300(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getReminderView()Lcom/htc/idlescreen/base/reminderview/ReminderView;

    move-result-object v2

    .line 428
    .local v2, reminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;
    iget-object v3, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v3}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$300(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getPluginView()Lcom/htc/idlescreen/base/widget/IdleView;

    move-result-object v1

    .line 429
    .local v1, pluginView:Lcom/htc/idlescreen/base/widget/IdleView;
    if-eqz v2, :cond_1

    .line 430
    invoke-virtual {v2}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 435
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    const/4 v3, 0x1

    .line 440
    :goto_1
    return v3

    .line 431
    :cond_1
    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    goto :goto_0

    .line 440
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #calls: Lcom/htc/idlescreen/base/FxIdleScreen;->isPortrait()Z
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$400(Lcom/htc/idlescreen/base/FxIdleScreen;)Z

    move-result v0

    return v0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    iget-boolean v0, v0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsStart:Z

    return v0
.end method

.method public onAppCountUpdate(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 473
    const-string v0, "FxIdleScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppCountUpdate packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$100(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateAppCount(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    .line 477
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateAppCount(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    .line 479
    :cond_0
    return-void
.end method

.method public onShortcutUpdate()V
    .locals 2

    .prologue
    .line 483
    const-string v0, "FxIdleScreen"

    const-string v1, "onShortcutUpdate"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$100(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateShortcut()V

    .line 485
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateShortcut()V

    .line 487
    :cond_0
    return-void
.end method

.method public onTelephonyChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 392
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getPlmnAndSpn()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 393
    .local v0, opNames:[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v1}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$100(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v1

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setOperatorName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 394
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v1}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v1}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v1

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setOperatorName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 402
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$100(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateTime()V

    .line 407
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateTime()V

    .line 413
    :cond_0
    return-void
.end method

.method public onViewModeChanged(Lcom/htc/idlescreen/base/IdleState$ViewMode;)V
    .locals 4
    .parameter "viewMode"

    .prologue
    const/4 v3, 0x0

    .line 417
    const-string v0, "FxIdleScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewModeChanged viewMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->pauseRender()V

    .line 419
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$100(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateContainerView(Lcom/htc/idlescreen/base/IdleState$ViewMode;I)V

    .line 420
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    #getter for: Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-static {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateContainerView(Lcom/htc/idlescreen/base/IdleState$ViewMode;I)V

    .line 422
    :cond_0
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->resumeRender()V

    .line 423
    return-void
.end method

.method public supportWeather()Z
    .locals 2

    .prologue
    .line 492
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen$1;->this$0:Lcom/htc/idlescreen/base/FxIdleScreen;

    iget-object v1, v1, Lcom/htc/idlescreen/base/FxIdleScreen;->mService:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, packageName:Ljava/lang/String;
    const-string v1, "com.htc.weatheridlescreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    const/4 v1, 0x0

    .line 496
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

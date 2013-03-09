.class public Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "SocialClockWidgetView.java"


# instance fields
.field private mApContext:Landroid/content/Context;

.field private mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

.field private mInitCreate:Z

.field private mInitLock:Ljava/lang/Object;

.field private mInitPause:Z

.field private mInitResume:Z

.field private mOrientation:I

.field private mSceneLand:Lcom/htc/fusion/fx/FxScene;

.field private mScenePort:Lcom/htc/fusion/fx/FxScene;

.field private mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mOrientation:I

    .line 26
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitCreate:Z

    .line 27
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitResume:Z

    .line 28
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitPause:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitLock:Ljava/lang/Object;

    return-void
.end method

.method private doPause()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doPause()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->doPause()V

    .line 96
    :cond_1
    return-void
.end method

.method private doResume()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doResume()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->doResume()V

    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 154
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 142
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Base;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doActivityResult(IILandroid/content/Intent;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->doActivityResult(IILandroid/content/Intent;)V

    .line 138
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfiguration"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mOrientation:I

    .line 162
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    iget v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->onConfigurationChanged(I)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    iget v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->onConfigurationChanged(I)V

    .line 168
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "saved"

    .prologue
    const/4 v3, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_SOCIAL:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    invoke-static {v1, v3}, Lcom/htc/clock3dwidget/ClockUtils;->getClockPath(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 34
    sget-boolean v0, Lcom/htc/clock3dwidget/ClockUtils;->SUPPORT_LAND:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    .line 35
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mApContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mApContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mOrientation:I

    .line 37
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_SOCIAL:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/clock3dwidget/ClockUtils;->getClockPath(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "weather clock onActivityDestroy~"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doDestroy()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->doDestroy()V

    .line 107
    :cond_1
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 108
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 121
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doHostMessage(Landroid/os/Message;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->doHostMessage(Landroid/os/Message;)V

    .line 127
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 81
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitCreate:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->doPause()V

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitPause:Z

    .line 86
    monitor-exit v1

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedState"

    .prologue
    const/4 v7, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    .line 42
    sget-object v0, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_SOCIAL:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mApContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockRes(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Landroid/content/Context;)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v8

    .line 43
    .local v8, clockRes:Lcom/htc/clock3dwidget/ClockRes;
    new-instance v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mApContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    iget-object v5, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    iget v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mOrientation:I

    invoke-direct/range {v0 .. v8}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;ILcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;Lcom/htc/clock3dwidget/ClockRes;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    .line 45
    new-instance v0, Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    invoke-direct/range {v0 .. v7}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Intent;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mSocialWidget:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    .line 47
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitResume:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->doResume()V

    .line 51
    :cond_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitPause:Z

    if-eqz v0, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->doPause()V

    .line 54
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitCreate:Z

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 61
    iget-object v1, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitCreate:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->doResume()V

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mInitResume:Z

    .line 66
    monitor-exit v1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTiltChanged(F)V
    .locals 1
    .parameter "tilt"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onTiltChanged(F)V

    .line 113
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/SocialClockWidgetView;->mClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doTiltChanged(F)V

    .line 116
    :cond_0
    return-void
.end method

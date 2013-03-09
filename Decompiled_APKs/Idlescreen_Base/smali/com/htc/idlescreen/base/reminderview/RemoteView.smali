.class public Lcom/htc/idlescreen/base/reminderview/RemoteView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "RemoteView.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "RemoteView"


# instance fields
.field private mEvent:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mEventInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mPhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "context"
    .parameter "idleScreen"
    .parameter "container"
    .parameter "scene"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 51
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/RemoteView;->initScene()V

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/RemoteView;
    .locals 3
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 39
    const-string v0, "Port/base/Lockscreen_wirelesscharging.m10"

    .line 40
    .local v0, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 41
    const-string v0, "Land/base/Lockscreen_wirelesscharging.m10"

    .line 43
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 44
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v2, Lcom/htc/idlescreen/base/reminderview/RemoteView;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/idlescreen/base/reminderview/RemoteView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    return-object v2
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "RemoteView"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 68
    return-void
.end method

.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->REMOTE_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "RemoteView"

    const-string v1, "initScene"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 57
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "dynamicimage.bigicon"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mPhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 58
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "textlabel.wirelesscharging"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 59
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "textlabel.wirelesscharging_event"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mEvent:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 60
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "textlabel.wirelesscharging_eventinfo"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mEventInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 62
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/RemoteView;->update()V

    .line 63
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    .line 79
    const-string v6, "RemoteView"

    const-string v7, "update"

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/idlescreen/base/IdleState;->getRemoteView()Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    move-result-object v4

    .line 81
    .local v4, viewObj:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    const/4 v2, 0x0

    .line 82
    .local v2, photo:Landroid/graphics/Bitmap;
    const-string v3, ""

    .line 83
    .local v3, title:Ljava/lang/String;
    const-string v0, ""

    .line 84
    .local v0, event:Ljava/lang/String;
    const-string v1, ""

    .line 85
    .local v1, eventInfo:Ljava/lang/String;
    const/4 v5, 0x0

    .line 86
    .local v5, wakeUp:Z
    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v4}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 88
    invoke-virtual {v4}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v4}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->getDescript()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v4}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->getHint()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v4}, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;->isWakeUp()Z

    move-result v5

    .line 102
    :cond_0
    if-eqz v2, :cond_2

    .line 103
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mPhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 110
    :goto_0
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 111
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 112
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 118
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 119
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mEvent:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 125
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 126
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mEventInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 131
    :goto_3
    if-eqz v5, :cond_1

    .line 132
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/idlescreen/base/IdleState;->pokeWakeLock()V

    .line 134
    :cond_1
    return-void

    .line 106
    :cond_2
    iget-object v7, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mPhoto:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_4
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mEvent:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :cond_5
    iget-object v6, p0, Lcom/htc/idlescreen/base/reminderview/RemoteView;->mEventInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_3
.end method

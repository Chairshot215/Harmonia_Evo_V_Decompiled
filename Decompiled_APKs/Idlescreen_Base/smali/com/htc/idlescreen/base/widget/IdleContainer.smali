.class public Lcom/htc/idlescreen/base/widget/IdleContainer;
.super Ljava/lang/Object;
.source "IdleContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/IdleContainer$MyUIHandler;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "IdleContainer"

.field private static final WHAT_UI_HIDE_HINT:I = 0x66

.field private static final WHAT_UI_HIDE_MENU:I = 0x67

.field private static final WHAT_UI_SHOW_HINT:I = 0x65

.field private static final WHAT_UI_UPDATEMODE:I = 0x64


# instance fields
.field private mBGContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mClockType:I

.field mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field mEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

.field mFadeOut:Z

.field private mFakeMenuContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mForceUpdate:Z

.field private mHintShowed:Z

.field private mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

.field private mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

.field private mIsPortrait:Z

.field private mNeedToShowHint:Z

.field private mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

.field private mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

.field private mResumed:Z

.field private mRingContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mRingListener:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

.field private mRingMoved:Z

.field private mSCHideFlag:I

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private mShortcutContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

.field private mShowShortcut:Z

.field private mShowShortcutinDBSetting:Z

.field private mStart:Z

.field private mTimeContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

.field private mUIHandler:Landroid/os/Handler;

.field private mUninitWidget:Z

.field private mUnlockMarker:Lcom/htc/fusion/fx/Marker;

.field private mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;Z)V
    .locals 5
    .parameter "context"
    .parameter "idleScreen"
    .parameter "enginecallback"
    .parameter "isPortrait"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mResumed:Z

    .line 96
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    .line 97
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mForceUpdate:Z

    .line 98
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingMoved:Z

    .line 102
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShowShortcutinDBSetting:Z

    .line 103
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShowShortcut:Z

    .line 104
    iput v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mSCHideFlag:I

    .line 105
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mDestroyed:Z

    .line 106
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mStart:Z

    .line 107
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUninitWidget:Z

    .line 108
    iput v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mClockType:I

    .line 395
    sget-object v1, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NORMAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 788
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNeedToShowHint:Z

    .line 839
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mHintShowed:Z

    .line 948
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFadeOut:Z

    .line 967
    new-instance v1, Lcom/htc/idlescreen/base/widget/IdleContainer$1;

    invoke-direct {v1, p0}, Lcom/htc/idlescreen/base/widget/IdleContainer$1;-><init>(Lcom/htc/idlescreen/base/widget/IdleContainer;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingListener:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

    .line 110
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    .line 111
    iput-boolean p4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    .line 112
    iput-object p2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    .line 113
    iput-object p3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    .line 114
    new-instance v1, Lcom/htc/idlescreen/base/widget/IdleContainer$MyUIHandler;

    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/idlescreen/base/widget/IdleContainer$MyUIHandler;-><init>(Lcom/htc/idlescreen/base/widget/IdleContainer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    .line 117
    if-eqz p4, :cond_2

    .line 118
    const-string v0, "Port/base/Lockscreen_container.m10"

    .line 124
    .local v0, containerRes:Ljava/lang/String;
    :goto_0
    invoke-static {v0, v3}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 126
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "timeline.lockscreen_con"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 128
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "drop"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockMarker:Lcom/htc/fusion/fx/Marker;

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "scenecontainer.lockscreen_time"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 133
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    sget-object v2, Lcom/htc/idlescreen/base/mode10/M10R;->RES_LOCK_APP_CONTAINER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 134
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "scenecontainer.Lockscreen_ring"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 135
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "scenecontainer.Lock_shortcut"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 136
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "scenecontainer.Lock_BG"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mBGContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 137
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "scenecontainer.Lockscreen_fake_menu"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFakeMenuContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 138
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "scenecontainer.Lockscreen_Notic"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 140
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setVisibility(Z)Ljava/util/ArrayList;

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setVisibility(Z)Ljava/util/ArrayList;

    .line 147
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setVisibility(Z)Ljava/util/ArrayList;

    .line 156
    :goto_1
    return-void

    .line 121
    .end local v0           #containerRes:Ljava/lang/String;
    :cond_2
    const-string v0, "Land/base/Lockscreen_container.m10"

    .restart local v0       #containerRes:Ljava/lang/String;
    goto/16 :goto_0

    .line 154
    :cond_3
    const-string v1, "IdleContainer"

    const-string v2, "scene is null"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private HideMenu()V
    .locals 4

    .prologue
    const/16 v3, 0x67

    .line 820
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 822
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 823
    return-void
.end method

.method private _updateContainerView(Lcom/htc/idlescreen/base/IdleState$ViewMode;)V
    .locals 6
    .parameter "viewMode"

    .prologue
    .line 424
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mDestroyed:Z

    if-eqz v3, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    const/4 v2, 0x1

    .line 428
    .local v2, shortcutShow:Z
    const/4 v1, 0x0

    .line 429
    .local v1, reminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_4

    .line 430
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/IncomingCallView;

    move-result-object v1

    .line 502
    :cond_2
    :goto_1
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->isOOBEDone()Z

    move-result v3

    if-nez v3, :cond_16

    .line 503
    const/4 v2, 0x0

    .line 515
    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShowShortcut:Z

    .line 517
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->closeOptionsMenu()V

    .line 519
    if-eqz v1, :cond_18

    .line 520
    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setReminderScene(Lcom/htc/idlescreen/base/reminderview/ReminderView;)V

    .line 525
    :goto_3
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateShortcutVisible()V

    .line 527
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->playShowAnime()V

    .line 529
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_4
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_0

    .line 536
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/idlescreen/base/IdleState;->phoneUIReady(J)V

    goto :goto_0

    .line 432
    :cond_4
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->ALARM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_5

    .line 433
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->getReminderCtrl()Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v0, v3, Lcom/htc/lockscreen/reminder/ReminderState;->mDescript:Ljava/lang/String;

    .line 434
    .local v0, desp:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v0, v5}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Ljava/lang/String;Z)Lcom/htc/idlescreen/base/reminderview/AlarmView;

    move-result-object v1

    .line 435
    goto :goto_1

    .line 436
    .end local v0           #desp:Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALENDAR_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_6

    .line 437
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/CalendarView;

    move-result-object v1

    goto :goto_1

    .line 439
    :cond_6
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->TIMER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_7

    .line 440
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/TimerView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/TimerView;

    move-result-object v1

    goto :goto_1

    .line 442
    :cond_7
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->TASK_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_8

    .line 443
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/TaskView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/TaskView;

    move-result-object v1

    goto :goto_1

    .line 445
    :cond_8
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->BATTERY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_9

    .line 446
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/BatteryView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/BatteryView;

    move-result-object v1

    goto/16 :goto_1

    .line 448
    :cond_9
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->AIRPLANE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_a

    .line 449
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/AirplaneView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/AirplaneView;

    move-result-object v1

    goto/16 :goto_1

    .line 451
    :cond_a
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->OOBERUN_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_b

    .line 452
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/EmptyView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/EmptyView;

    move-result-object v1

    goto/16 :goto_1

    .line 454
    :cond_b
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MUSIC_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_c

    .line 455
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/MusicView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/MusicView;

    move-result-object v1

    goto/16 :goto_1

    .line 458
    :cond_c
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIGNAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_d

    .line 459
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/NoSignalView;

    move-result-object v1

    goto/16 :goto_1

    .line 461
    :cond_d
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_e

    .line 462
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/NoSimView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/NoSimView;

    move-result-object v1

    goto/16 :goto_1

    .line 464
    :cond_e
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->SIMLOCK_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_f

    .line 465
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/SimLockView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/SimLockView;

    move-result-object v1

    goto/16 :goto_1

    .line 467
    :cond_f
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MESSAGE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_10

    .line 468
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/MessageView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/MessageView;

    move-result-object v1

    .line 470
    if-nez v1, :cond_2

    .line 471
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5, p1}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;ZLcom/htc/idlescreen/base/IdleState$ViewMode;)Lcom/htc/idlescreen/base/reminderview/NotificationView;

    move-result-object v1

    goto/16 :goto_1

    .line 474
    :cond_10
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MISSCALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_11

    .line 475
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/MissCallView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/MissCallView;

    move-result-object v1

    .line 477
    if-nez v1, :cond_2

    .line 478
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5, p1}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;ZLcom/htc/idlescreen/base/IdleState$ViewMode;)Lcom/htc/idlescreen/base/reminderview/NotificationView;

    move-result-object v1

    goto/16 :goto_1

    .line 482
    :cond_11
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->VOICEMAIL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_12

    .line 483
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/VoiceMailView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/VoiceMailView;

    move-result-object v1

    .line 485
    if-nez v1, :cond_2

    .line 486
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5, p1}, Lcom/htc/idlescreen/base/reminderview/NotificationView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;ZLcom/htc/idlescreen/base/IdleState$ViewMode;)Lcom/htc/idlescreen/base/reminderview/NotificationView;

    move-result-object v1

    goto/16 :goto_1

    .line 489
    :cond_12
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->REMOTE_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_13

    .line 490
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/RemoteView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/RemoteView;

    move-result-object v1

    goto/16 :goto_1

    .line 492
    :cond_13
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->WEATHER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_14

    .line 493
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/WeatherView;

    move-result-object v1

    goto/16 :goto_1

    .line 495
    :cond_14
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->EMERENCY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne p1, v3, :cond_15

    .line 496
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-static {v3, v4, p0, v5}, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/EmergencyView;

    move-result-object v1

    goto/16 :goto_1

    .line 500
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 505
    :cond_16
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isSmallTablet()Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NORMAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-eq p1, v3, :cond_17

    iget-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    if-nez v3, :cond_17

    .line 508
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 511
    :cond_17
    if-eqz v1, :cond_3

    .line 512
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->isShowShortcut()Z

    move-result v2

    goto/16 :goto_2

    .line 523
    :cond_18
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->removeReminderScene()V

    goto/16 :goto_3

    .line 531
    :catch_0
    move-exception v3

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/htc/idlescreen/base/widget/IdleContainer;)Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/idlescreen/base/IdleState$ViewMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->_updateContainerView(Lcom/htc/idlescreen/base/IdleState$ViewMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/widget/IdleContainer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->handleShowHint(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/idlescreen/base/widget/IdleContainer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->handleHideHint()V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingMoved:Z

    return p1
.end method

.method private getActiveIdleView()Lcom/htc/idlescreen/base/widget/IdleView;
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    .line 1021
    .local v0, activeView:Lcom/htc/idlescreen/base/widget/IdleView;
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    .line 1024
    :cond_0
    return-object v0
.end method

.method private handleHideHint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 904
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    if-nez v0, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 908
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 909
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mHintShowed:Z

    if-eqz v0, :cond_0

    .line 910
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mHintShowed:Z

    .line 911
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->setShowHint(ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private handleShowHint(Z)V
    .locals 7
    .parameter "ringBounce"

    .prologue
    const/16 v6, 0x66

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 842
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    if-nez v3, :cond_1

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNeedToShowHint:Z

    if-eqz v3, :cond_0

    .line 846
    iput-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNeedToShowHint:Z

    .line 847
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->isShowHint()Z

    move-result v1

    .line 848
    .local v1, isShowHint:Z
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->getNextHint()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, hint:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 850
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingMoved:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 851
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v2

    .line 853
    .local v2, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 854
    invoke-virtual {v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->playBounce()V

    .line 858
    .end local v2           #ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 859
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getCurrentHint()Ljava/lang/String;

    move-result-object v0

    .line 864
    :cond_3
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mHintShowed:Z

    if-nez v3, :cond_4

    .line 865
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mHintShowed:Z

    .line 866
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    invoke-virtual {v3, v4, v4, v0}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->setShowHint(ZZLjava/lang/String;)V

    .line 872
    :goto_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 873
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 874
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-static {v3, v6, v4, v5}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    goto :goto_0

    .line 869
    :cond_4
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    invoke-virtual {v3, v4, v5, v0}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->setShowHint(ZZLjava/lang/String;)V

    goto :goto_1
.end method

.method private isSame(Lcom/htc/idlescreen/base/widget/IdleView;Lcom/htc/idlescreen/base/widget/IdleView;)Z
    .locals 3
    .parameter "plugin1"
    .parameter "plugin2"

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, scene1:Lcom/htc/fusion/fx/FxScene;
    const/4 v1, 0x0

    .line 304
    .local v1, scene2:Lcom/htc/fusion/fx/FxScene;
    if-eqz p1, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/widget/IdleView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 307
    :cond_0
    if-eqz p2, :cond_1

    .line 308
    invoke-virtual {p2}, Lcom/htc/idlescreen/base/widget/IdleView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 310
    :cond_1
    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    const/4 v2, 0x1

    .line 315
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private mapToHdpi()V
    .locals 5

    .prologue
    const/high16 v4, 0x430c

    const/high16 v3, 0x41f0

    .line 167
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v0

    .line 168
    .local v0, point:Lcom/htc/fusion/Point3F;
    iget v1, v0, Lcom/htc/fusion/Point3F;->y:F

    const/high16 v2, 0x42c8

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/htc/fusion/Point3F;->y:F

    .line 169
    iget v1, v0, Lcom/htc/fusion/Point3F;->x:F

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/htc/fusion/Point3F;->x:F

    .line 170
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 172
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v0

    .line 173
    iget v1, v0, Lcom/htc/fusion/Point3F;->y:F

    const/high16 v2, 0x4120

    add-float/2addr v1, v2

    iput v1, v0, Lcom/htc/fusion/Point3F;->y:F

    .line 174
    iget v1, v0, Lcom/htc/fusion/Point3F;->x:F

    const/high16 v2, 0x420c

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/htc/fusion/Point3F;->x:F

    .line 175
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 177
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v0

    .line 178
    iget v1, v0, Lcom/htc/fusion/Point3F;->y:F

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/htc/fusion/Point3F;->y:F

    .line 179
    iget v1, v0, Lcom/htc/fusion/Point3F;->x:F

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/htc/fusion/Point3F;->x:F

    .line 180
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 182
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v0

    .line 183
    iget v1, v0, Lcom/htc/fusion/Point3F;->y:F

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/htc/fusion/Point3F;->y:F

    .line 184
    iget v1, v0, Lcom/htc/fusion/Point3F;->x:F

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/htc/fusion/Point3F;->x:F

    .line 185
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 186
    return-void
.end method

.method private playShowAnime()V
    .locals 4

    .prologue
    .line 777
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockMarker:Lcom/htc/fusion/fx/Marker;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->isGoningUnlock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 782
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxScene;->getFrame()F

    move-result v0

    .line 783
    .local v0, curFrame:F
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    float-to-int v2, v0

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockMarker:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 784
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFadeOut:Z

    goto :goto_0
.end method

.method private showHint(Ljava/lang/String;J)V
    .locals 3
    .parameter "hint"
    .parameter "time"

    .prologue
    const/16 v2, 0x66

    const/4 v1, 0x1

    .line 894
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    invoke-virtual {v0, v1, v1, p1}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->setShowHint(ZZLjava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 897
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 898
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2, p2, p3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 900
    :cond_0
    return-void
.end method

.method private showUnlockHint(Z)V
    .locals 4
    .parameter "ringBounce"

    .prologue
    const/16 v2, 0x65

    .line 826
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 828
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 829
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 830
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 831
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-static {v1, v0, v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 832
    return-void

    .line 830
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updatePluginToResume()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 629
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mForceUpdate:Z

    .line 632
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mResumed:Z

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/htc/idlescreen/base/widget/IdleView;->gotoResume(Landroid/content/Context;I)V

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/htc/idlescreen/base/widget/IdleView;->gotoPause(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method protected cleanShortcut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 273
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->uninit()V

    .line 275
    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    .line 277
    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mDestroyed:Z

    .line 160
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->cleanShortcut()V

    .line 161
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->removeScene()V

    .line 162
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->uninitRingWidget()V

    .line 163
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->uninitTimeWidget()V

    .line 164
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    check-cast v0, Lcom/htc/idlescreen/base/FxIdleScreen;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->closeOptionsMenu()V

    .line 1346
    return-void
.end method

.method public fadeOut()V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockMarker:Lcom/htc/fusion/fx/Marker;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFadeOut:Z

    if-nez v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "drop"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFadeOut:Z

    .line 956
    :cond_0
    return-void
.end method

.method public getCurrentHint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 881
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->getHint()Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, hint:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 884
    .end local v0           #hint:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-eqz v1, :cond_1

    .line 885
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleView;->getHint()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #hint:Ljava/lang/String;
    goto :goto_0

    .line 888
    .end local v0           #hint:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #hint:Ljava/lang/String;
    goto :goto_0
.end method

.method public getPluginView()Lcom/htc/idlescreen/base/widget/IdleView;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    return-object v0
.end method

.method public getReminderView()Lcom/htc/idlescreen/base/reminderview/ReminderView;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    return-object v0
.end method

.method public getRing()Lcom/htc/idlescreen/base/widget/IdleRing;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    return-object v0
.end method

.method protected getRingFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_lockscreen_hide_navbar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    const-string v0, "Port/base/Lock_ring_motion_transp.m10"

    .line 11
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Port/base/Lock_ring_motion.m10"

    goto :goto_0
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method protected getShortCutFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_lockscreen_hide_bubles"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 16
    const-string v0, "Port/base/Lockscreen_shortcut_transp.m10"

    .line 18
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Port/base/Lockscreen_shortcut.m10"

    goto :goto_0
.end method

.method public getShortcutPanel()Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    return-object v0
.end method

.method protected handleHideMenu()V
    .locals 3

    .prologue
    .line 1281
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->isHideMenu()Z

    move-result v0

    .line 1282
    .local v0, mHideMenu:Z
    if-eqz v0, :cond_1

    .line 1284
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v1, :cond_0

    .line 1285
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->closeMenu()V

    .line 1287
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    if-eqz v1, :cond_1

    .line 1288
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->setEnable(Z)V

    .line 1292
    :cond_1
    return-void
.end method

.method protected initMenu(Lcom/htc/idlescreen/base/widget/IdleView;)V
    .locals 3
    .parameter "idleView"

    .prologue
    .line 1276
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/widget/IdleView;->getMenu()Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    move-result-object v0

    .line 1277
    .local v0, menu:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFakeMenuContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 1278
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFakeMenuContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1279
    return-void
.end method

.method protected initRingWidget()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 212
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    if-nez v1, :cond_0

    .line 213
    const-string v1, "IdleContainer"

    const-string v2, "initRingWidget"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getRingFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 221
    .local v0, ringScene:Lcom/htc/fusion/fx/FxScene;
    :goto_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/widget/IdleRing;->generateRing(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    .line 222
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingListener:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/idlescreen/base/widget/IdleRing;->setCallback(Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;Landroid/os/Looper;)V

    .line 223
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleRing;->init()V

    .line 224
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 226
    .end local v0           #ringScene:Lcom/htc/fusion/fx/FxScene;
    :cond_0
    return-void

    .line 219
    :cond_1
    const-string v1, "Land/base/Lock_ring_motion.m10"

    invoke-static {v1, v3}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .restart local v0       #ringScene:Lcom/htc/fusion/fx/FxScene;
    goto :goto_0
.end method

.method protected initShortcut()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 248
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    if-nez v1, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getShortCutFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 256
    :goto_0
    new-instance v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    .line 257
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    iget-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    invoke-virtual {v1, v0, v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->init(Lcom/htc/fusion/fx/FxScene;Z)V

    .line 258
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->initData(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;)V

    .line 260
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->setVisible(Z)V

    .line 261
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 263
    .end local v0           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_0
    return-void

    .line 254
    .restart local v0       #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_1
    const-string v1, "Land/base/Lockscreen_shortcut.m10"

    invoke-static {v1, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    goto :goto_0
.end method

.method protected initTimeWidget()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 190
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIsPortrait:Z

    if-eqz v2, :cond_0

    .line 191
    const-string v2, "Port/base/Lockscreen_time.m10"

    invoke-static {v2, v4}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 196
    .local v1, timeScene:Lcom/htc/fusion/fx/FxScene;
    :goto_0
    new-instance v2, Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V

    iput-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    .line 197
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->updateTime()V

    .line 198
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->getPlmnAndSpn()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 199
    .local v0, opNames:[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->setOperatorName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    iget v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mClockType:I

    invoke-virtual {v2, v3}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->setType(I)V

    .line 201
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 202
    return-void

    .line 194
    .end local v0           #opNames:[Ljava/lang/CharSequence;
    .end local v1           #timeScene:Lcom/htc/fusion/fx/FxScene;
    :cond_0
    const-string v2, "Land/base/Lockscreen_time.m10"

    invoke-static {v2, v4}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .restart local v1       #timeScene:Lcom/htc/fusion/fx/FxScene;
    goto :goto_0
.end method

.method public isShortcutVisible()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1222
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShowShortcut:Z

    .line 1224
    .local v2, show:Z
    const/4 v0, 0x1

    .line 1225
    .local v0, FLAG_SC_HIDE_PLUGIN:I
    const/4 v1, 0x2

    .line 1226
    .local v1, FLAG_SC_HIDE_REMINDER:I
    const-string v5, "IdleContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isShortcutVisible show:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSCHideFlag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mSCHideFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v5, :cond_1

    .line 1228
    if-eqz v2, :cond_0

    iget v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mSCHideFlag:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    move v2, v3

    .line 1235
    :goto_0
    const-string v5, "IdleContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isShortcutVisible final show:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    if-eqz v2, :cond_3

    iget-boolean v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShowShortcutinDBSetting:Z

    if-eqz v5, :cond_3

    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 1228
    goto :goto_0

    .line 1232
    :cond_1
    if-eqz v2, :cond_2

    iget v5, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mSCHideFlag:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    move v2, v3

    :goto_2
    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v4

    .line 1236
    goto :goto_1
.end method

.method public onCreateOptionMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 1296
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 3
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1301
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->getMenu()Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->getMenu()Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->isMenuPopup()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleRing;->setEnable(Z)V

    .line 1312
    :cond_0
    :goto_0
    const-string v0, "IdleContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keycode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReminderView is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    return-void

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleRing;->setEnable(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v0, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleView;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 663
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mResumed:Z

    .line 667
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v0, :cond_2

    .line 668
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->gotoPause(Landroid/content/Context;I)V

    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/htc/idlescreen/base/widget/IdleView;->gotoPause(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onResume(Z)V

    .line 706
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .parameter "playShowAnime"

    .prologue
    const/16 v2, 0xa

    .line 677
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mResumed:Z

    .line 681
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->resetShortcut(Z)V

    .line 682
    if-eqz p1, :cond_4

    .line 683
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->playShowAnime()V

    .line 692
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    if-eqz v0, :cond_3

    .line 693
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleRing;->reset()V

    .line 696
    :cond_3
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v0, :cond_5

    .line 697
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->gotoResume(Landroid/content/Context;I)V

    goto :goto_0

    .line 686
    :cond_4
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockMarker:Lcom/htc/fusion/fx/Marker;

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 688
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFadeOut:Z

    goto :goto_1

    .line 699
    :cond_5
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/htc/idlescreen/base/widget/IdleView;->gotoResume(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected onRingAnimationEnd(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "result"

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getActiveIdleView()Lcom/htc/idlescreen/base/widget/IdleView;

    move-result-object v0

    .line 1095
    .local v0, activeView:Lcom/htc/idlescreen/base/widget/IdleView;
    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleView;->onRingAnimationEnd(Ljava/lang/String;)V

    .line 1098
    :cond_0
    const-string v2, "drop"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->isGoningUnlock()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1099
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    if-eqz v2, :cond_1

    .line 1100
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->reset()V

    .line 1102
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 1103
    const-string v2, "drop_over"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "drop"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1105
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setShadowVisible(Z)V

    .line 1108
    :cond_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    .line 1109
    .local v1, engineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    if-eqz v1, :cond_3

    .line 1110
    invoke-interface {v1, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->onRingAnimationEnd(Ljava/lang/String;)V

    .line 1112
    :cond_3
    return-void
.end method

.method protected onRingAnimationStart(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getActiveIdleView()Lcom/htc/idlescreen/base/widget/IdleView;

    move-result-object v0

    .line 1075
    .local v0, activeView:Lcom/htc/idlescreen/base/widget/IdleView;
    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleView;->onRingAnimationStart(Ljava/lang/String;)V

    .line 1078
    :cond_0
    const-string v2, "IdleContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRingAnimationStart name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string v2, "touch_bounce"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1080
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setShadowVisible(Z)V

    .line 1086
    :goto_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    .line 1087
    .local v1, engineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    if-eqz v1, :cond_1

    .line 1088
    invoke-interface {v1, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->onRingAnimationStart(Ljava/lang/String;)V

    .line 1090
    :cond_1
    return-void

    .line 1083
    .end local v1           #engineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setShadowVisible(Z)V

    goto :goto_0
.end method

.method protected onRingDragEnd(Z)V
    .locals 7
    .parameter "unlock"

    .prologue
    const/4 v6, 0x0

    .line 1044
    if-eqz p1, :cond_0

    .line 1045
    iput-boolean v6, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNeedToShowHint:Z

    .line 1048
    :cond_0
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getActiveIdleView()Lcom/htc/idlescreen/base/widget/IdleView;

    move-result-object v0

    .line 1049
    .local v0, activeView:Lcom/htc/idlescreen/base/widget/IdleView;
    const-string v3, "IdleContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRingDragEnd activeView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    if-eqz v0, :cond_1

    .line 1051
    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleView;->onRingDragEnd(Z)V

    .line 1053
    :cond_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    if-eqz v3, :cond_2

    .line 1054
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v3, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->onRingDragEnd(Z)V

    .line 1056
    :cond_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    .line 1057
    .local v1, engineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    if-eqz v1, :cond_3

    .line 1058
    invoke-interface {v1, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->onRingDragEnd(Z)V

    .line 1060
    :cond_3
    if-eqz p1, :cond_5

    .line 1061
    const/4 v2, 0x1

    .line 1062
    .local v2, goToUnlock:Z
    if-eqz v0, :cond_4

    .line 1063
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleView;->unlockByRing()Z

    move-result v2

    .line 1066
    :cond_4
    if-eqz v2, :cond_5

    .line 1067
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/idlescreen/base/IdleState;->unlock(JI)V

    .line 1070
    .end local v2           #goToUnlock:Z
    :cond_5
    return-void
.end method

.method protected onRingDragStart()V
    .locals 3

    .prologue
    .line 1029
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getActiveIdleView()Lcom/htc/idlescreen/base/widget/IdleView;

    move-result-object v0

    .line 1030
    .local v0, activeView:Lcom/htc/idlescreen/base/widget/IdleView;
    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleView;->onRingDragStart()V

    .line 1033
    :cond_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    if-eqz v2, :cond_1

    .line 1034
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->onRingDragStart()V

    .line 1036
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    .line 1037
    .local v1, engineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    if-eqz v1, :cond_2

    .line 1038
    invoke-interface {v1}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->onRingDragStart()V

    .line 1040
    :cond_2
    return-void
.end method

.method protected onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 2
    .parameter "drag"

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getActiveIdleView()Lcom/htc/idlescreen/base/widget/IdleView;

    move-result-object v0

    .line 1148
    .local v0, activeView:Lcom/htc/idlescreen/base/widget/IdleView;
    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleView;->onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 1151
    :cond_0
    const-string v1, "onRingDropEnd"

    invoke-static {v1}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method protected onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 14
    .parameter "drag"

    .prologue
    .line 1158
    const-string v11, "onRingDropStart"

    invoke-static {v11}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;)V

    .line 1159
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingMoved:Z

    .line 1160
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getActiveIdleView()Lcom/htc/idlescreen/base/widget/IdleView;

    move-result-object v0

    .line 1161
    .local v0, activeView:Lcom/htc/idlescreen/base/widget/IdleView;
    const/4 v8, 0x0

    .line 1162
    .local v8, unlock:Z
    const/4 v1, 0x0

    .line 1163
    .local v1, delay:Z
    const/4 v9, 0x0

    .line 1164
    .local v9, unlockType:I
    const/4 v5, 0x0

    .line 1165
    .local v5, icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    iget-object v11, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    if-eqz v11, :cond_0

    .line 1166
    iget-object v11, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v11, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->containDragControl(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    move-result-object v5

    .line 1169
    :cond_0
    if-eqz v5, :cond_6

    .line 1170
    const-wide/16 v2, 0x0

    .line 1172
    .local v2, delayStartActivity:J
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/htc/idlescreen/base/IdleState;->needStopFaceLock(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)Z

    move-result v7

    .line 1173
    .local v7, stopFace:Z
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/idlescreen/base/IdleState;->inLocked()Z

    move-result v6

    .line 1174
    .local v6, inLocked:Z
    move v1, v7

    .line 1176
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onRingDropStart shortcut stopFace:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " inLocked:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;)V

    .line 1179
    if-eqz v7, :cond_1

    .line 1180
    iget-object v11, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    check-cast v11, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    const-string v12, "stop_facelock"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1181
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/idlescreen/base/IdleState;->usingFaceLock()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1182
    const-wide/16 v2, 0x3e8

    .line 1186
    :cond_1
    iget-object v11, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11, v2, v3}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->startApplication(Landroid/content/Context;J)V

    .line 1187
    const/4 v8, 0x1

    .line 1188
    const/4 v9, 0x1

    .line 1195
    .end local v2           #delayStartActivity:J
    .end local v6           #inLocked:Z
    .end local v7           #stopFace:Z
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    .line 1196
    .local v4, engineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    if-eqz v4, :cond_3

    .line 1197
    invoke-interface {v4, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->onRingDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z

    .line 1200
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onRingDropStart delay:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;)V

    .line 1201
    if-eqz v8, :cond_5

    .line 1202
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->fadeOut()V

    .line 1203
    const/16 v10, 0x1f4

    .line 1204
    .local v10, wait:I
    if-eqz v1, :cond_4

    .line 1205
    const/16 v10, 0x7d0

    .line 1208
    :cond_4
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v11

    int-to-long v12, v10

    invoke-virtual {v11, v12, v13, v9}, Lcom/htc/idlescreen/base/IdleState;->unlock(JI)V

    .line 1211
    .end local v10           #wait:I
    :cond_5
    return-void

    .line 1190
    .end local v4           #engineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    :cond_6
    if-eqz v0, :cond_2

    .line 1191
    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleView;->onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 1192
    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleView;->unlockByDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z

    move-result v8

    goto :goto_0
.end method

.method protected onRingUnlockEnd()V
    .locals 2

    .prologue
    .line 1138
    const-string v1, "onRingUnlockEnd"

    invoke-static {v1}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;)V

    .line 1139
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getActiveIdleView()Lcom/htc/idlescreen/base/widget/IdleView;

    move-result-object v0

    .line 1140
    .local v0, activeView:Lcom/htc/idlescreen/base/widget/IdleView;
    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleView;->onRingUnlockEnd()V

    .line 1143
    :cond_0
    return-void
.end method

.method protected onRingUnlockStart()V
    .locals 2

    .prologue
    .line 1116
    const-string v1, "onRingUnlockStart"

    invoke-static {v1}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getActiveIdleView()Lcom/htc/idlescreen/base/widget/IdleView;

    move-result-object v0

    .line 1130
    .local v0, activeView:Lcom/htc/idlescreen/base/widget/IdleView;
    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleView;->onRingUnlockStart()V

    .line 1133
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->fadeOut()V

    .line 1134
    return-void
.end method

.method public onScreenOnOffChanged(Z)V
    .locals 1
    .parameter "screenOn"

    .prologue
    .line 742
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mStart:Z

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->reset()V

    .line 745
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->initTimeWidget()V

    .line 712
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->initShortcut()V

    .line 713
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateShortcut()V

    .line 714
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->initRingWidget()V

    .line 717
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 725
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->reset()V

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mStart:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 739
    :goto_0
    return-void

    .line 731
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mStart:Z

    .line 735
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->uninitTimeWidget()V

    .line 736
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->uninitShortcut()V

    .line 737
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->uninitRingWidget()V

    goto :goto_0
.end method

.method public onTouchEvent(III)V
    .locals 3
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 791
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onTouchEvent(III)V

    .line 798
    :cond_0
    :goto_0
    if-nez p1, :cond_3

    .line 799
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/IdleState;->setTouchItem(Z)V

    .line 800
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNeedToShowHint:Z

    .line 801
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingMoved:Z

    .line 803
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/IdleState;->setNextHint(Ljava/lang/String;)V

    .line 818
    :cond_1
    :goto_1
    return-void

    .line 794
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/idlescreen/base/widget/IdleView;->onTouchEvent(III)V

    goto :goto_0

    .line 806
    :cond_3
    if-ne p1, v2, :cond_1

    .line 807
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->isTouchItem()Z

    move-result v0

    if-nez v0, :cond_4

    .line 808
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->getMenu()Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->getMenu()Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->isMenuPopup()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 810
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->HideMenu()V

    .line 816
    :cond_4
    :goto_2
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/IdleState;->setTouchItem(Z)V

    goto :goto_1

    .line 813
    :cond_5
    invoke-direct {p0, v2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->showUnlockHint(Z)V

    goto :goto_2
.end method

.method public pausedRender()V
    .locals 0

    .prologue
    .line 618
    return-void
.end method

.method public removeReminderScene()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 583
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_3

    .line 584
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->pausedRender()V

    .line 585
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 587
    iput-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    .line 588
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFakeMenuContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFakeMenuContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 592
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 595
    :cond_1
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updatePluginToResume()V

    .line 607
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->resumeRender()V

    .line 609
    :cond_3
    return-void

    .line 597
    :cond_4
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-nez v0, :cond_5

    .line 598
    const-string v0, "IdleContainer"

    const-string v1, "removeReminderScene Plugin is null"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 600
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    goto :goto_0

    .line 604
    :cond_5
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mForceUpdate:Z

    if-eqz v0, :cond_2

    .line 605
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updatePluginToResume()V

    goto :goto_0
.end method

.method public removeScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 646
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 648
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleView;->cleanup()V

    .line 653
    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 657
    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    .line 660
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 748
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getPlmnAndSpn()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 752
    .local v0, opNames:[Ljava/lang/CharSequence;
    aget-object v1, v0, v3

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setOperatorName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 753
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateTime()V

    .line 755
    invoke-virtual {p0, v3}, Lcom/htc/idlescreen/base/widget/IdleContainer;->resetShortcut(Z)V

    .line 756
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    if-eqz v1, :cond_2

    .line 757
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    const-string v2, ""

    invoke-virtual {v1, v3, v3, v2}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->setShowHint(ZZLjava/lang/String;)V

    .line 759
    :cond_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    if-eqz v1, :cond_3

    .line 760
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleRing;->reset()V

    .line 762
    :cond_3
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockMarker:Lcom/htc/fusion/fx/Marker;

    if-eqz v1, :cond_4

    .line 763
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 764
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 765
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFadeOut:Z

    .line 767
    :cond_4
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mHintShowed:Z

    .line 768
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v1, :cond_5

    .line 769
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->reset()V

    .line 771
    :cond_5
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleView;->reset()V

    goto :goto_0
.end method

.method protected resetShortcut(Z)V
    .locals 1
    .parameter "playAnime"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->reset(Z)V

    .line 269
    :cond_0
    return-void
.end method

.method public resumeRender()V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bitmap"

    .prologue
    const/4 v5, 0x1

    .line 343
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mBGContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mBGContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 345
    if-eqz p1, :cond_1

    .line 346
    const-string v2, "Port/base/Lockscreen_customize_bg.m10"

    invoke-static {v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 347
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v1, :cond_1

    .line 348
    const-string v2, "dynamicimage.customize_bg"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 349
    .local v0, image:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    if-eqz v0, :cond_0

    .line 350
    const-string v2, "IdleContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBackground bitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 352
    invoke-virtual {v0, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 354
    :cond_0
    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 355
    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setBackground(Lcom/htc/fusion/fx/FxScene;)V

    .line 359
    .end local v0           #image:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v1           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_1
    return-void
.end method

.method public setBackground(Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "bgScene"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mBGContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mBGContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 336
    if-eqz p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mBGContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 340
    :cond_0
    return-void
.end method

.method public setClockType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1317
    iget v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mClockType:I

    if-eq v0, p1, :cond_0

    .line 1318
    iput p1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mClockType:I

    .line 1319
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->setType(I)V

    .line 1323
    :cond_0
    return-void
.end method

.method public setOperatorName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    invoke-virtual {v0, p1, p2}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->setOperatorName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return-void
.end method

.method public setPluginScene(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)Lcom/htc/idlescreen/base/widget/IdleView;
    .locals 4
    .parameter "context"
    .parameter "scene"

    .prologue
    .line 319
    const-string v1, "IdleContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPluginScene scene:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, plugin:Lcom/htc/idlescreen/base/widget/IdleView;
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v1, :cond_1

    .line 322
    if-eqz p2, :cond_0

    .line 323
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleView;

    .end local v0           #plugin:Lcom/htc/idlescreen/base/widget/IdleView;
    invoke-direct {v0, p1, p2, p0}, Lcom/htc/idlescreen/base/widget/IdleView;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;Lcom/htc/idlescreen/base/widget/IdleContainer;)V

    .line 325
    .restart local v0       #plugin:Lcom/htc/idlescreen/base/widget/IdleView;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setPluginScene(Lcom/htc/idlescreen/base/widget/IdleView;)V

    .line 330
    :goto_0
    return-object v0

    .line 328
    :cond_1
    const-string v1, "IdleContainer"

    const-string v2, "setPluginScene mPluginContainer is null"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPluginScene(Lcom/htc/idlescreen/base/widget/IdleView;)V
    .locals 5
    .parameter "plugin"

    .prologue
    const/16 v4, 0xa

    .line 362
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mResumed:Z

    .line 363
    .local v1, resume:Z
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mForceUpdate:Z

    .line 364
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v3, :cond_0

    .line 365
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-ne v3, p1, :cond_1

    .line 366
    const-string v3, "IdleContainer"

    const-string v4, "setPluginScene is the same"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    .line 371
    .local v0, oldPlugin:Lcom/htc/idlescreen/base/widget/IdleView;
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    .line 372
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->getViewMode()Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-result-object v2

    .line 373
    .local v2, viewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateContainerView(Lcom/htc/idlescreen/base/IdleState$ViewMode;I)V

    .line 375
    if-eqz p1, :cond_3

    .line 376
    sget-object v3, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NORMAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-eq v2, v3, :cond_2

    .line 377
    const/4 v1, 0x0

    .line 380
    :cond_2
    if-eqz v1, :cond_4

    .line 381
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, v4}, Lcom/htc/idlescreen/base/widget/IdleView;->gotoResume(Landroid/content/Context;I)V

    .line 388
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleView;->cleanup()V

    goto :goto_0

    .line 384
    :cond_4
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, v4}, Lcom/htc/idlescreen/base/widget/IdleView;->gotoPause(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public setReminderScene(Lcom/htc/idlescreen/base/reminderview/ReminderView;)V
    .locals 5
    .parameter "reminder"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 541
    const-string v0, "IdleContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReminderScene mResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_6

    .line 543
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->pausedRender()V

    .line 544
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginView:Lcom/htc/idlescreen/base/widget/IdleView;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Lcom/htc/idlescreen/base/widget/IdleView;->gotoPause(Landroid/content/Context;I)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eq v0, p1, :cond_5

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 550
    iput-object v3, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFakeMenuContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFakeMenuContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 557
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    .line 558
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_7

    .line 559
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 560
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNotificationContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 567
    :goto_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->getMenu()Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFakeMenuContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_4

    .line 568
    const-string v0, "IdleContainer"

    const-string v1, "initMenu"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mReminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->initMenu(Lcom/htc/idlescreen/base/widget/IdleView;)V

    .line 571
    :cond_4
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mResumed:Z

    if-eqz v0, :cond_8

    .line 572
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->gotoResume(Landroid/content/Context;I)V

    .line 578
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->resumeRender()V

    .line 580
    :cond_6
    return-void

    .line 563
    :cond_7
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mPluginContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    goto :goto_0

    .line 575
    :cond_8
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->gotoPause(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public setShadowVisible(Z)V
    .locals 4
    .parameter "show"

    .prologue
    .line 1253
    const-string v1, "IdleContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShadowVisible show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    .line 1255
    .local v0, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleRing;->setShadowVisible(Z)V

    .line 1258
    :cond_0
    return-void
.end method

.method public setShortcutVisible(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1241
    iput p1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mSCHideFlag:I

    .line 1242
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateShortcutVisible()V

    .line 1243
    return-void
.end method

.method public setUnlockFrame()V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockMarker:Lcom/htc/fusion/fx/Marker;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFadeOut:Z

    if-nez v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUnlockMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mFadeOut:Z

    .line 965
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 299
    :cond_0
    return-void
.end method

.method public showHint()V
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mNeedToShowHint:Z

    .line 836
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->showUnlockHint(Z)V

    .line 837
    return-void
.end method

.method protected uninitRingWidget()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "IdleContainer"

    const-string v1, "uninitRingWidget"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mRingContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 232
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleRing;->uninit()V

    .line 233
    iput-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mIdleRing:Lcom/htc/idlescreen/base/widget/IdleRing;

    .line 235
    :cond_0
    return-void
.end method

.method public uninitShortcut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->uninit()V

    .line 240
    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 245
    :cond_1
    return-void
.end method

.method protected uninitTimeWidget()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 207
    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    .line 209
    :cond_0
    return-void
.end method

.method public updateAppCount(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->updateAppCount(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    .line 1264
    :cond_0
    return-void
.end method

.method public updateContainerView(Lcom/htc/idlescreen/base/IdleState$ViewMode;I)V
    .locals 6
    .parameter "viewMode"
    .parameter "delay"

    .prologue
    .line 397
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 421
    :goto_0
    return-void

    .line 400
    :cond_0
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 401
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getReminderView()Lcom/htc/idlescreen/base/reminderview/ReminderView;

    move-result-object v0

    .line 402
    .local v0, reminderView:Lcom/htc/idlescreen/base/reminderview/ReminderView;
    const/4 v1, 0x0

    .line 403
    .local v1, sameReminder:Z
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 405
    const/4 v1, 0x1

    .line 407
    :cond_1
    const-string v2, "IdleContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContainerView viewMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sameReminder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    if-eqz v1, :cond_2

    .line 411
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->update()V

    .line 412
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->playShowAnime()V

    goto :goto_0

    .line 414
    :cond_2
    if-gtz p2, :cond_3

    .line 415
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->_updateContainerView(Lcom/htc/idlescreen/base/IdleState$ViewMode;)V

    goto :goto_0

    .line 419
    :cond_3
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    int-to-long v4, p2

    invoke-static {v2, v3, v4, v5}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method

.method public updateShortcut()V
    .locals 1

    .prologue
    .line 1267
    invoke-static {}, Lcom/htc/idlescreen/base/setting/SettingDB;->getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/setting/SettingDB;->isShortcutVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShowShortcutinDBSetting:Z

    .line 1268
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->resetIcon()V

    .line 1271
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateShortcutVisible()V

    .line 1272
    return-void
.end method

.method public updateShortcutVisible()V
    .locals 2

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->isShortcutVisible()Z

    move-result v0

    .line 1247
    .local v0, show:Z
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    if-eqz v1, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mShortcutPanel:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    invoke-virtual {v1, v0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->setVisible(Z)V

    .line 1250
    :cond_0
    return-void
.end method

.method public updateTime()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleContainer;->mTimeWidget:Lcom/htc/idlescreen/base/widget/FxTimeWidget;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->updateTime()V

    .line 293
    :cond_0
    return-void
.end method

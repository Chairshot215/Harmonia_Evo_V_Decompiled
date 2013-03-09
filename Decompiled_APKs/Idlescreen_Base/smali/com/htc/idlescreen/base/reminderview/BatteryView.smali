.class public Lcom/htc/idlescreen/base/reminderview/BatteryView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "BatteryView.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "BatteryView"


# instance fields
.field private mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mEventLabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field private mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Z)V
    .locals 0
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "scene"
    .parameter "isPortrait"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 47
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/BatteryView;->initScene()V

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/BatteryView;
    .locals 7
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 34
    const-string v6, "Port/base/Lockscreen_lowbatt.m10"

    .line 35
    .local v6, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 36
    const-string v6, "Land/base/Lockscreen_lowbatt.m10"

    .line 38
    :cond_0
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 39
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    if-nez v4, :cond_1

    .line 40
    const-string v0, "BatteryView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance scene null m10Path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_1
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/BatteryView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/idlescreen/base/reminderview/BatteryView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;Z)V

    return-object v0
.end method

.method private startBatterySetting()V
    .locals 5

    .prologue
    .line 120
    const-string v2, "com.android.settings"

    .line 121
    .local v2, packageName:Ljava/lang/String;
    const-string v0, "com.android.settings.framework.activity.powersaver.PowersaverSettings"

    .line 122
    .local v0, className:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.framework.activity.powersaver.PowersaverSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v3, 0x1080

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->uninit()V

    .line 73
    :cond_1
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->cleanup()V

    .line 74
    return-void
.end method

.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->BATTERY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 53
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/BatteryView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 54
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, res:Landroid/content/res/Resources;
    sget-object v2, Lcom/htc/idlescreen/base/mode10/BatteryR;->Battery_RES_DRAG_SETTING:[Ljava/lang/String;

    const v3, 0x7f040027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/htc/idlescreen/base/reminderview/BatteryView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 57
    sget-object v2, Lcom/htc/idlescreen/base/mode10/BatteryR;->Battery_RES_DRAG_DISMISS:[Ljava/lang/String;

    const v3, 0x20c00ab

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/htc/idlescreen/base/reminderview/BatteryView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 58
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v2, v5}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setVisible(Z)V

    .line 59
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v2, v5}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setVisible(Z)V

    .line 61
    const-string v2, "textlabel.lowbatt"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 62
    const-string v2, "textlabel.lowbatt_event"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 63
    const-string v2, "textlabel.lowbatt_eventinfo"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mEventLabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 65
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/BatteryView;->update()V

    .line 66
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 2
    .parameter "draggable"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 107
    const-string v0, "BatteryView"

    const-string v1, "onDropEnd"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->unlock()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->dismissLowBattery()V

    goto :goto_0
.end method

.method public onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 2
    .parameter "draggable"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->onRingDropStart(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 93
    const-string v0, "BatteryView"

    const-string v1, "onDropStart"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mSettingBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/ReminderButton;->getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/htc/idlescreen/base/reminderview/BatteryView;->startBatterySetting()V

    .line 100
    :cond_0
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    .line 129
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 130
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->getBatteryLevel()I

    move-result v0

    .line 132
    .local v0, level:I
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const v3, 0x7f040030

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const v3, 0x7f040032

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/BatteryView;->mEventLabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const v3, 0x7f040033

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 135
    return-void
.end method

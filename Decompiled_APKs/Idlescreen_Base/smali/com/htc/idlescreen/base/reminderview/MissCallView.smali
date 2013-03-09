.class public Lcom/htc/idlescreen/base/reminderview/MissCallView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "MissCallView.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "MissCallView"


# instance fields
.field protected mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mInfo2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "context"
    .parameter "idleScreen"
    .parameter "container"
    .parameter "scene"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 40
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/MissCallView;->initScene()V

    .line 41
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/MissCallView;
    .locals 3
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 24
    const-string v0, "Port/base/Lockscreen_highprio_missedcall.m10"

    .line 25
    .local v0, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 26
    const-string v0, "Land/base/Lockscreen_highprio_missedcall.m10"

    .line 28
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 29
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v1, :cond_1

    .line 30
    new-instance v2, Lcom/htc/idlescreen/base/reminderview/MissCallView;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/idlescreen/base/reminderview/MissCallView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 32
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setMessage([Ljava/lang/String;)V
    .locals 5
    .parameter "strings"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    array-length v0, p1

    .line 78
    .local v0, length:I
    if-lez v0, :cond_0

    aget-object v1, p1, v2

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 85
    :goto_0
    if-le v0, v3, :cond_1

    aget-object v1, p1, v3

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 92
    :goto_1
    if-le v0, v4, :cond_2

    aget-object v1, p1, v4

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mInfo2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 104
    .end local v0           #length:I
    :goto_2
    return-void

    .line 82
    .restart local v0       #length:I
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mInfo2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_2

    .line 100
    .end local v0           #length:I
    :cond_3
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mInfo2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MISSCALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "textlabel.missedcall"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 45
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "textlabel.missedcall_number"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 46
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "textlabel.missedcall_info"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MissCallView;->mInfo2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 47
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/MissCallView;->update()V

    .line 48
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 59
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->getNtfMonitor()Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->getCurrentNtf()Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    move-result-object v1

    .line 61
    .local v1, ntf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 62
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->getContent()[Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, contents:[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/reminderview/MissCallView;->setMessage([Ljava/lang/String;)V

    .line 69
    .end local v0           #contents:[Ljava/lang/String;
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v2, "MissCallView"

    const-string v3, "update current ntf type is not right"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/idlescreen/base/reminderview/MissCallView;->setMessage([Ljava/lang/String;)V

    goto :goto_0
.end method

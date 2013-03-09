.class public Lcom/htc/idlescreen/base/reminderview/NoSimView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "NoSimView.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "NoSimView"


# instance fields
.field private mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mEventLabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTlWarning:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "context"
    .parameter "idleScreen"
    .parameter "container"
    .parameter "scene"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/NoSimView;->initScene()V

    .line 60
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/NoSimView;
    .locals 4
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    const/4 v3, 0x1

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    const-string v0, "Port/base/Lockscreen_nosim.m10"

    .line 35
    .local v0, m10Path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isUIMOnly()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isBothUIMSIMCard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    :cond_0
    if-eqz p3, :cond_4

    .line 37
    const-string v0, "Port/base/Lockscreen_nouim.m10"

    .line 41
    :goto_0
    invoke-static {v0, v3}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 44
    :cond_1
    if-nez v1, :cond_3

    .line 45
    const-string v0, "Port/base/Lockscreen_nosim.m10"

    .line 46
    if-nez p3, :cond_2

    .line 47
    const-string v0, "Land/base/Lockscreen_nosim.m10"

    .line 49
    :cond_2
    invoke-static {v0, v3}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 51
    :cond_3
    new-instance v2, Lcom/htc/idlescreen/base/reminderview/NoSimView;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/idlescreen/base/reminderview/NoSimView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    return-object v2

    .line 39
    :cond_4
    const-string v0, "Land/base/Lockscreen_nouim.m10"

    goto :goto_0
.end method


# virtual methods
.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 3

    .prologue
    .line 64
    const-string v1, "NoSimView"

    const-string v2, "initScene"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 66
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/NoSimView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 67
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    const-string v1, "timeline.nosim"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mTlWarning:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 69
    const-string v1, "textlabel.nosim"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 75
    const-string v1, "textlabel.nosim_event"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 76
    const-string v1, "textlabel.nosim_eventinfo"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mEventLabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 78
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/NoSimView;->update()V

    .line 80
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mTlWarning:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 86
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/idlescreen/base/util/MyUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mTlWarning:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 88
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mTlWarning:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "warning_bubble"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/idlescreen/base/util/TelephonyUtil;->getTelephonyStateString(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, TeleStrings:[Ljava/lang/String;
    aget-object v4, v0, v6

    if-eqz v4, :cond_1

    .line 100
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 101
    .local v2, simTitleSize:I
    if-lez v2, :cond_0

    .line 102
    new-instance v1, Landroid/text/SpannableStringBuilder;

    aget-object v4, v0, v6

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    .local v1, contentStringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v3, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 104
    .local v3, span_size:Landroid/text/style/CharacterStyle;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 105
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 116
    .end local v1           #contentStringBuilder:Landroid/text/SpannableStringBuilder;
    .end local v2           #simTitleSize:I
    .end local v3           #span_size:Landroid/text/style/CharacterStyle;
    :goto_0
    aget-object v4, v0, v7

    if-eqz v4, :cond_2

    .line 117
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 123
    :goto_1
    aget-object v4, v0, v8

    if-eqz v4, :cond_3

    .line 124
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mEventLabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v5, v0, v8

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 129
    :goto_2
    return-void

    .line 108
    .restart local v2       #simTitleSize:I
    :cond_0
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    .end local v2           #simTitleSize:I
    :cond_1
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_3
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/NoSimView;->mEventLabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_2
.end method

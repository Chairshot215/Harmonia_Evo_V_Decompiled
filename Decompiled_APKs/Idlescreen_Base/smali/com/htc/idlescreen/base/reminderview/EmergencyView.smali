.class public Lcom/htc/idlescreen/base/reminderview/EmergencyView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "EmergencyView.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "EmergencyView"


# instance fields
.field protected mBorder:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field protected mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mNotificationViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field private mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

.field protected mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

.field private mPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTimeline_notification:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "context"
    .parameter "idleScreen"
    .parameter "container"
    .parameter "scene"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->initScene()V

    .line 68
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/EmergencyView;
    .locals 3
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 55
    const-string v0, "Port/base/Lockscreen_notification.m10"

    .line 56
    .local v0, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 57
    const-string v0, "Land/base/Lockscreen_notification.m10"

    .line 59
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 60
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v2, Lcom/htc/idlescreen/base/reminderview/EmergencyView;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/idlescreen/base/reminderview/EmergencyView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    return-object v2
.end method


# virtual methods
.method public getDescript(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .parameter "descript"

    .prologue
    .line 140
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    .local v0, contentStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 143
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x4c4c4d

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 144
    .local v1, span_color:Landroid/text/style/CharacterStyle;
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 146
    .end local v1           #span_color:Landroid/text/style/CharacterStyle;
    :cond_0
    return-object v0
.end method

.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->EMERENCY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 71
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 73
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mScene:Lcom/htc/fusion/fx/FxScene;

    sget-object v5, Lcom/htc/idlescreen/base/mode10/M10R;->NOTIFICATION_RES_DRAG:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 74
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "timeline.notification_indicator"

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 75
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "timeline.notification"

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mTimeline_notification:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 76
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "textlabel.notification"

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 77
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "textlabel.notification_event"

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 79
    sget-object v3, Lcom/htc/idlescreen/base/mode10/M10R;->NOTIFICATION_RES_DRAG:[Ljava/lang/String;

    invoke-virtual {p0, p0, v3}, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->getReminderPanel(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;)Lcom/htc/idlescreen/base/widget/ReminderPanel;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    .line 80
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "dynamicimage.incomingcallphoto"

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 81
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "dynamicimage.notification"

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 82
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mTimeline1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "timeline.incomingcall_border"

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mBorder:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 83
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->setEnable(Ljava/lang/Boolean;)V

    .line 86
    :try_start_0
    sget-object v3, Lcom/htc/idlescreen/base/mode10/M10R;->NOTIFICATION_RES_DRAG_OK:[Ljava/lang/String;

    const v5, 0x20c01f4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {p0, p0, v3, v5, v6}, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 87
    sget-object v3, Lcom/htc/idlescreen/base/mode10/M10R;->NOTIFICATION_RES_DRAG_DISMISS:[Ljava/lang/String;

    const v5, 0x20c00ab

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {p0, p0, v3, v5, v6}, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->getReminderButton(Lcom/htc/idlescreen/base/widget/IdleView;[Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/idlescreen/base/widget/ReminderButton;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mContext:Landroid/content/Context;

    const v6, 0x7f020005

    invoke-virtual {v3, v5, v6}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 95
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v3, v7}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setVisible(Z)V

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mContext:Landroid/content/Context;

    const v6, 0x7f020003

    invoke-virtual {v3, v5, v6}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setFakeImage(Landroid/content/Context;I)V

    .line 100
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    invoke-virtual {v3, v7}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setVisible(Z)V

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f02000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v3, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-virtual {v3, v1}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 106
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mBorder:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 107
    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mIndictorPhotoImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-object v3, v4

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->update()V

    .line 109
    return-void

    .line 89
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    iput-object v4, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mOKBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    .line 91
    iput-object v4, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mDismissBtn:Lcom/htc/idlescreen/base/widget/ReminderButton;

    goto :goto_0
.end method

.method public isShowShortcut()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .locals 6

    .prologue
    .line 120
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/idlescreen/base/IdleState;->getThreeLMCtrl()Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    move-result-object v0

    .line 121
    .local v0, ctrl:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->getDescript(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 132
    .local v1, info:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-virtual {v4, v3}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->setTitle(Ljava/lang/String;)V

    .line 135
    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/EmergencyView;->mPanel:Lcom/htc/idlescreen/base/widget/ReminderPanel;

    invoke-virtual {v4, v1}, Lcom/htc/idlescreen/base/widget/ReminderPanel;->setInfo(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

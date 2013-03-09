.class public Lcom/android/camera/effect/EffectPanelUI;
.super Lcom/android/camera/component/UIComponent;
.source "EffectPanelUI.java"


# static fields
.field private static final EFFECT_PANEL_TIMEOUT:I = 0x1388

.field private static final MSG_CLOSE_EFFECT_PANEL:I = 0x1


# instance fields
.field private m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

.field private final m_ActionScreenClosedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ActionScreenOpenEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_CloseUIEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_EffectAppliedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_EffectButton:Landroid/view/View;

.field private m_EffectButtonContainer:Lcom/android/camera/widget/OffsetRelativeLayout;

.field private m_EffectButtonContent:Lcom/android/camera/widget/ImageTextView;

.field private m_EffectButtonContentPanel:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_EffectList:Lcom/android/camera/effect/EffectList;

.field private m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

.field private final m_EffectListUpdatedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_EffectListView:Landroid/widget/ListView;

.field private m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_EffectManager:Lcom/android/camera/effect/EffectManager;

.field private m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

.field private final m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_MenuOpenEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_OpenUIEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_QueryCanFocusEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_QueryEffectPanelOpenEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RequestClosePanelEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RequestOpenPanelEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RequestTogglePanelEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ResumingEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Effect Panel"

    const/4 v1, 0x1

    const v2, 0x7f080059

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$1;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreenClosedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$2;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreenOpenEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$3;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_CloseUIEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$4;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$4;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectAppliedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$5;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$5;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListUpdatedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$6;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$6;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$7;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$7;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_MenuOpenEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$8;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$8;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_OpenUIEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$9;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$9;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_QueryCanFocusEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$10;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$10;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_QueryEffectPanelOpenEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$11;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$11;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_RequestClosePanelEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$12;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$12;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_RequestOpenPanelEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$13;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$13;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_RequestTogglePanelEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$14;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$14;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ResumingEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI$15;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectPanelUI$15;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/actionscreen/CommonActionScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/actionscreen/CommonActionScreen;)Lcom/android/camera/actionscreen/CommonActionScreen;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/EffectPanelUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->togglePanel(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->applySkin()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/effect/EffectPanelUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectListOrientation(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p7}, Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContentPanel:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->onEffectButtonClicked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/effect/EffectPanelUI;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/effect/EffectPanelUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonPosition(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p7}, Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/effect/EffectPanelUI;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->isCaptureUIBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonContent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p7}, Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/MediaInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->startPhotoEnhancer(Lcom/android/camera/MediaInfo;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/MediaInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->startVideoTrimmer(Lcom/android/camera/MediaInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/OffsetRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Lcom/android/camera/widget/OffsetRelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/SlidingPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectPanelAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->initializeUI()V

    return-void
.end method

.method private applySkin()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f0a0019

    const v3, 0x7f0200f8

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private initializeUI()V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0800a5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/SlidingPanel;

    iput-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    const v4, 0x7f0800a6

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f0800a7

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectManager;->getEffectList()Lcom/android/camera/effect/EffectList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectList:Lcom/android/camera/effect/EffectList;

    new-instance v3, Lcom/android/camera/effect/EffectPanelAdapter;

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-direct {v3, v1, v4}, Lcom/android/camera/effect/EffectPanelAdapter;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/EffectList;)V

    iput-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/effect/EffectPanelAdapter;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    new-instance v4, Lcom/android/camera/effect/EffectPanelUI$17;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectPanelUI$17;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/SlidingPanel;->setOnPanelCloseListener(Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    new-instance v4, Lcom/android/camera/effect/EffectPanelUI$18;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectPanelUI$18;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/SlidingPanel;->setOnPanelMovingListener(Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    new-instance v4, Lcom/android/camera/effect/EffectPanelUI$19;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectPanelUI$19;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/SlidingPanel;->setOnPanelOpenListener(Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportTrackBallFocus()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    const v4, 0x7f0201a3

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelector(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/camera/effect/EffectPanelUI$20;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectPanelUI$20;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/camera/effect/EffectPanelUI$21;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectPanelUI$21;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectListOrientation(I)V

    goto/16 :goto_0
.end method

.method private onEffectButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Lcom/android/camera/widget/OffsetRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/widget/OffsetRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectPanelUI;->togglePanel(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    new-instance v1, Lcom/android/camera/effect/EffectPanelUI$22;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/EffectPanelUI$22;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->performAction(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No action screen to perform action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startPhotoEnhancer(Lcom/android/camera/MediaInfo;)V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPhotoEnhancer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/camera/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.htc.album"

    const-string v3, "com.htc.album.addons.photoenhancer.PhotoEnhancer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "filePath"

    iget-object v3, p1, Lcom/android/camera/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "degree"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot start photo enhancer"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    goto :goto_0
.end method

.method private startVideoTrimmer(Lcom/android/camera/MediaInfo;)V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVideoTrimmer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/camera/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.muvee.video.trimer.VIDEO_TRIM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.muvee.video.trimer"

    const-string v4, "com.muvee.video.trimer.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "data"

    iget-object v3, p1, Lcom/android/camera/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot start photo enhancer"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    goto :goto_0
.end method

.method private togglePanel(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->initializeUI()V

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/SlidingPanel;->toggle(Z)V

    :cond_0
    return-void
.end method

.method private updateEffectButtonAvailability()V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Lcom/android/camera/widget/OffsetRelativeLayout;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectManager;->getCurrentScene()Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/camera/effect/AutoScene;

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContent:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateEffectButtonContent()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v2

    if-nez v2, :cond_0

    const v0, 0x7f02006e

    const v1, 0x7f0a004d

    :goto_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContent:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v0}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContent:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v0, 0x7f02006e

    const v1, 0x7f0a004f

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020084

    const v1, 0x7f0a0050

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEffectButtonPosition(I)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingPanel;->getHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Lcom/android/camera/widget/OffsetRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/OffsetRelativeLayout;->setOffsetY(I)V

    return-void
.end method

.method private updateEffectListOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectPanelAdapter;->setOrientation(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    :goto_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingPanel;->close(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getBaseLayout()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/OffsetRelativeLayout;

    iput-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Lcom/android/camera/widget/OffsetRelativeLayout;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Lcom/android/camera/widget/OffsetRelativeLayout;

    const v4, 0x7f0800a9

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/OffsetRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Lcom/android/camera/widget/OffsetRelativeLayout;

    const v4, 0x7f0800aa

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/OffsetRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContentPanel:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContentPanel:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f0800ab

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/ImageTextView;

    iput-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContent:Lcom/android/camera/widget/ImageTextView;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContent:Lcom/android/camera/widget/ImageTextView;

    const v4, 0x7f0b00fd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/ImageTextView;->setImageTextPadding(I)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    new-instance v4, Lcom/android/camera/effect/EffectPanelUI$16;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectPanelUI$16;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->applySkin()V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    const-string v3, "ActionScreen.Open"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreenOpenEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "ActionScreen.Closing"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_CloseUIEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "ActionScreen.Closed"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreenClosedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "CaptureUI.Closed"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_CloseUIEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "CaptureUI.Open"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_OpenUIEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Effect.Applied"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectAppliedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "EffectList.Updated"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListUpdatedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Key.Down"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Menu.Opening"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_MenuOpenEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "CameraActivity.Pausing"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_CloseUIEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "CameraActivity.PreviewStarted"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_OpenUIEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Query.CanTriggerFocus"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_QueryCanFocusEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Query.IsEffectPanelOpen"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_QueryEffectPanelOpenEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Request.CloseEffectPanel"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_RequestClosePanelEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Request.OpenEffectPanel"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_RequestOpenPanelEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Request.ToggleEffectPanel"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_RequestTogglePanelEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Camera.Restart"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_CloseUIEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "CameraActivity.Resuming"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ResumingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "CameraActivity.RotateChanged"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Mode.Switched"

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelUI;->m_CloseUIEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

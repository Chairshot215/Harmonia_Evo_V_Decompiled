.class public final Lcom/android/camera/component/HdrUI;
.super Lcom/android/camera/component/UIComponent;
.source "HdrUI.java"


# static fields
.field public static final MSG_PHOTO_PROCESSED:I = 0x2

.field public static final MSG_PROCESSING_PHOTO:I = 0x1

.field public static final NAME:Ljava/lang/String; = "HDR UI"


# instance fields
.field private final m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_HdrController:Lcom/android/camera/component/HdrController;

.field private m_Indicator:Lcom/android/camera/rotate/RotateImageView;

.field private m_IndicatorContainer:Landroid/view/View;

.field private m_IndicatorTopPaddingView:Landroid/view/View;

.field private m_IsCaptureUINeeded:Z

.field private m_IsCaptureUIOpen:Z

.field private m_IsModeEntered:Z

.field private final m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "HDR UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v0, Lcom/android/camera/component/HdrUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HdrUI$1;-><init>(Lcom/android/camera/component/HdrUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HdrUI;->m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/HdrUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HdrUI$2;-><init>(Lcom/android/camera/component/HdrUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HdrUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/HdrUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HdrUI$3;-><init>(Lcom/android/camera/component/HdrUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HdrUI;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/HdrUI$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HdrUI$4;-><init>(Lcom/android/camera/component/HdrUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HdrUI;->m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HdrUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/HdrUI;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/HdrUI;->showIndicator(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/HdrUI;)Lcom/android/camera/rotate/RotateImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/HdrUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/HdrUI;->updateIndicatorOrientation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/HdrUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/HdrUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/HdrUI;->updateIndicatorLocation(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/HdrUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->closeCaptureUI()V

    return-void
.end method

.method private closeCaptureUI()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/android/camera/component/HdrUI;->showIndicator(ZZ)V

    iput-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUINeeded:Z

    iput-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/camera/component/HdrController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method

.method private onPhotoProcessed(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HdrUI;->showProcessingDialog(Z)V

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    return-void
.end method

.method private onPhotoProcessing()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HdrUI;->showProcessingDialog(Z)V

    return-void
.end method

.method private openCaptureUI()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUINeeded:Z

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPreviewStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateImageView;->setDefinedOrientation(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isEffectPanelOpen()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v3, v3}, Lcom/android/camera/component/HdrUI;->showIndicator(ZZ)V

    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CaptureUI.Closed"

    new-instance v2, Lcom/android/camera/component/HdrUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrUI$5;-><init>(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CaptureUI.Open"

    new-instance v2, Lcom/android/camera/component/HdrUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrUI$6;-><init>(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "EffectPanel.Closed"

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "EffectPanel.Opening"

    new-instance v2, Lcom/android/camera/component/HdrUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrUI$7;-><init>(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.PreviewStarted"

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.RotateChanged"

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "SelfTimer.Changed"

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method

.method private showIndicator(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isSelfTimerOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/HdrUI;->updateIndicatorLocation(Z)V

    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/HdrUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private updateIndicatorLocation(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b0085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b0084

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private updateIndicatorOrientation(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    :cond_1
    const v2, 0x7f0b0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v2, 0x7f0b0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isSelfTimerOn()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/component/HdrUI;->updateIndicatorLocation(Z)V

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v2, p1}, Lcom/android/camera/rotate/RotateImageView;->setDefinedOrientation(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v2, 0x7f0b0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1
.end method


# virtual methods
.method public enterHdrMode()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter HDR mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter HDR mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HdrUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->openCaptureUI()V

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    return-void
.end method

.method public exitHdrMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit HDR mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->closeCaptureUI()V

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HdrUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/component/HdrUI;->onPhotoProcessed(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->onPhotoProcessing()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    const-string v2, "HDR Controller"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/HdrController;

    iput-object v1, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    invoke-virtual {v1, p0}, Lcom/android/camera/component/HdrController;->link(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0800b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->registerListeners()V

    return-void
.end method

.method public isHdrModeEntered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    return v0
.end method

.class public final Lcom/android/camera/component/ZoomBar;
.super Lcom/android/camera/component/UIComponent;
.source "ZoomBar.java"


# static fields
.field private static final MSG_CHANGE_ZOOM:I = 0x1

.field private static final MSG_SHOW_ZOOM_BAR:I = 0x2


# instance fields
.field private final m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

.field private m_IsUpdatingZoom:Z

.field private final m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RecordingTimeChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ShowZoomBarEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_StopRecordingEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ZoomBar:Landroid/widget/SeekBar;

.field private m_ZoomBarContainer:Landroid/view/View;

.field private m_ZoomInView:Landroid/view/View;

.field private final m_ZoomLockChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ZoomOutView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Zoom Bar"

    const/4 v1, 0x1

    const v2, 0x7f08004a

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v0, Lcom/android/camera/component/ZoomBar$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$1;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/ZoomBar$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$2;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/ZoomBar$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$3;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_RecordingTimeChangedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/ZoomBar$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$4;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ShowZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/ZoomBar$5;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$5;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_StopRecordingEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/ZoomBar$6;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$6;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomLockChangedEventHandler:Lcom/android/camera/IEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ZoomBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->hideZoomBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/ZoomBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ZoomBar;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ZoomBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/component/ZoomBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/component/ZoomBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->cancelAutoFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomInView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomOutView:Landroid/view/View;

    return-object v0
.end method

.method private cancelAutoFocus()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->unblockCaptureUI()V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideZoomBar()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/ZoomBar;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ZoomBar;->removeMessages(I)V

    return-void
.end method

.method private showZoomBar()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isMenuOpen()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isZoomLocked()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->syncFromCurrentZoom()V

    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/component/ZoomBar;->showUI(Landroid/view/View;ZZ)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ZoomBar;->removeMessages(I)V

    goto :goto_0
.end method

.method private syncFromCurrentZoom()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    sget v1, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isMenuOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isCaptureUIOpen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->cancelAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->isCaptureUIBlocked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    const/4 v5, 0x3

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0801ae

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v4, 0x7f0801b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v4, 0x7f0801af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomInView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v4, 0x7f0801b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomOutView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v4, 0x7f0801b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    new-instance v3, Lcom/android/camera/component/ZoomBar$7;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ZoomBar$7;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMaximumZoom()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/camera/component/ZoomBar$8;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ZoomBar$8;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    const-string v3, "CaptureUI.Closed"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "CaptureUI.Open"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ShowZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Key.Down"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Menu.Closed"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ShowZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Menu.Opening"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "CameraActivity.PreviewStarted"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ShowZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Recording.TimeChanged"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_RecordingTimeChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Camera.Restart"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "CameraActivity.RotateChanged"

    new-instance v4, Lcom/android/camera/component/ZoomBar$9;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ZoomBar$9;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Mode.Switched"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Recording.Stopping"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_StopRecordingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v3, "Zoom.LockedStateChanged"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomLockChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

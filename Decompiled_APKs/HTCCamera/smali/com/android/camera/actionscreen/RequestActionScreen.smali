.class public Lcom/android/camera/actionscreen/RequestActionScreen;
.super Lcom/android/camera/actionscreen/ActionScreen;
.source "RequestActionScreen.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Request Action Screen"


# instance fields
.field private m_DoneButton:Landroid/view/View;

.field private m_IsLayoutLoaded:Z

.field private m_IsRequestLayoutOpen:Z

.field private m_ReCaptureButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2

    const-string v0, "Request Action Screen"

    const v1, 0x7f030037

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/actionscreen/ActionScreen;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actionscreen/RequestActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->onDoneClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/actionscreen/RequestActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->onReCaptureClicked()V

    return-void
.end method

.method private onDoneClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onDoneClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->returnRequestedMedia()V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onDoneClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onReCaptureClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onReCaptureClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->deleteLatestMedia()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actionscreen/RequestActionScreen;->close(IZ)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onReCaptureClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openRequestLayout()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    goto :goto_0
.end method


# virtual methods
.method protected closeActionScreen(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->completeCloseActionScreen()V

    :cond_0
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/actionscreen/ActionScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->onReCaptureClicked()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/camera/MediaSaveFailedEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media save failed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->openRequestLayout()V

    goto :goto_0
.end method

.method protected openActionScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->openRequestLayout()V

    :cond_0
    return-void
.end method

.method protected prepareActionScreen()V
    .locals 7

    const v6, 0x7f0a0014

    const v5, 0x2080009

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f080164

    invoke-virtual {v0, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsLayoutLoaded:Z

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/htc/widget/HtcFooter;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    :cond_0
    const v2, 0x7f080166

    invoke-virtual {v0, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    const v2, 0x7f080165

    invoke-virtual {v0, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$1;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$1;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$2;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/actionscreen/RequestActionScreen$2;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$3;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$3;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v4, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsLayoutLoaded:Z

    :cond_1
    instance-of v2, v1, Lcom/htc/widget/HtcFooter;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    const v3, 0x7f0a0013

    const v4, 0x2080084

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-static {v3, v6, v5}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-static {v3, v6, v5}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    return-void
.end method

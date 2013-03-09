.class public Lcom/android/camera/component/ReviewAnimation;
.super Lcom/android/camera/component/UIComponent;
.source "ReviewAnimation.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "ReviewAnimation UI"

.field public static final REVIEW_ANIMATION:I = 0x1


# instance fields
.field Bm:Landroid/graphics/Bitmap;

.field bWithActionScreen:Z

.field cameraThread:Lcom/android/camera/CameraThread;

.field private mReviewImg:Landroid/widget/ImageView;

.field private m_HTCCamera:Lcom/android/camera/HTCCamera;

.field private m_ReviewAnimationController:Lcom/android/camera/component/ReviewAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "ReviewAnimation UI"

    const v1, 0x7f080066

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput-object v2, p0, Lcom/android/camera/component/ReviewAnimation;->Bm:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/ReviewAnimation;->cameraThread:Lcom/android/camera/CameraThread;

    iput-boolean v3, p0, Lcom/android/camera/component/ReviewAnimation;->bWithActionScreen:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ReviewAnimation;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ReviewAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ReviewAnimation;->showReviewAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ReviewAnimation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ReviewAnimation;->showReviewSceen(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/ReviewAnimation;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    return v0
.end method

.method private registerListeners()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimation;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "ActionScreen.Closed"

    new-instance v2, Lcom/android/camera/component/ReviewAnimation$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ReviewAnimation$1;-><init>(Lcom/android/camera/component/ReviewAnimation;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "ActionScreen.Closing"

    new-instance v2, Lcom/android/camera/component/ReviewAnimation$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ReviewAnimation$2;-><init>(Lcom/android/camera/component/ReviewAnimation;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

.method private showReviewAnimation()V
    .locals 13

    const/4 v5, 0x0

    const/high16 v4, 0x42ae

    const/high16 v6, 0x3f00

    const/4 v12, 0x0

    const/high16 v1, 0x3f80

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "showReviewAnimation - Start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v2, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v4, v2

    iget-object v3, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    const/4 v5, 0x1

    const/4 v7, 0x1

    move v3, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd

    invoke-direct {v11, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x320

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v1, 0x190

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3cc2

    const/high16 v2, 0x43af

    invoke-direct {v10, v12, v1, v12, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x4040

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v10, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/android/camera/component/ReviewAnimation$3;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ReviewAnimation$3;-><init>(Lcom/android/camera/component/ReviewAnimation;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "showReviewAnimation - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showReviewSceen(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/android/camera/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimation;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimation;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimation;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimation;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->cameraThread:Lcom/android/camera/CameraThread;

    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->m_ReviewAnimationController:Lcom/android/camera/component/ReviewAnimationController;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimation;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    const-string v2, "ReviewAnimation Controller"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/ReviewAnimationController;

    iput-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->m_ReviewAnimationController:Lcom/android/camera/component/ReviewAnimationController;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->m_ReviewAnimationController:Lcom/android/camera/component/ReviewAnimationController;

    invoke-virtual {v1, p0}, Lcom/android/camera/component/ReviewAnimationController;->link(Lcom/android/camera/component/ReviewAnimation;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimation;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/ReviewAnimation;->mReviewImg:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/camera/component/ReviewAnimation;->registerListeners()V

    return-void
.end method

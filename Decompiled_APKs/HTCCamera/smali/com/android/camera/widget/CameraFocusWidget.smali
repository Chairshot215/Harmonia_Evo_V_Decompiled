.class public Lcom/android/camera/widget/CameraFocusWidget;
.super Landroid/widget/ImageView;
.source "CameraFocusWidget.java"


# static fields
.field public static final CAMERA_FOCUS_CANCEL:I = 0x3

.field public static final CAMERA_FOCUS_OK:I = 0x2

.field public static final CAMERA_FOCUS_PREPARE:I

.field public static DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final CAMERA_FOCUS_CHECKING:I

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCheckAnimationSet:Landroid/view/animation/AnimationSet;

.field private mCheckDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

.field private mFirstDrop:Z

.field private mIconRidousHeight:F

.field private mIconRidousWidth:F

.field private mNextFocusStatus:I

.field private mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mPos_X:F

.field private mPos_Y:F

.field private mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

.field private mPrepareDrawable:Landroid/graphics/drawable/Drawable;

.field private mResetAnimation:Z

.field private mUpdateLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/widget/CameraFocusWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/widget/CameraFocusWidget;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->CAMERA_FOCUS_CHECKING:I

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousHeight:F

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousWidth:F

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_X:F

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_Y:F

    iput v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->mFirstDrop:Z

    iput-boolean v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mUpdateLayout:Z

    iput-boolean v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mResetAnimation:Z

    new-instance v0, Lcom/android/camera/widget/CameraFocusWidget$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/CameraFocusWidget$2;-><init>(Lcom/android/camera/widget/CameraFocusWidget;)V

    iput-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->initialAnimationFrame()V

    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/widget/CameraFocusWidget$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/CameraFocusWidget$1;-><init>(Lcom/android/camera/widget/CameraFocusWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/CameraFocusWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mFirstDrop:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/widget/CameraFocusWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mFirstDrop:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/CameraFocusWidget;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/CameraFocusWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->cancel()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/CameraFocusWidget;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/widget/CameraFocusWidget;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/widget/CameraFocusWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mResetAnimation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/widget/CameraFocusWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mResetAnimation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/widget/CameraFocusWidget;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/widget/CameraFocusWidget;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/widget/CameraFocusWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->showFocus()V

    return-void
.end method

.method private cancel()V
    .locals 2

    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[CameraFocusWidget][cancel] + "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraFocusWidget;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->resetAnimationSet()V

    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->resetAnimation()V

    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[CameraFocusWidget][cancel] - "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getNextAnimationSet(FF)Landroid/view/animation/AnimationSet;
    .locals 12

    const/high16 v1, 0x3fc0

    const/high16 v11, 0x3f80

    const/high16 v2, 0x3f00

    const/4 v10, 0x0

    const/4 v5, 0x1

    sget-boolean v3, Lcom/android/camera/widget/CameraFocusWidget;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CameraFocusWidget][getNextAnimationSet]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    packed-switch v3, :pswitch_data_0

    sget-object v1, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[CameraFocusWidget][getNextAnimationSet] Status error!!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :pswitch_0
    const/4 v0, 0x0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, p1

    move v7, v5

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x4000

    const/high16 v4, 0x4000

    move v1, v11

    move v3, v11

    move v6, p1

    move v7, v5

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/CameraFocusWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x4234

    move v6, p1

    move v7, v5

    move v8, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    invoke-virtual {v2, v10}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/CameraFocusWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckAnimationSet:Landroid/view/animation/AnimationSet;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initialAnimationFrame()V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0xfa

    const/16 v3, 0x64

    sget-object v1, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[CameraFocusWidget][initialAnimationFrame] +"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousWidth:F

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousHeight:F

    sget-object v1, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[CameraFocusWidget][initialAnimationFrame] -"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method

.method private resetAnimationSet()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private showFocus()V
    .locals 6

    sget-boolean v3, Lcom/android/camera/widget/CameraFocusWidget;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CameraFocusWidget][showFocus]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_X:F

    iget v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_Y:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_X:F

    iget v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousWidth:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    iget v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_Y:F

    iget v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousHeight:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->resetAnimationSet()V

    invoke-direct {p0, v1, v2}, Lcom/android/camera/widget/CameraFocusWidget;->getNextAnimationSet(FF)Landroid/view/animation/AnimationSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    sget-object v3, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CameraFocusWidget][showFocus] Animation("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is null or add fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraFocusWidget;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->startNow()V

    :goto_1
    sget-boolean v3, Lcom/android/camera/widget/CameraFocusWidget;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CameraFocusWidget][showFocus] Start animation, status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->resetAnimation()V

    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CameraFocusWidget][showFocus] Animation("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraFocusWidget;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[CameraFocusWidget][onConfigurationChanged]: Cancel focus!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mUpdateLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->showFocus()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mUpdateLayout:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->cancel()V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setStatus(IFF)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CameraFocusWidget][setStatus]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[CameraFocusWidget][setStatus] Status value error!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CameraFocusWidget][setStatus] Position X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Position Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setVisibility(I)V

    iget v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousWidth:F

    sub-float v0, p2, v0

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_X:F

    iget v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousHeight:F

    sub-float v0, p3, v0

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_Y:F

    iput-boolean v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mResetAnimation:Z

    iput-boolean v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mUpdateLayout:Z

    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->invalidate()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->cancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

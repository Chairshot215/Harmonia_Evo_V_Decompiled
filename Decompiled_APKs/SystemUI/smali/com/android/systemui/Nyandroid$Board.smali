.class public Lcom/android/systemui/Nyandroid$Board;
.super Landroid/widget/FrameLayout;
.source "Nyandroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/Nyandroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Board"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/Nyandroid$Board$FlyingCat;
    }
.end annotation


# static fields
.field public static final FIXED_STARS:Z = true

.field public static final NUM_CATS:I = 0x14

.field static sRNG:Ljava/util/Random;


# instance fields
.field mAnim:Landroid/animation/TimeAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/systemui/Nyandroid$Board;->sRNG:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/Nyandroid$Board;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board;->setSystemUiVisibility(I)V

    const v0, -0xffcc9a

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/Nyandroid$Board;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/Nyandroid$Board;->reset()V

    return-void
.end method

.method static lerp(FFF)F
    .locals 1

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static pick([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)TE;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/Nyandroid$Board;->sRNG:Ljava/util/Random;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, p0, v0

    goto :goto_0
.end method

.method static randfrange(FF)F
    .locals 1

    sget-object v0, Lcom/android/systemui/Nyandroid$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/Nyandroid$Board;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method static randsign()I
    .locals 1

    sget-object v0, Lcom/android/systemui/Nyandroid$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private reset()V
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0x14

    const/4 v6, -0x2

    const/high16 v10, 0x447a

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->removeAllViews()V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v11, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v6, 0x7f020110

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/Nyandroid$Board;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x3dcccccd

    const/high16 v7, 0x3f80

    invoke-static {v6, v7}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v9, v6}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setX(F)V

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v9, v6}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setY(F)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    new-instance v6, Lcom/android/systemui/Nyandroid$Board$1;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/Nyandroid$Board$1;-><init>(Lcom/android/systemui/Nyandroid$Board;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-static {v9, v10}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v7

    float-to-int v7, v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/systemui/Nyandroid$Board;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v11, :cond_1

    new-instance v3, Lcom/android/systemui/Nyandroid$Board$FlyingCat;

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6, v12}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;-><init>(Lcom/android/systemui/Nyandroid$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/Nyandroid$Board;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v6, v2

    const/high16 v7, 0x41a0

    div-float/2addr v6, v7

    iput v6, v3, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    iget v6, v3, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    iget v7, v3, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    mul-float/2addr v6, v7

    iput v6, v3, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->reset()V

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v9, v6}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setX(F)V

    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    new-instance v6, Lcom/android/systemui/Nyandroid$Board$2;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/Nyandroid$Board$2;-><init>(Lcom/android/systemui/Nyandroid$Board;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-static {v9, v10}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v7

    float-to-int v7, v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/systemui/Nyandroid$Board;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v6}, Landroid/animation/TimeAnimator;->cancel()V

    :cond_2
    new-instance v6, Landroid/animation/TimeAnimator;

    invoke-direct {v6}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    iget-object v6, p0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    new-instance v7, Lcom/android/systemui/Nyandroid$Board$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/Nyandroid$Board$3;-><init>(Lcom/android/systemui/Nyandroid$Board;)V

    invoke-virtual {v6, v7}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method


# virtual methods
.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    new-instance v0, Lcom/android/systemui/Nyandroid$Board$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/Nyandroid$Board$4;-><init>(Lcom/android/systemui/Nyandroid$Board;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

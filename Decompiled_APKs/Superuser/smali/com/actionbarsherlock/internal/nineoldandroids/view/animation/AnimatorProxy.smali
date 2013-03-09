.class public final Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;
.super Landroid/view/animation/Animation;


# static fields
.field public static final NEEDS_PROXY:Z

.field private static final PROXIES:Ljava/util/WeakHashMap;


# instance fields
.field private final mAfter:Landroid/graphics/RectF;

.field private mAlpha:F

.field private final mBefore:Landroid/graphics/RectF;

.field private mScaleX:F

.field private mScaleY:F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mView:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x3f80

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    iput v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    iput v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setFillAfter(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private computeRect(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-direct {p0, v0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private invalidateAfterUpdate()V
    .locals 7

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    invoke-direct {p0, v2, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    iget v0, v2, Landroid/graphics/RectF;->left:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    iget v3, v2, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method private prepareForUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V
    .locals 7

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    iget v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    cmpl-float v4, v2, v5

    if-nez v4, :cond_0

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_1

    :cond_0
    mul-float v4, v2, v0

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    mul-float v4, v3, v1

    sub-float v1, v4, v1

    div-float/2addr v1, v6

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    iget v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;
    .locals 2

    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;-><init>(Landroid/view/View;)V

    sget-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final getAlpha()F
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    return v0
.end method

.method public final getScaleX()F
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    return v0
.end method

.method public final getScaleY()F
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    return v0
.end method

.method public final getScrollX()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    goto :goto_0
.end method

.method public final getScrollY()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method public final getTranslationX()F
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    return v0
.end method

.method public final getTranslationY()F
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    return v0
.end method

.method public final setAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setScaleX(F)V
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public final setScaleY(F)V
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public final setScrollX(I)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public final setScrollY(I)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public final setTranslationX(F)V
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public final setTranslationY(F)V
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

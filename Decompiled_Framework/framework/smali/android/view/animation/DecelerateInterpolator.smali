.class public Landroid/view/animation/DecelerateInterpolator;
.super Ljava/lang/Object;
.source "DecelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    iput p1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v2, 0x3f80

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    sget-object v1, Lcom/android/internal/R$styleable;->DecelerateInterpolator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7

    const/high16 v3, 0x3f80

    iget v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    sub-float v1, v3, p1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    sub-float v0, v3, v1

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v1, 0x3ff0

    sub-float/2addr v3, p1

    float-to-double v3, v3

    const/high16 v5, 0x4000

    iget v6, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v0, v1

    goto :goto_0
.end method

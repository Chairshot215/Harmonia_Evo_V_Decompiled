.class public Lcom/htc/htccalendarwidgets/ManipulateInterpolator;
.super Ljava/lang/Object;
.source "ManipulateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccalendarwidgets/ManipulateInterpolator$InterpolatorListener;
    }
.end annotation


# instance fields
.field mChanged:Z

.field private mCurrentInterpolator:F

.field private mFinish:Z

.field private mInterpolatorEnd:Z

.field private mInterpolatorListener:Lcom/htc/htccalendarwidgets/ManipulateInterpolator$InterpolatorListener;

.field private mMax:F

.field private mOffset:F

.field private mTimeInterpolator:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mFinish:Z

    .line 6
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mInterpolatorEnd:Z

    .line 7
    const/high16 v0, 0x4396

    iput v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mMax:F

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mOffset:F

    .line 9
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 34
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mChanged:Z

    .line 47
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mTimeInterpolator:F

    .line 14
    return-void
.end method

.method public constructor <init>(F)V
    .locals 3
    .parameter "maxInterpolation"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mFinish:Z

    .line 6
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mInterpolatorEnd:Z

    .line 7
    const/high16 v0, 0x4396

    iput v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mMax:F

    .line 8
    iput v1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mOffset:F

    .line 9
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 34
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mChanged:Z

    .line 47
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mTimeInterpolator:F

    .line 17
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max interpolation should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    iput p1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mMax:F

    .line 21
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mFinish:Z

    .line 97
    return-void
.end method

.method public getCurrentInterpolation()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mOffset:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 3
    .parameter "f"

    .prologue
    const/high16 v2, 0x3f80

    .line 51
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mFinish:Z

    if-eqz v0, :cond_2

    .line 52
    iget v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mTimeInterpolator:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 53
    iget v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 84
    :goto_0
    return v0

    .line 57
    :cond_0
    iput p1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mTimeInterpolator:F

    .line 59
    iget v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    add-float/2addr v0, v2

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 61
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mInterpolatorEnd:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    const v1, 0x3f7d70a4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 62
    iput v2, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mInterpolatorEnd:Z

    .line 67
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mInterpolatorListener:Lcom/htc/htccalendarwidgets/ManipulateInterpolator$InterpolatorListener;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mInterpolatorListener:Lcom/htc/htccalendarwidgets/ManipulateInterpolator$InterpolatorListener;

    invoke-interface {v0}, Lcom/htc/htccalendarwidgets/ManipulateInterpolator$InterpolatorListener;->onInterpolatorEnd()V

    .line 84
    :cond_1
    :goto_1
    iget v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    goto :goto_0

    .line 74
    :cond_2
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mChanged:Z

    if-eqz v0, :cond_1

    .line 75
    iget v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mOffset:F

    iget v1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mMax:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 77
    iget v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 78
    iput v2, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 80
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mChanged:Z

    goto :goto_1
.end method

.method public getMaxInterpolation()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mMax:F

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mOffset:F

    .line 89
    iput v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mChanged:Z

    .line 91
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mFinish:Z

    .line 92
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mInterpolatorEnd:Z

    .line 93
    return-void
.end method

.method public setCurrentInterpolation(F)V
    .locals 2
    .parameter "offsetPixels"

    .prologue
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mChanged:Z

    .line 40
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .end local p1
    :cond_0
    iput p1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mOffset:F

    .line 41
    return-void
.end method

.method public setMaxInterpolation(F)V
    .locals 2
    .parameter "max"

    .prologue
    .line 24
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max interpolation should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput p1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mMax:F

    .line 28
    return-void
.end method

.method public setOnInterpolatorListener(Lcom/htc/htccalendarwidgets/ManipulateInterpolator$InterpolatorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/ManipulateInterpolator;->mInterpolatorListener:Lcom/htc/htccalendarwidgets/ManipulateInterpolator$InterpolatorListener;

    .line 101
    return-void
.end method

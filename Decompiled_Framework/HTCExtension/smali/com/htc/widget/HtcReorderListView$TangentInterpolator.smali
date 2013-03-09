.class Lcom/htc/widget/HtcReorderListView$TangentInterpolator;
.super Ljava/lang/Object;
.source "HtcReorderListView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcReorderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TangentInterpolator"
.end annotation


# instance fields
.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F

.field final synthetic this$0:Lcom/htc/widget/HtcReorderListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcReorderListView;)V
    .locals 2

    const/high16 v1, 0x3f80

    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->this$0:Lcom/htc/widget/HtcReorderListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4100

    iput v0, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->mViscousFluidScale:F

    iput v1, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->mViscousFluidNormalize:F

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->mViscousFluidNormalize:F

    return-void
.end method

.method private viscousFluid(F)F
    .locals 4

    const/high16 v3, 0x3f80

    iget v1, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    return p1

    :cond_0
    const v0, 0x3ebc5ab2

    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->viscousFluid(F)F

    move-result v0

    return v0
.end method

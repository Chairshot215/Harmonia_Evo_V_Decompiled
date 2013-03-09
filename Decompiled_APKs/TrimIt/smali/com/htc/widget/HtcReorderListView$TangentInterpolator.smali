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
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 1244
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->this$0:Lcom/htc/widget/HtcReorderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1246
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->mViscousFluidScale:F

    .line 1248
    iput v1, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->mViscousFluidNormalize:F

    .line 1249
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->mViscousFluidNormalize:F

    .line 1250
    return-void
.end method

.method private viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 1253
    iget v1, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 1254
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 1255
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 1261
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 1262
    return p1

    .line 1257
    :cond_0
    const v0, 0x3ebc5ab2

    .line 1258
    .local v0, start:F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 1259
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .parameter "t"

    .prologue
    .line 1266
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcReorderListView$TangentInterpolator;->viscousFluid(F)F

    move-result v0

    return v0
.end method

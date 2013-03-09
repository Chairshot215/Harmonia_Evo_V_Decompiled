.class Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;
.super Ljava/lang/Object;
.source "MoreExpandableHtcListView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/MoreExpandableHtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TangentInterpolator"
.end annotation


# instance fields
.field private mFactor:D

.field private mFactorHalf:D

.field private mShift:D

.field private mShift2:D

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method public constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666

    invoke-direct {p0, v0}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->init(F)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;F)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->init(F)V

    return-void
.end method

.method private init(F)V
    .locals 4

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->mFactor:D

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->mFactorHalf:D

    const-wide v0, 0x400921fb54442d18L

    iget-wide v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->mFactorHalf:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->mShift:D

    const-wide/high16 v0, 0x4000

    iget-wide v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->mShift:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->mShift2:D

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7

    const-wide v1, 0x400921fb54442d18L

    float-to-double v3, p1

    iget-wide v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->mFactor:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->mFactorHalf:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->mShift:D

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->mShift2:D

    div-double/2addr v1, v3

    double-to-float v0, v1

    return v0
.end method

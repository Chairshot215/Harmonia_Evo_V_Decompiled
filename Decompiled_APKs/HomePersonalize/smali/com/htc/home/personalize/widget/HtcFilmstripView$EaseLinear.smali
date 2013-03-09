.class Lcom/htc/home/personalize/widget/HtcFilmstripView$EaseLinear;
.super Ljava/lang/Object;
.source "HtcFilmstripView.java"

# interfaces
.implements Lcom/htc/widget/EasingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widget/HtcFilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EaseLinear"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/widget/HtcFilmstripView;)V
    .locals 0
    .parameter

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$EaseLinear;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentResult(FFFFF)F
    .locals 4
    .parameter "v0"
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 1672
    div-float/2addr p2, p5

    .line 1673
    mul-float v1, p2, p2

    .line 1674
    .local v1, ts:F
    mul-float v0, v1, p2

    .line 1675
    .local v0, tc:F
    const/high16 v2, 0x3f80

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    const/high16 v3, -0x3f60

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x4120

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, -0x3ee0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    return v2
.end method

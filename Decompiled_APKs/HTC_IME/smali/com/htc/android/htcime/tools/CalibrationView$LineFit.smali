.class Lcom/htc/android/htcime/tools/CalibrationView$LineFit;
.super Ljava/lang/Object;
.source "CalibrationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/tools/CalibrationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineFit"
.end annotation


# instance fields
.field private decay:F

.field private n:F

.field private sx:F

.field private sx2:F

.field private sxy:F

.field private sy:F

.field final synthetic this$0:Lcom/htc/android/htcime/tools/CalibrationView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/CalibrationView;F)V
    .locals 1
    .parameter
    .parameter "decay"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->this$0:Lcom/htc/android/htcime/tools/CalibrationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sx2:F

    iput v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sxy:F

    iput v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sy:F

    iput v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sx:F

    iput v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->n:F

    .line 402
    iput p2, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->decay:F

    .line 403
    return-void
.end method


# virtual methods
.method addPoint(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 414
    iget v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->n:F

    iget v1, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->decay:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->n:F

    .line 415
    iget v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sx:F

    iget v1, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->decay:F

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sx:F

    .line 416
    iget v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sy:F

    iget v1, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->decay:F

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sy:F

    .line 417
    iget v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sxy:F

    iget v1, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->decay:F

    mul-float/2addr v0, v1

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sxy:F

    .line 418
    iget v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sx2:F

    iget v1, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->decay:F

    mul-float/2addr v0, v1

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sx2:F

    .line 419
    return-void
.end method

.method getAlphaBeta([F)V
    .locals 6
    .parameter "outAlphaBeta"

    .prologue
    .line 406
    iget v3, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->n:F

    iget v4, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sx2:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sx:F

    iget v5, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sx:F

    mul-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 407
    .local v2, delta:F
    iget v3, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->n:F

    iget v4, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sxy:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sx:F

    iget v5, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sy:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float v1, v3, v2

    .line 408
    .local v1, beta:F
    iget v3, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sy:F

    iget v4, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->sx:F

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->n:F

    div-float v0, v3, v4

    .line 409
    .local v0, alpha:F
    const/4 v3, 0x0

    aput v0, p1, v3

    .line 410
    const/4 v3, 0x1

    aput v1, p1, v3

    .line 411
    return-void
.end method

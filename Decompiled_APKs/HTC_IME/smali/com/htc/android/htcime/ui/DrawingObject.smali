.class abstract Lcom/htc/android/htcime/ui/DrawingObject;
.super Ljava/lang/Object;
.source "SimpleWCL.java"


# instance fields
.field candidateAreaHeight:I

.field candidateAreaWidth:I

.field mCandStr:Ljava/lang/String;

.field mCandidate:Ljava/lang/Object;

.field mPaint:Landroid/graphics/Paint;

.field xOffset:I

.field yOffset:I


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "paint"
    .parameter "cand"
    .parameter "candStr"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    iput-object p1, p0, Lcom/htc/android/htcime/ui/DrawingObject;->mPaint:Landroid/graphics/Paint;

    .line 1305
    iput-object p2, p0, Lcom/htc/android/htcime/ui/DrawingObject;->mCandidate:Ljava/lang/Object;

    .line 1306
    iput-object p3, p0, Lcom/htc/android/htcime/ui/DrawingObject;->mCandStr:Ljava/lang/String;

    .line 1307
    iput v0, p0, Lcom/htc/android/htcime/ui/DrawingObject;->candidateAreaWidth:I

    .line 1308
    iput v0, p0, Lcom/htc/android/htcime/ui/DrawingObject;->candidateAreaHeight:I

    .line 1309
    iput v1, p0, Lcom/htc/android/htcime/ui/DrawingObject;->xOffset:I

    .line 1310
    iput v1, p0, Lcom/htc/android/htcime/ui/DrawingObject;->yOffset:I

    .line 1311
    return-void
.end method


# virtual methods
.method public abstract dealOverSize(II)V
.end method

.method public abstract draw(Landroid/graphics/Canvas;FF)V
.end method

.method public getCandStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DrawingObject;->mCandStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCandidateAreaHeight()I
    .locals 1

    .prologue
    .line 1322
    iget v0, p0, Lcom/htc/android/htcime/ui/DrawingObject;->candidateAreaHeight:I

    return v0
.end method

.method public getCandidateAreaWidth()I
    .locals 1

    .prologue
    .line 1320
    iget v0, p0, Lcom/htc/android/htcime/ui/DrawingObject;->candidateAreaWidth:I

    return v0
.end method

.method public abstract getWidth()F
.end method

.method public abstract setCandidateAreaHeight(I)V
.end method

.method public abstract setCandidateAreaWidth(I)V
.end method

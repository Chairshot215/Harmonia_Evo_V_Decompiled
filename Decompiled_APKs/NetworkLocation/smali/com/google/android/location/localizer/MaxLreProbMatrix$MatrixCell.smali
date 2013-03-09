.class Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;
.super Ljava/lang/Object;
.source "MaxLreProbMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/localizer/MaxLreProbMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatrixCell"
.end annotation


# instance fields
.field private final col:I

.field private final prob:D

.field private final row:I


# direct methods
.method constructor <init>(IID)V
    .locals 0
    .parameter "row"
    .parameter "col"
    .parameter "prob"

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p1, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->row:I

    .line 218
    iput p2, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->col:I

    .line 219
    iput-wide p3, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->col:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->row:I

    return v0
.end method


# virtual methods
.method getCol()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->col:I

    return v0
.end method

.method getRow()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->row:I

    return v0
.end method

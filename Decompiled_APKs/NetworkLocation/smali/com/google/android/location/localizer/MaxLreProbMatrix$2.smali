.class final Lcom/google/android/location/localizer/MaxLreProbMatrix$2;
.super Ljava/lang/Object;
.source "MaxLreProbMatrix.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/localizer/MaxLreProbMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 243
    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D
    invoke-static {p1}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$000(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)D

    move-result-wide v0

    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D
    invoke-static {p2}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$000(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    check-cast p1, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;

    .end local p1
    check-cast p2, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/MaxLreProbMatrix$2;->compare(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)I

    move-result v0

    return v0
.end method

.class Lcom/google/android/location/localizer/MaxLreProbMatrix;
.super Ljava/lang/Object;
.source "MaxLreProbMatrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;
    }
.end annotation


# static fields
.field private static final HIGH_PROB_CELL_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOW_PROB_CELL_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final matrixSize:I

.field private final matrixValue:[[D

.field private final maxRowCol:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/google/android/location/localizer/MaxLreProbMatrix$1;

    invoke-direct {v0}, Lcom/google/android/location/localizer/MaxLreProbMatrix$1;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->HIGH_PROB_CELL_FIRST:Ljava/util/Comparator;

    .line 239
    new-instance v0, Lcom/google/android/location/localizer/MaxLreProbMatrix$2;

    invoke-direct {v0}, Lcom/google/android/location/localizer/MaxLreProbMatrix$2;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->LOW_PROB_CELL_FIRST:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .parameter "maxRowCol"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->maxRowCol:I

    .line 44
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixSize:I

    .line 45
    iget v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixSize:I

    iget v1, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixSize:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixValue:[[D

    .line 46
    invoke-virtual {p0}, Lcom/google/android/location/localizer/MaxLreProbMatrix;->resetMatrix()V

    .line 47
    return-void
.end method

.method private isValidRowCol(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->maxRowCol:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->maxRowCol:I

    neg-int v0, v0

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->maxRowCol:I

    if-gt p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->maxRowCol:I

    neg-int v0, v0

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalize()V
    .locals 7

    .prologue
    .line 194
    const-wide/16 v1, 0x0

    .line 195
    .local v1, matrixSum:D
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    iget v4, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixSize:I

    if-ge v3, v4, :cond_1

    .line 196
    const/4 v0, 0x0

    .local v0, col:I
    :goto_1
    iget v4, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixSize:I

    if-ge v0, v4, :cond_0

    .line 197
    iget-object v4, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixValue:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v0

    add-double/2addr v1, v4

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v0           #col:I
    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixSize:I

    if-ge v3, v4, :cond_3

    .line 202
    const/4 v0, 0x0

    .restart local v0       #col:I
    :goto_3
    iget v4, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixSize:I

    if-ge v0, v4, :cond_2

    .line 203
    iget-object v4, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixValue:[[D

    aget-object v4, v4, v3

    aget-wide v5, v4, v0

    div-double/2addr v5, v1

    aput-wide v5, v4, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 201
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 206
    .end local v0           #col:I
    :cond_3
    return-void
.end method


# virtual methods
.method public computeDominantCircle(DLcom/google/android/location/data/Position;D)Lcom/google/android/location/data/Position$PositionBuilder;
    .locals 33
    .parameter "targetMass"
    .parameter "matrixCenter"
    .parameter "gridSize"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/localizer/MaxLreProbMatrix;->normalize()V

    .line 97
    new-instance v19, Ljava/util/PriorityQueue;

    const/16 v29, 0x64

    sget-object v30, Lcom/google/android/location/localizer/MaxLreProbMatrix;->LOW_PROB_CELL_FIRST:Ljava/util/Comparator;

    move-object/from16 v0, v19

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 101
    .local v19, priorityQueue:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;>;"
    const/16 v20, 0x0

    .local v20, row:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixSize:I

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 102
    const/4 v4, 0x0

    .local v4, col:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixSize:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v4, v0, :cond_2

    .line 103
    new-instance v15, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixValue:[[D

    move-object/from16 v29, v0

    aget-object v29, v29, v20

    aget-wide v29, v29, v4

    move/from16 v0, v20

    move-wide/from16 v1, v29

    invoke-direct {v15, v0, v4, v1, v2}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;-><init>(IID)V

    .line 104
    .local v15, p:Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;
    invoke-virtual/range {v19 .. v19}, Ljava/util/PriorityQueue;->size()I

    move-result v29

    const/16 v30, 0x64

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    .line 105
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;

    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D
    invoke-static/range {v29 .. v29}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$000(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)D

    move-result-wide v29

    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D
    invoke-static {v15}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$000(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)D

    move-result-wide v31

    cmpg-double v29, v29, v31

    if-gez v29, :cond_0

    .line 107
    invoke-virtual/range {v19 .. v19}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 108
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 101
    .end local v15           #p:Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 113
    .end local v4           #col:I
    :cond_3
    const/16 v29, 0x64

    move/from16 v0, v29

    new-array v0, v0, [Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;

    move-object/from16 v22, v0

    .line 114
    .local v22, topCells:[Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    .end local v22           #topCells:[Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;
    check-cast v22, [Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;

    .line 115
    .restart local v22       #topCells:[Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;
    sget-object v29, Lcom/google/android/location/localizer/MaxLreProbMatrix;->HIGH_PROB_CELL_FIRST:Ljava/util/Comparator;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 118
    const-wide/16 v23, 0x0

    .line 119
    .local v23, topCellsSum:D
    const/4 v6, 0x0

    .line 120
    .local v6, cutoff:I
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v6, v0, :cond_4

    cmpg-double v29, v23, p1

    if-gez v29, :cond_4

    .line 121
    aget-object v29, v22, v6

    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D
    invoke-static/range {v29 .. v29}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$000(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)D

    move-result-wide v29

    add-double v23, v23, v29

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 127
    :cond_4
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_6

    const/16 v29, 0x2

    move/from16 v0, v29

    if-lt v6, v0, :cond_6

    add-int/lit8 v29, v6, -0x1

    aget-object v29, v22, v29

    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D
    invoke-static/range {v29 .. v29}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$000(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)D

    move-result-wide v29

    add-int/lit8 v31, v6, -0x2

    aget-object v31, v22, v31

    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D
    invoke-static/range {v31 .. v31}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$000(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)D

    move-result-wide v31

    invoke-static/range {v29 .. v32}, Ljava/lang/Double;->compare(DD)I

    move-result v29

    if-nez v29, :cond_6

    .line 129
    add-int/lit8 v29, v6, -0x1

    aget-object v29, v22, v29

    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D
    invoke-static/range {v29 .. v29}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$000(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)D

    move-result-wide v25

    .line 131
    .local v25, valueToRemove:D
    add-int/lit8 v14, v6, -0x1

    .local v14, newCutoff:I
    :goto_4
    if-ltz v14, :cond_5

    .line 132
    aget-object v29, v22, v14

    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D
    invoke-static/range {v29 .. v29}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$000(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)D

    move-result-wide v29

    move-wide/from16 v0, v25

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v29

    if-eqz v29, :cond_7

    .line 136
    :cond_5
    if-ltz v14, :cond_6

    .line 137
    move v6, v14

    .line 142
    .end local v14           #newCutoff:I
    .end local v25           #valueToRemove:D
    :cond_6
    new-array v0, v6, [D

    move-object/from16 v28, v0

    .line 143
    .local v28, weights:[D
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v18, positions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/LatLng;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5
    if-ge v11, v6, :cond_8

    .line 145
    aget-object v12, v22, v11

    .line 146
    .local v12, matrixCell:Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;
    invoke-virtual {v12}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->getCol()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v29, v29, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->maxRowCol:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, p4

    sub-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v4, v0

    .line 147
    .restart local v4       #col:I
    invoke-virtual {v12}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->getRow()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v29, v29, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->maxRowCol:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, p4

    sub-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v0, v0

    move/from16 v20, v0

    .line 148
    move/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v4, v0, v1}, Lcom/google/android/location/localizer/LocalizerUtil;->relativeLatLngToAbsolutePosition(IILcom/google/android/location/data/Position;)Lcom/google/android/location/data/LatLng;

    move-result-object v16

    .line 149
    .local v16, pos:Lcom/google/android/location/data/LatLng;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->prob:D
    invoke-static {v12}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$000(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)D

    move-result-wide v29

    aput-wide v29, v28, v11

    .line 144
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 131
    .end local v4           #col:I
    .end local v11           #i:I
    .end local v12           #matrixCell:Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;
    .end local v16           #pos:Lcom/google/android/location/data/LatLng;
    .end local v18           #positions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/LatLng;>;"
    .end local v28           #weights:[D
    .restart local v14       #newCutoff:I
    .restart local v25       #valueToRemove:D
    :cond_7
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .line 153
    .end local v14           #newCutoff:I
    .end local v25           #valueToRemove:D
    .restart local v11       #i:I
    .restart local v18       #positions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/LatLng;>;"
    .restart local v28       #weights:[D
    :cond_8
    new-instance v27, Lcom/google/android/location/localizer/WeightedCentroid;

    invoke-direct/range {v27 .. v27}, Lcom/google/android/location/localizer/WeightedCentroid;-><init>()V

    .line 154
    .local v27, weightedCentroid:Lcom/google/android/location/localizer/WeightedCentroid;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/localizer/WeightedCentroid;->getEstimation(Ljava/util/List;[D)Lcom/google/android/location/data/LatLng;

    move-result-object v8

    .line 158
    .local v8, estimation:Lcom/google/android/location/data/LatLng;
    move-object/from16 v0, p3

    invoke-static {v8, v0}, Lcom/google/android/location/localizer/LocalizerUtil;->relativeLngMeters(Lcom/google/android/location/data/LatLng;Lcom/google/android/location/data/Position;)D

    move-result-wide v29

    const-wide/high16 v31, 0x400e

    div-double v29, v29, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->maxRowCol:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    add-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v10, v0

    .line 162
    .local v10, estimationRow:I
    move-object/from16 v0, p3

    invoke-static {v8, v0}, Lcom/google/android/location/localizer/LocalizerUtil;->relativeLatMeters(Lcom/google/android/location/data/LatLng;Lcom/google/android/location/data/Position;)D

    move-result-wide v29

    const-wide/high16 v31, 0x400e

    div-double v29, v29, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->maxRowCol:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    add-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v9, v0

    .line 166
    .local v9, estimationCol:I
    const/high16 v13, -0x8000

    .line 167
    .local v13, maxDist:I
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v6, :cond_c

    .line 168
    aget-object v12, v22, v11

    .line 169
    .restart local v12       #matrixCell:Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;
    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->col:I
    invoke-static {v12}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$100(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)I

    move-result v29

    sub-int v29, v29, v9

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 170
    .local v5, colDiff:I
    #getter for: Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->row:I
    invoke-static {v12}, Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;->access$200(Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;)I

    move-result v29

    sub-int v29, v29, v10

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v21

    .line 172
    .local v21, rowDiff:I
    const/16 v29, 0x78

    move/from16 v0, v29

    if-ge v5, v0, :cond_9

    const/16 v29, 0x78

    move/from16 v0, v21

    move/from16 v1, v29

    if-lt v0, v1, :cond_b

    .line 174
    :cond_9
    move/from16 v0, v21

    invoke-static {v0, v5}, Lcom/google/android/location/localizer/MaxLreLocalizer;->computeDistanceFromEdgeOfGrid(II)I

    move-result v7

    .line 179
    .local v7, distance:I
    :goto_7
    if-le v7, v13, :cond_a

    .line 180
    move v13, v7

    .line 167
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 176
    .end local v7           #distance:I
    :cond_b
    sget-object v29, Lcom/google/android/location/localizer/MaxLreLocalizer;->GRID_DISTANCE:[[I

    aget-object v29, v29, v21

    aget v7, v29, v5

    .restart local v7       #distance:I
    goto :goto_7

    .line 183
    .end local v5           #colDiff:I
    .end local v7           #distance:I
    .end local v12           #matrixCell:Lcom/google/android/location/localizer/MaxLreProbMatrix$MatrixCell;
    .end local v21           #rowDiff:I
    :cond_c
    const/16 v29, 0x14

    move/from16 v0, v29

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 184
    new-instance v17, Lcom/google/android/location/data/Position$PositionBuilder;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/location/data/Position$PositionBuilder;-><init>()V

    .line 185
    .local v17, position:Lcom/google/android/location/data/Position$PositionBuilder;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/google/android/location/data/Position$PositionBuilder;->latLng(Lcom/google/android/location/data/LatLng;)Lcom/google/android/location/data/Position$PositionBuilder;

    .line 186
    mul-int/lit16 v0, v13, 0x3e8

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v17

    iput v0, v1, Lcom/google/android/location/data/Position$PositionBuilder;->accuracyMm:I

    .line 187
    return-object v17
.end method

.method resetMatrix()V
    .locals 5

    .prologue
    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixSize:I

    if-ge v0, v2, :cond_1

    .line 52
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixSize:I

    if-ge v1, v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixValue:[[D

    aget-object v2, v2, v0

    const-wide/high16 v3, 0x3ff0

    aput-wide v3, v2, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method public updateCell(IID)V
    .locals 7
    .parameter "row"
    .parameter "col"
    .parameter "probValue"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/localizer/MaxLreProbMatrix;->isValidRowCol(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget v2, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->maxRowCol:I

    add-int v1, p1, v2

    .line 76
    .local v1, matrixRow:I
    iget v2, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->maxRowCol:I

    add-int v0, p2, v2

    .line 77
    .local v0, matrixCol:I
    iget-object v2, p0, Lcom/google/android/location/localizer/MaxLreProbMatrix;->matrixValue:[[D

    aget-object v2, v2, v1

    aget-wide v3, v2, v0

    const-wide/high16 v5, 0x4059

    mul-double/2addr v5, p3

    mul-double/2addr v3, v5

    aput-wide v3, v2, v0

    goto :goto_0
.end method

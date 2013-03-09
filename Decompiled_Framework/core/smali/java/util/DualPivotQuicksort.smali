.class final Ljava/util/DualPivotQuicksort;
.super Ljava/lang/Object;
.source "DualPivotQuicksort.java"


# static fields
.field private static final COUNTING_SORT_THRESHOLD_FOR_BYTE:I = 0x80

.field private static final COUNTING_SORT_THRESHOLD_FOR_SHORT_OR_CHAR:I = 0x8000

.field private static final INSERTION_SORT_THRESHOLD:I = 0x20

.field private static final NUM_BYTE_VALUES:I = 0x100

.field private static final NUM_CHAR_VALUES:I = 0x10000

.field private static final NUM_SHORT_VALUES:I = 0x10000


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doSort([BII)V
    .locals 10

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x20

    if-ge v8, v9, :cond_1

    add-int/lit8 v2, p1, 0x1

    :goto_0
    if-gt v2, p2, :cond_5

    aget-byte v0, p0, v2

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-lt v3, p1, :cond_0

    aget-byte v8, p0, v3

    if-ge v0, v8, :cond_0

    add-int/lit8 v8, v3, 0x1

    aget-byte v9, p0, v3

    aput-byte v9, p0, v8

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v3, 0x1

    aput-byte v0, p0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x80

    if-le v8, v9, :cond_4

    const/16 v8, 0x100

    new-array v1, v8, [I

    move v2, p1

    :goto_2
    if-gt v2, p2, :cond_2

    aget-byte v8, p0, v2

    add-int/lit16 v8, v8, 0x80

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move v4, p1

    :goto_3
    array-length v8, v1

    if-ge v2, v8, :cond_5

    if-gt v4, p2, :cond_5

    add-int/lit8 v8, v2, -0x80

    int-to-byte v7, v8

    aget v6, v1, v2

    move v5, v4

    :goto_4
    if-lez v6, :cond_3

    add-int/lit8 v4, v5, 0x1

    aput-byte v7, p0, v5

    add-int/lit8 v6, v6, -0x1

    move v5, v4

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_3

    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([BII)V

    :cond_5
    return-void
.end method

.method private static doSort([CII)V
    .locals 9

    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x20

    if-ge v7, v8, :cond_1

    add-int/lit8 v2, p1, 0x1

    :goto_0
    if-gt v2, p2, :cond_5

    aget-char v0, p0, v2

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-lt v3, p1, :cond_0

    aget-char v7, p0, v3

    if-ge v0, v7, :cond_0

    add-int/lit8 v7, v3, 0x1

    aget-char v8, p0, v3

    aput-char v8, p0, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v3, 0x1

    aput-char v0, p0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    const v8, 0x8000

    if-le v7, v8, :cond_4

    const/high16 v7, 0x1

    new-array v1, v7, [I

    move v2, p1

    :goto_2
    if-gt v2, p2, :cond_2

    aget-char v7, p0, v2

    aget v8, v1, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move v4, p1

    :goto_3
    array-length v7, v1

    if-ge v2, v7, :cond_5

    if-gt v4, p2, :cond_5

    aget v6, v1, v2

    move v5, v4

    :goto_4
    if-lez v6, :cond_3

    add-int/lit8 v4, v5, 0x1

    int-to-char v7, v2

    aput-char v7, p0, v5

    add-int/lit8 v6, v6, -0x1

    move v5, v4

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_3

    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([CII)V

    :cond_5
    return-void
.end method

.method private static doSort([DII)V
    .locals 7

    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x20

    if-ge v4, v5, :cond_1

    add-int/lit8 v2, p1, 0x1

    :goto_0
    if-gt v2, p2, :cond_2

    aget-wide v0, p0, v2

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-lt v3, p1, :cond_0

    aget-wide v4, p0, v3

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-wide v5, p0, v3

    aput-wide v5, p0, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    aput-wide v0, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([DII)V

    :cond_2
    return-void
.end method

.method private static doSort([FII)V
    .locals 5

    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    add-int/lit8 v1, p1, 0x1

    :goto_0
    if-gt v1, p2, :cond_2

    aget v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    :goto_1
    if-lt v2, p1, :cond_0

    aget v3, p0, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget v4, p0, v2

    aput v4, p0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput v0, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([FII)V

    :cond_2
    return-void
.end method

.method private static doSort([III)V
    .locals 5

    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    add-int/lit8 v1, p1, 0x1

    :goto_0
    if-gt v1, p2, :cond_2

    aget v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    :goto_1
    if-lt v2, p1, :cond_0

    aget v3, p0, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget v4, p0, v2

    aput v4, p0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput v0, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([III)V

    :cond_2
    return-void
.end method

.method private static doSort([JII)V
    .locals 7

    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x20

    if-ge v4, v5, :cond_1

    add-int/lit8 v2, p1, 0x1

    :goto_0
    if-gt v2, p2, :cond_2

    aget-wide v0, p0, v2

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-lt v3, p1, :cond_0

    aget-wide v4, p0, v3

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-wide v5, p0, v3

    aput-wide v5, p0, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    aput-wide v0, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([JII)V

    :cond_2
    return-void
.end method

.method private static doSort([SII)V
    .locals 10

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x20

    if-ge v8, v9, :cond_1

    add-int/lit8 v2, p1, 0x1

    :goto_0
    if-gt v2, p2, :cond_5

    aget-short v0, p0, v2

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-lt v3, p1, :cond_0

    aget-short v8, p0, v3

    if-ge v0, v8, :cond_0

    add-int/lit8 v8, v3, 0x1

    aget-short v9, p0, v3

    aput-short v9, p0, v8

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v3, 0x1

    aput-short v0, p0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const v9, 0x8000

    if-le v8, v9, :cond_4

    const/high16 v8, 0x1

    new-array v1, v8, [I

    move v2, p1

    :goto_2
    if-gt v2, p2, :cond_2

    aget-short v8, p0, v2

    const/16 v9, -0x8000

    sub-int/2addr v8, v9

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move v4, p1

    :goto_3
    array-length v8, v1

    if-ge v2, v8, :cond_5

    if-gt v4, p2, :cond_5

    add-int/lit16 v8, v2, -0x8000

    int-to-short v7, v8

    aget v6, v1, v2

    move v5, v4

    :goto_4
    if-lez v6, :cond_3

    add-int/lit8 v4, v5, 0x1

    aput-short v7, p0, v5

    add-int/lit8 v6, v6, -0x1

    move v5, v4

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_3

    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([SII)V

    :cond_5
    return-void
.end method

.method private static dualPivotQuicksort([BII)V
    .locals 25

    sub-int v24, p2, p1

    add-int/lit8 v24, v24, 0x1

    div-int/lit8 v22, v24, 0x6

    add-int v9, p1, v22

    sub-int v13, p2, v22

    add-int v24, p1, p2

    ushr-int/lit8 v11, v24, 0x1

    add-int v12, v11, v22

    sub-int v10, v11, v22

    aget-byte v3, p0, v9

    aget-byte v4, p0, v10

    aget-byte v5, p0, v11

    aget-byte v6, p0, v12

    aget-byte v7, p0, v13

    if-le v3, v4, :cond_0

    move/from16 v23, v3

    move v3, v4

    move/from16 v4, v23

    :cond_0
    if-le v6, v7, :cond_1

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    :cond_1
    if-le v3, v5, :cond_2

    move/from16 v23, v3

    move v3, v5

    move/from16 v5, v23

    :cond_2
    if-le v4, v5, :cond_3

    move/from16 v23, v4

    move v4, v5

    move/from16 v5, v23

    :cond_3
    if-le v3, v6, :cond_4

    move/from16 v23, v3

    move v3, v6

    move/from16 v6, v23

    :cond_4
    if-le v5, v6, :cond_5

    move/from16 v23, v5

    move v5, v6

    move/from16 v6, v23

    :cond_5
    if-le v4, v7, :cond_6

    move/from16 v23, v4

    move v4, v7

    move/from16 v7, v23

    :cond_6
    if-le v4, v5, :cond_7

    move/from16 v23, v4

    move v4, v5

    move/from16 v5, v23

    :cond_7
    if-le v6, v7, :cond_8

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    :cond_8
    aput-byte v3, p0, v9

    aput-byte v5, p0, v11

    aput-byte v7, p0, v13

    move/from16 v19, v4

    aget-byte v24, p0, p1

    aput-byte v24, p0, v10

    move/from16 v20, v6

    aget-byte v24, p0, p2

    aput-byte v24, p0, v12

    add-int/lit8 v17, p1, 0x1

    add-int/lit8 v14, p2, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v21, 0x1

    :goto_0
    if-eqz v21, :cond_f

    move/from16 v16, v17

    move/from16 v18, v17

    :goto_1
    move/from16 v0, v16

    if-gt v0, v14, :cond_e

    aget-byte v8, p0, v16

    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    aput-byte v8, p0, v18

    :cond_9
    add-int/lit8 v17, v18, 0x1

    :goto_2
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_1

    :cond_a
    const/16 v21, 0x0

    goto :goto_0

    :cond_b
    move/from16 v0, v20

    if-le v8, v0, :cond_21

    :goto_3
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    add-int/lit8 v15, v14, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_20

    move v14, v15

    move/from16 v17, v18

    :goto_4
    add-int/lit8 v24, v17, -0x1

    aget-byte v24, p0, v24

    aput-byte v24, p0, p1

    add-int/lit8 v24, v17, -0x1

    aput-byte v19, p0, v24

    add-int/lit8 v24, v14, 0x1

    aget-byte v24, p0, v24

    aput-byte v24, p0, p2

    add-int/lit8 v24, v14, 0x1

    aput-byte v20, p0, v24

    add-int/lit8 v24, v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    add-int/lit8 v24, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    if-nez v21, :cond_15

    :goto_5
    return-void

    :cond_c
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aget-byte v24, p0, v14

    aput-byte v24, p0, v18

    add-int/lit8 v15, v14, -0x1

    aput-byte v8, p0, v14

    move v14, v15

    goto :goto_2

    :cond_d
    aget-byte v24, p0, v14

    aput-byte v24, p0, v16

    add-int/lit8 v15, v14, -0x1

    aput-byte v8, p0, v14

    move v14, v15

    move/from16 v17, v18

    goto :goto_2

    :cond_e
    move/from16 v17, v18

    goto :goto_4

    :cond_f
    move/from16 v16, v17

    move/from16 v18, v17

    :goto_6
    move/from16 v0, v16

    if-gt v0, v14, :cond_1f

    aget-byte v8, p0, v16

    move/from16 v0, v19

    if-ne v8, v0, :cond_10

    move/from16 v17, v18

    :goto_7
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_6

    :cond_10
    move/from16 v0, v19

    if-ge v8, v0, :cond_12

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    aput-byte v8, p0, v18

    :cond_11
    add-int/lit8 v17, v18, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    :cond_13
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aget-byte v24, p0, v14

    aput-byte v24, p0, v18

    add-int/lit8 v15, v14, -0x1

    aput-byte v8, p0, v14

    move v14, v15

    goto :goto_7

    :cond_14
    aput-byte v19, p0, v16

    add-int/lit8 v15, v14, -0x1

    aput-byte v8, p0, v14

    move v14, v15

    move/from16 v17, v18

    goto :goto_7

    :cond_15
    move/from16 v0, v17

    if-ge v0, v9, :cond_18

    if-le v14, v13, :cond_18

    :goto_9
    aget-byte v24, p0, v17

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    :cond_16
    :goto_a
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    :cond_17
    move/from16 v16, v17

    move/from16 v18, v17

    :goto_b
    move/from16 v0, v16

    if-gt v0, v14, :cond_1e

    aget-byte v8, p0, v16

    move/from16 v0, v20

    if-ne v8, v0, :cond_1b

    :goto_c
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    add-int/lit8 v15, v14, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_1d

    move v14, v15

    move/from16 v17, v18

    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    goto/16 :goto_5

    :cond_19
    aget-byte v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aput-byte v19, p0, v18

    :goto_e
    add-int/lit8 v15, v14, -0x1

    aput-byte v20, p0, v14

    move v14, v15

    :goto_f
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_b

    :cond_1a
    aget-byte v24, p0, v14

    aput-byte v24, p0, v16

    move/from16 v17, v18

    goto :goto_e

    :cond_1b
    move/from16 v0, v19

    if-ne v8, v0, :cond_1c

    aget-byte v24, p0, v18

    aput-byte v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aput-byte v19, p0, v18

    goto :goto_f

    :cond_1c
    move/from16 v17, v18

    goto :goto_f

    :cond_1d
    move v14, v15

    goto :goto_c

    :cond_1e
    move/from16 v17, v18

    goto :goto_d

    :cond_1f
    move/from16 v17, v18

    goto/16 :goto_4

    :cond_20
    move v14, v15

    goto/16 :goto_3

    :cond_21
    move/from16 v17, v18

    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([CII)V
    .locals 25

    sub-int v24, p2, p1

    add-int/lit8 v24, v24, 0x1

    div-int/lit8 v22, v24, 0x6

    add-int v9, p1, v22

    sub-int v13, p2, v22

    add-int v24, p1, p2

    ushr-int/lit8 v11, v24, 0x1

    add-int v12, v11, v22

    sub-int v10, v11, v22

    aget-char v3, p0, v9

    aget-char v4, p0, v10

    aget-char v5, p0, v11

    aget-char v6, p0, v12

    aget-char v7, p0, v13

    if-le v3, v4, :cond_0

    move/from16 v23, v3

    move v3, v4

    move/from16 v4, v23

    :cond_0
    if-le v6, v7, :cond_1

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    :cond_1
    if-le v3, v5, :cond_2

    move/from16 v23, v3

    move v3, v5

    move/from16 v5, v23

    :cond_2
    if-le v4, v5, :cond_3

    move/from16 v23, v4

    move v4, v5

    move/from16 v5, v23

    :cond_3
    if-le v3, v6, :cond_4

    move/from16 v23, v3

    move v3, v6

    move/from16 v6, v23

    :cond_4
    if-le v5, v6, :cond_5

    move/from16 v23, v5

    move v5, v6

    move/from16 v6, v23

    :cond_5
    if-le v4, v7, :cond_6

    move/from16 v23, v4

    move v4, v7

    move/from16 v7, v23

    :cond_6
    if-le v4, v5, :cond_7

    move/from16 v23, v4

    move v4, v5

    move/from16 v5, v23

    :cond_7
    if-le v6, v7, :cond_8

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    :cond_8
    aput-char v3, p0, v9

    aput-char v5, p0, v11

    aput-char v7, p0, v13

    move/from16 v19, v4

    aget-char v24, p0, p1

    aput-char v24, p0, v10

    move/from16 v20, v6

    aget-char v24, p0, p2

    aput-char v24, p0, v12

    add-int/lit8 v17, p1, 0x1

    add-int/lit8 v14, p2, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v21, 0x1

    :goto_0
    if-eqz v21, :cond_f

    move/from16 v16, v17

    move/from16 v18, v17

    :goto_1
    move/from16 v0, v16

    if-gt v0, v14, :cond_e

    aget-char v8, p0, v16

    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    aget-char v24, p0, v18

    aput-char v24, p0, v16

    aput-char v8, p0, v18

    :cond_9
    add-int/lit8 v17, v18, 0x1

    :goto_2
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_1

    :cond_a
    const/16 v21, 0x0

    goto :goto_0

    :cond_b
    move/from16 v0, v20

    if-le v8, v0, :cond_21

    :goto_3
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    add-int/lit8 v15, v14, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_20

    move v14, v15

    move/from16 v17, v18

    :goto_4
    add-int/lit8 v24, v17, -0x1

    aget-char v24, p0, v24

    aput-char v24, p0, p1

    add-int/lit8 v24, v17, -0x1

    aput-char v19, p0, v24

    add-int/lit8 v24, v14, 0x1

    aget-char v24, p0, v24

    aput-char v24, p0, p2

    add-int/lit8 v24, v14, 0x1

    aput-char v20, p0, v24

    add-int/lit8 v24, v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    add-int/lit8 v24, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    if-nez v21, :cond_15

    :goto_5
    return-void

    :cond_c
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    aget-char v24, p0, v18

    aput-char v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aget-char v24, p0, v14

    aput-char v24, p0, v18

    add-int/lit8 v15, v14, -0x1

    aput-char v8, p0, v14

    move v14, v15

    goto :goto_2

    :cond_d
    aget-char v24, p0, v14

    aput-char v24, p0, v16

    add-int/lit8 v15, v14, -0x1

    aput-char v8, p0, v14

    move v14, v15

    move/from16 v17, v18

    goto :goto_2

    :cond_e
    move/from16 v17, v18

    goto :goto_4

    :cond_f
    move/from16 v16, v17

    move/from16 v18, v17

    :goto_6
    move/from16 v0, v16

    if-gt v0, v14, :cond_1f

    aget-char v8, p0, v16

    move/from16 v0, v19

    if-ne v8, v0, :cond_10

    move/from16 v17, v18

    :goto_7
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_6

    :cond_10
    move/from16 v0, v19

    if-ge v8, v0, :cond_12

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    aget-char v24, p0, v18

    aput-char v24, p0, v16

    aput-char v8, p0, v18

    :cond_11
    add-int/lit8 v17, v18, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    :cond_13
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    aget-char v24, p0, v18

    aput-char v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aget-char v24, p0, v14

    aput-char v24, p0, v18

    add-int/lit8 v15, v14, -0x1

    aput-char v8, p0, v14

    move v14, v15

    goto :goto_7

    :cond_14
    aput-char v19, p0, v16

    add-int/lit8 v15, v14, -0x1

    aput-char v8, p0, v14

    move v14, v15

    move/from16 v17, v18

    goto :goto_7

    :cond_15
    move/from16 v0, v17

    if-ge v0, v9, :cond_18

    if-le v14, v13, :cond_18

    :goto_9
    aget-char v24, p0, v17

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    :cond_16
    :goto_a
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    :cond_17
    move/from16 v16, v17

    move/from16 v18, v17

    :goto_b
    move/from16 v0, v16

    if-gt v0, v14, :cond_1e

    aget-char v8, p0, v16

    move/from16 v0, v20

    if-ne v8, v0, :cond_1b

    :goto_c
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    add-int/lit8 v15, v14, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_1d

    move v14, v15

    move/from16 v17, v18

    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    goto/16 :goto_5

    :cond_19
    aget-char v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    aget-char v24, p0, v18

    aput-char v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aput-char v19, p0, v18

    :goto_e
    add-int/lit8 v15, v14, -0x1

    aput-char v20, p0, v14

    move v14, v15

    :goto_f
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_b

    :cond_1a
    aget-char v24, p0, v14

    aput-char v24, p0, v16

    move/from16 v17, v18

    goto :goto_e

    :cond_1b
    move/from16 v0, v19

    if-ne v8, v0, :cond_1c

    aget-char v24, p0, v18

    aput-char v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aput-char v19, p0, v18

    goto :goto_f

    :cond_1c
    move/from16 v17, v18

    goto :goto_f

    :cond_1d
    move v14, v15

    goto :goto_c

    :cond_1e
    move/from16 v17, v18

    goto :goto_d

    :cond_1f
    move/from16 v17, v18

    goto/16 :goto_4

    :cond_20
    move v14, v15

    goto/16 :goto_3

    :cond_21
    move/from16 v17, v18

    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([DII)V
    .locals 35

    sub-int v33, p2, p1

    add-int/lit8 v33, v33, 0x1

    div-int/lit8 v30, v33, 0x6

    add-int v15, p1, v30

    sub-int v19, p2, v30

    add-int v33, p1, p2

    ushr-int/lit8 v17, v33, 0x1

    add-int v18, v17, v30

    sub-int v16, v17, v30

    aget-wide v3, p0, v15

    aget-wide v5, p0, v16

    aget-wide v7, p0, v17

    aget-wide v9, p0, v18

    aget-wide v11, p0, v19

    cmpl-double v33, v3, v5

    if-lez v33, :cond_0

    move-wide/from16 v31, v3

    move-wide v3, v5

    move-wide/from16 v5, v31

    :cond_0
    cmpl-double v33, v9, v11

    if-lez v33, :cond_1

    move-wide/from16 v31, v9

    move-wide v9, v11

    move-wide/from16 v11, v31

    :cond_1
    cmpl-double v33, v3, v7

    if-lez v33, :cond_2

    move-wide/from16 v31, v3

    move-wide v3, v7

    move-wide/from16 v7, v31

    :cond_2
    cmpl-double v33, v5, v7

    if-lez v33, :cond_3

    move-wide/from16 v31, v5

    move-wide v5, v7

    move-wide/from16 v7, v31

    :cond_3
    cmpl-double v33, v3, v9

    if-lez v33, :cond_4

    move-wide/from16 v31, v3

    move-wide v3, v9

    move-wide/from16 v9, v31

    :cond_4
    cmpl-double v33, v7, v9

    if-lez v33, :cond_5

    move-wide/from16 v31, v7

    move-wide v7, v9

    move-wide/from16 v9, v31

    :cond_5
    cmpl-double v33, v5, v11

    if-lez v33, :cond_6

    move-wide/from16 v31, v5

    move-wide v5, v11

    move-wide/from16 v11, v31

    :cond_6
    cmpl-double v33, v5, v7

    if-lez v33, :cond_7

    move-wide/from16 v31, v5

    move-wide v5, v7

    move-wide/from16 v7, v31

    :cond_7
    cmpl-double v33, v9, v11

    if-lez v33, :cond_8

    move-wide/from16 v31, v9

    move-wide v9, v11

    move-wide/from16 v11, v31

    :cond_8
    aput-wide v3, p0, v15

    aput-wide v7, p0, v17

    aput-wide v11, p0, v19

    move-wide/from16 v25, v5

    aget-wide v33, p0, p1

    aput-wide v33, p0, v16

    move-wide/from16 v27, v9

    aget-wide v33, p0, p2

    aput-wide v33, p0, v18

    add-int/lit8 v23, p1, 0x1

    add-int/lit8 v20, p2, -0x1

    cmpl-double v33, v25, v27

    if-eqz v33, :cond_a

    const/16 v29, 0x1

    :goto_0
    if-eqz v29, :cond_f

    move/from16 v22, v23

    move/from16 v24, v23

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_e

    aget-wide v13, p0, v22

    cmpg-double v33, v13, v25

    if-gez v33, :cond_b

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    aput-wide v13, p0, v24

    :cond_9
    add-int/lit8 v23, v24, 0x1

    :goto_2
    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v23

    goto :goto_1

    :cond_a
    const/16 v29, 0x0

    goto :goto_0

    :cond_b
    cmpl-double v33, v13, v27

    if-lez v33, :cond_21

    :goto_3
    aget-wide v33, p0, v20

    cmpl-double v33, v33, v27

    if-lez v33, :cond_c

    add-int/lit8 v21, v20, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    move/from16 v20, v21

    move/from16 v23, v24

    :goto_4
    add-int/lit8 v33, v23, -0x1

    aget-wide v33, p0, v33

    aput-wide v33, p0, p1

    add-int/lit8 v33, v23, -0x1

    aput-wide v25, p0, v33

    add-int/lit8 v33, v20, 0x1

    aget-wide v33, p0, v33

    aput-wide v33, p0, p2

    add-int/lit8 v33, v20, 0x1

    aput-wide v27, p0, v33

    add-int/lit8 v33, v23, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    add-int/lit8 v33, v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    if-nez v29, :cond_15

    :goto_5
    return-void

    :cond_c
    aget-wide v33, p0, v20

    cmpg-double v33, v33, v25

    if-gez v33, :cond_d

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    add-int/lit8 v23, v24, 0x1

    aget-wide v33, p0, v20

    aput-wide v33, p0, v24

    add-int/lit8 v21, v20, -0x1

    aput-wide v13, p0, v20

    move/from16 v20, v21

    goto :goto_2

    :cond_d
    aget-wide v33, p0, v20

    aput-wide v33, p0, v22

    add-int/lit8 v21, v20, -0x1

    aput-wide v13, p0, v20

    move/from16 v20, v21

    move/from16 v23, v24

    goto :goto_2

    :cond_e
    move/from16 v23, v24

    goto :goto_4

    :cond_f
    move/from16 v22, v23

    move/from16 v24, v23

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_1f

    aget-wide v13, p0, v22

    cmpl-double v33, v13, v25

    if-nez v33, :cond_10

    move/from16 v23, v24

    :goto_7
    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v23

    goto :goto_6

    :cond_10
    cmpg-double v33, v13, v25

    if-gez v33, :cond_12

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    aput-wide v13, p0, v24

    :cond_11
    add-int/lit8 v23, v24, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    aget-wide v33, p0, v20

    cmpl-double v33, v33, v25

    if-lez v33, :cond_13

    add-int/lit8 v20, v20, -0x1

    goto :goto_8

    :cond_13
    aget-wide v33, p0, v20

    cmpg-double v33, v33, v25

    if-gez v33, :cond_14

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    add-int/lit8 v23, v24, 0x1

    aget-wide v33, p0, v20

    aput-wide v33, p0, v24

    add-int/lit8 v21, v20, -0x1

    aput-wide v13, p0, v20

    move/from16 v20, v21

    goto :goto_7

    :cond_14
    aput-wide v25, p0, v22

    add-int/lit8 v21, v20, -0x1

    aput-wide v13, p0, v20

    move/from16 v20, v21

    move/from16 v23, v24

    goto :goto_7

    :cond_15
    move/from16 v0, v23

    if-ge v0, v15, :cond_18

    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_18

    :goto_9
    aget-wide v33, p0, v23

    cmpl-double v33, v33, v25

    if-nez v33, :cond_16

    add-int/lit8 v23, v23, 0x1

    goto :goto_9

    :cond_16
    :goto_a
    aget-wide v33, p0, v20

    cmpl-double v33, v33, v27

    if-nez v33, :cond_17

    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    :cond_17
    move/from16 v22, v23

    move/from16 v24, v23

    :goto_b
    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_1e

    aget-wide v13, p0, v22

    cmpl-double v33, v13, v27

    if-nez v33, :cond_1b

    :goto_c
    aget-wide v33, p0, v20

    cmpl-double v33, v33, v27

    if-nez v33, :cond_19

    add-int/lit8 v21, v20, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    move/from16 v20, v21

    move/from16 v23, v24

    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    goto/16 :goto_5

    :cond_19
    aget-wide v33, p0, v20

    cmpl-double v33, v33, v25

    if-nez v33, :cond_1a

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    add-int/lit8 v23, v24, 0x1

    aput-wide v25, p0, v24

    :goto_e
    add-int/lit8 v21, v20, -0x1

    aput-wide v27, p0, v20

    move/from16 v20, v21

    :goto_f
    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v23

    goto :goto_b

    :cond_1a
    aget-wide v33, p0, v20

    aput-wide v33, p0, v22

    move/from16 v23, v24

    goto :goto_e

    :cond_1b
    cmpl-double v33, v13, v25

    if-nez v33, :cond_1c

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    add-int/lit8 v23, v24, 0x1

    aput-wide v25, p0, v24

    goto :goto_f

    :cond_1c
    move/from16 v23, v24

    goto :goto_f

    :cond_1d
    move/from16 v20, v21

    goto :goto_c

    :cond_1e
    move/from16 v23, v24

    goto :goto_d

    :cond_1f
    move/from16 v23, v24

    goto/16 :goto_4

    :cond_20
    move/from16 v20, v21

    goto/16 :goto_3

    :cond_21
    move/from16 v23, v24

    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([FII)V
    .locals 25

    sub-int v24, p2, p1

    add-int/lit8 v24, v24, 0x1

    div-int/lit8 v22, v24, 0x6

    add-int v9, p1, v22

    sub-int v13, p2, v22

    add-int v24, p1, p2

    ushr-int/lit8 v11, v24, 0x1

    add-int v12, v11, v22

    sub-int v10, v11, v22

    aget v3, p0, v9

    aget v4, p0, v10

    aget v5, p0, v11

    aget v6, p0, v12

    aget v7, p0, v13

    cmpl-float v24, v3, v4

    if-lez v24, :cond_0

    move/from16 v23, v3

    move v3, v4

    move/from16 v4, v23

    :cond_0
    cmpl-float v24, v6, v7

    if-lez v24, :cond_1

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    :cond_1
    cmpl-float v24, v3, v5

    if-lez v24, :cond_2

    move/from16 v23, v3

    move v3, v5

    move/from16 v5, v23

    :cond_2
    cmpl-float v24, v4, v5

    if-lez v24, :cond_3

    move/from16 v23, v4

    move v4, v5

    move/from16 v5, v23

    :cond_3
    cmpl-float v24, v3, v6

    if-lez v24, :cond_4

    move/from16 v23, v3

    move v3, v6

    move/from16 v6, v23

    :cond_4
    cmpl-float v24, v5, v6

    if-lez v24, :cond_5

    move/from16 v23, v5

    move v5, v6

    move/from16 v6, v23

    :cond_5
    cmpl-float v24, v4, v7

    if-lez v24, :cond_6

    move/from16 v23, v4

    move v4, v7

    move/from16 v7, v23

    :cond_6
    cmpl-float v24, v4, v5

    if-lez v24, :cond_7

    move/from16 v23, v4

    move v4, v5

    move/from16 v5, v23

    :cond_7
    cmpl-float v24, v6, v7

    if-lez v24, :cond_8

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    :cond_8
    aput v3, p0, v9

    aput v5, p0, v11

    aput v7, p0, v13

    move/from16 v19, v4

    aget v24, p0, p1

    aput v24, p0, v10

    move/from16 v20, v6

    aget v24, p0, p2

    aput v24, p0, v12

    add-int/lit8 v17, p1, 0x1

    add-int/lit8 v14, p2, -0x1

    cmpl-float v24, v19, v20

    if-eqz v24, :cond_a

    const/16 v21, 0x1

    :goto_0
    if-eqz v21, :cond_f

    move/from16 v16, v17

    move/from16 v18, v17

    :goto_1
    move/from16 v0, v16

    if-gt v0, v14, :cond_e

    aget v8, p0, v16

    cmpg-float v24, v8, v19

    if-gez v24, :cond_b

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    aget v24, p0, v18

    aput v24, p0, v16

    aput v8, p0, v18

    :cond_9
    add-int/lit8 v17, v18, 0x1

    :goto_2
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_1

    :cond_a
    const/16 v21, 0x0

    goto :goto_0

    :cond_b
    cmpl-float v24, v8, v20

    if-lez v24, :cond_21

    :goto_3
    aget v24, p0, v14

    cmpl-float v24, v24, v20

    if-lez v24, :cond_c

    add-int/lit8 v15, v14, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_20

    move v14, v15

    move/from16 v17, v18

    :goto_4
    add-int/lit8 v24, v17, -0x1

    aget v24, p0, v24

    aput v24, p0, p1

    add-int/lit8 v24, v17, -0x1

    aput v19, p0, v24

    add-int/lit8 v24, v14, 0x1

    aget v24, p0, v24

    aput v24, p0, p2

    add-int/lit8 v24, v14, 0x1

    aput v20, p0, v24

    add-int/lit8 v24, v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    add-int/lit8 v24, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    if-nez v21, :cond_15

    :goto_5
    return-void

    :cond_c
    aget v24, p0, v14

    cmpg-float v24, v24, v19

    if-gez v24, :cond_d

    aget v24, p0, v18

    aput v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aget v24, p0, v14

    aput v24, p0, v18

    add-int/lit8 v15, v14, -0x1

    aput v8, p0, v14

    move v14, v15

    goto :goto_2

    :cond_d
    aget v24, p0, v14

    aput v24, p0, v16

    add-int/lit8 v15, v14, -0x1

    aput v8, p0, v14

    move v14, v15

    move/from16 v17, v18

    goto :goto_2

    :cond_e
    move/from16 v17, v18

    goto :goto_4

    :cond_f
    move/from16 v16, v17

    move/from16 v18, v17

    :goto_6
    move/from16 v0, v16

    if-gt v0, v14, :cond_1f

    aget v8, p0, v16

    cmpl-float v24, v8, v19

    if-nez v24, :cond_10

    move/from16 v17, v18

    :goto_7
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_6

    :cond_10
    cmpg-float v24, v8, v19

    if-gez v24, :cond_12

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    aget v24, p0, v18

    aput v24, p0, v16

    aput v8, p0, v18

    :cond_11
    add-int/lit8 v17, v18, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    aget v24, p0, v14

    cmpl-float v24, v24, v19

    if-lez v24, :cond_13

    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    :cond_13
    aget v24, p0, v14

    cmpg-float v24, v24, v19

    if-gez v24, :cond_14

    aget v24, p0, v18

    aput v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aget v24, p0, v14

    aput v24, p0, v18

    add-int/lit8 v15, v14, -0x1

    aput v8, p0, v14

    move v14, v15

    goto :goto_7

    :cond_14
    aput v19, p0, v16

    add-int/lit8 v15, v14, -0x1

    aput v8, p0, v14

    move v14, v15

    move/from16 v17, v18

    goto :goto_7

    :cond_15
    move/from16 v0, v17

    if-ge v0, v9, :cond_18

    if-le v14, v13, :cond_18

    :goto_9
    aget v24, p0, v17

    cmpl-float v24, v24, v19

    if-nez v24, :cond_16

    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    :cond_16
    :goto_a
    aget v24, p0, v14

    cmpl-float v24, v24, v20

    if-nez v24, :cond_17

    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    :cond_17
    move/from16 v16, v17

    move/from16 v18, v17

    :goto_b
    move/from16 v0, v16

    if-gt v0, v14, :cond_1e

    aget v8, p0, v16

    cmpl-float v24, v8, v20

    if-nez v24, :cond_1b

    :goto_c
    aget v24, p0, v14

    cmpl-float v24, v24, v20

    if-nez v24, :cond_19

    add-int/lit8 v15, v14, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_1d

    move v14, v15

    move/from16 v17, v18

    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    goto/16 :goto_5

    :cond_19
    aget v24, p0, v14

    cmpl-float v24, v24, v19

    if-nez v24, :cond_1a

    aget v24, p0, v18

    aput v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aput v19, p0, v18

    :goto_e
    add-int/lit8 v15, v14, -0x1

    aput v20, p0, v14

    move v14, v15

    :goto_f
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_b

    :cond_1a
    aget v24, p0, v14

    aput v24, p0, v16

    move/from16 v17, v18

    goto :goto_e

    :cond_1b
    cmpl-float v24, v8, v19

    if-nez v24, :cond_1c

    aget v24, p0, v18

    aput v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aput v19, p0, v18

    goto :goto_f

    :cond_1c
    move/from16 v17, v18

    goto :goto_f

    :cond_1d
    move v14, v15

    goto :goto_c

    :cond_1e
    move/from16 v17, v18

    goto :goto_d

    :cond_1f
    move/from16 v17, v18

    goto/16 :goto_4

    :cond_20
    move v14, v15

    goto/16 :goto_3

    :cond_21
    move/from16 v17, v18

    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([III)V
    .locals 25

    sub-int v24, p2, p1

    add-int/lit8 v24, v24, 0x1

    div-int/lit8 v22, v24, 0x6

    add-int v9, p1, v22

    sub-int v13, p2, v22

    add-int v24, p1, p2

    ushr-int/lit8 v11, v24, 0x1

    add-int v12, v11, v22

    sub-int v10, v11, v22

    aget v3, p0, v9

    aget v4, p0, v10

    aget v5, p0, v11

    aget v6, p0, v12

    aget v7, p0, v13

    if-le v3, v4, :cond_0

    move/from16 v23, v3

    move v3, v4

    move/from16 v4, v23

    :cond_0
    if-le v6, v7, :cond_1

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    :cond_1
    if-le v3, v5, :cond_2

    move/from16 v23, v3

    move v3, v5

    move/from16 v5, v23

    :cond_2
    if-le v4, v5, :cond_3

    move/from16 v23, v4

    move v4, v5

    move/from16 v5, v23

    :cond_3
    if-le v3, v6, :cond_4

    move/from16 v23, v3

    move v3, v6

    move/from16 v6, v23

    :cond_4
    if-le v5, v6, :cond_5

    move/from16 v23, v5

    move v5, v6

    move/from16 v6, v23

    :cond_5
    if-le v4, v7, :cond_6

    move/from16 v23, v4

    move v4, v7

    move/from16 v7, v23

    :cond_6
    if-le v4, v5, :cond_7

    move/from16 v23, v4

    move v4, v5

    move/from16 v5, v23

    :cond_7
    if-le v6, v7, :cond_8

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    :cond_8
    aput v3, p0, v9

    aput v5, p0, v11

    aput v7, p0, v13

    move/from16 v19, v4

    aget v24, p0, p1

    aput v24, p0, v10

    move/from16 v20, v6

    aget v24, p0, p2

    aput v24, p0, v12

    add-int/lit8 v17, p1, 0x1

    add-int/lit8 v14, p2, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v21, 0x1

    :goto_0
    if-eqz v21, :cond_f

    move/from16 v16, v17

    move/from16 v18, v17

    :goto_1
    move/from16 v0, v16

    if-gt v0, v14, :cond_e

    aget v8, p0, v16

    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    aget v24, p0, v18

    aput v24, p0, v16

    aput v8, p0, v18

    :cond_9
    add-int/lit8 v17, v18, 0x1

    :goto_2
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_1

    :cond_a
    const/16 v21, 0x0

    goto :goto_0

    :cond_b
    move/from16 v0, v20

    if-le v8, v0, :cond_21

    :goto_3
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    add-int/lit8 v15, v14, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_20

    move v14, v15

    move/from16 v17, v18

    :goto_4
    add-int/lit8 v24, v17, -0x1

    aget v24, p0, v24

    aput v24, p0, p1

    add-int/lit8 v24, v17, -0x1

    aput v19, p0, v24

    add-int/lit8 v24, v14, 0x1

    aget v24, p0, v24

    aput v24, p0, p2

    add-int/lit8 v24, v14, 0x1

    aput v20, p0, v24

    add-int/lit8 v24, v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    add-int/lit8 v24, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    if-nez v21, :cond_15

    :goto_5
    return-void

    :cond_c
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    aget v24, p0, v18

    aput v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aget v24, p0, v14

    aput v24, p0, v18

    add-int/lit8 v15, v14, -0x1

    aput v8, p0, v14

    move v14, v15

    goto :goto_2

    :cond_d
    aget v24, p0, v14

    aput v24, p0, v16

    add-int/lit8 v15, v14, -0x1

    aput v8, p0, v14

    move v14, v15

    move/from16 v17, v18

    goto :goto_2

    :cond_e
    move/from16 v17, v18

    goto :goto_4

    :cond_f
    move/from16 v16, v17

    move/from16 v18, v17

    :goto_6
    move/from16 v0, v16

    if-gt v0, v14, :cond_1f

    aget v8, p0, v16

    move/from16 v0, v19

    if-ne v8, v0, :cond_10

    move/from16 v17, v18

    :goto_7
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_6

    :cond_10
    move/from16 v0, v19

    if-ge v8, v0, :cond_12

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    aget v24, p0, v18

    aput v24, p0, v16

    aput v8, p0, v18

    :cond_11
    add-int/lit8 v17, v18, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    :cond_13
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    aget v24, p0, v18

    aput v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aget v24, p0, v14

    aput v24, p0, v18

    add-int/lit8 v15, v14, -0x1

    aput v8, p0, v14

    move v14, v15

    goto :goto_7

    :cond_14
    aput v19, p0, v16

    add-int/lit8 v15, v14, -0x1

    aput v8, p0, v14

    move v14, v15

    move/from16 v17, v18

    goto :goto_7

    :cond_15
    move/from16 v0, v17

    if-ge v0, v9, :cond_18

    if-le v14, v13, :cond_18

    :goto_9
    aget v24, p0, v17

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    :cond_16
    :goto_a
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    :cond_17
    move/from16 v16, v17

    move/from16 v18, v17

    :goto_b
    move/from16 v0, v16

    if-gt v0, v14, :cond_1e

    aget v8, p0, v16

    move/from16 v0, v20

    if-ne v8, v0, :cond_1b

    :goto_c
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    add-int/lit8 v15, v14, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_1d

    move v14, v15

    move/from16 v17, v18

    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    goto/16 :goto_5

    :cond_19
    aget v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    aget v24, p0, v18

    aput v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aput v19, p0, v18

    :goto_e
    add-int/lit8 v15, v14, -0x1

    aput v20, p0, v14

    move v14, v15

    :goto_f
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_b

    :cond_1a
    aget v24, p0, v14

    aput v24, p0, v16

    move/from16 v17, v18

    goto :goto_e

    :cond_1b
    move/from16 v0, v19

    if-ne v8, v0, :cond_1c

    aget v24, p0, v18

    aput v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aput v19, p0, v18

    goto :goto_f

    :cond_1c
    move/from16 v17, v18

    goto :goto_f

    :cond_1d
    move v14, v15

    goto :goto_c

    :cond_1e
    move/from16 v17, v18

    goto :goto_d

    :cond_1f
    move/from16 v17, v18

    goto/16 :goto_4

    :cond_20
    move v14, v15

    goto/16 :goto_3

    :cond_21
    move/from16 v17, v18

    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([JII)V
    .locals 35

    sub-int v33, p2, p1

    add-int/lit8 v33, v33, 0x1

    div-int/lit8 v30, v33, 0x6

    add-int v15, p1, v30

    sub-int v19, p2, v30

    add-int v33, p1, p2

    ushr-int/lit8 v17, v33, 0x1

    add-int v18, v17, v30

    sub-int v16, v17, v30

    aget-wide v3, p0, v15

    aget-wide v5, p0, v16

    aget-wide v7, p0, v17

    aget-wide v9, p0, v18

    aget-wide v11, p0, v19

    cmp-long v33, v3, v5

    if-lez v33, :cond_0

    move-wide/from16 v31, v3

    move-wide v3, v5

    move-wide/from16 v5, v31

    :cond_0
    cmp-long v33, v9, v11

    if-lez v33, :cond_1

    move-wide/from16 v31, v9

    move-wide v9, v11

    move-wide/from16 v11, v31

    :cond_1
    cmp-long v33, v3, v7

    if-lez v33, :cond_2

    move-wide/from16 v31, v3

    move-wide v3, v7

    move-wide/from16 v7, v31

    :cond_2
    cmp-long v33, v5, v7

    if-lez v33, :cond_3

    move-wide/from16 v31, v5

    move-wide v5, v7

    move-wide/from16 v7, v31

    :cond_3
    cmp-long v33, v3, v9

    if-lez v33, :cond_4

    move-wide/from16 v31, v3

    move-wide v3, v9

    move-wide/from16 v9, v31

    :cond_4
    cmp-long v33, v7, v9

    if-lez v33, :cond_5

    move-wide/from16 v31, v7

    move-wide v7, v9

    move-wide/from16 v9, v31

    :cond_5
    cmp-long v33, v5, v11

    if-lez v33, :cond_6

    move-wide/from16 v31, v5

    move-wide v5, v11

    move-wide/from16 v11, v31

    :cond_6
    cmp-long v33, v5, v7

    if-lez v33, :cond_7

    move-wide/from16 v31, v5

    move-wide v5, v7

    move-wide/from16 v7, v31

    :cond_7
    cmp-long v33, v9, v11

    if-lez v33, :cond_8

    move-wide/from16 v31, v9

    move-wide v9, v11

    move-wide/from16 v11, v31

    :cond_8
    aput-wide v3, p0, v15

    aput-wide v7, p0, v17

    aput-wide v11, p0, v19

    move-wide/from16 v25, v5

    aget-wide v33, p0, p1

    aput-wide v33, p0, v16

    move-wide/from16 v27, v9

    aget-wide v33, p0, p2

    aput-wide v33, p0, v18

    add-int/lit8 v23, p1, 0x1

    add-int/lit8 v20, p2, -0x1

    cmp-long v33, v25, v27

    if-eqz v33, :cond_a

    const/16 v29, 0x1

    :goto_0
    if-eqz v29, :cond_f

    move/from16 v22, v23

    move/from16 v24, v23

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_e

    aget-wide v13, p0, v22

    cmp-long v33, v13, v25

    if-gez v33, :cond_b

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    aput-wide v13, p0, v24

    :cond_9
    add-int/lit8 v23, v24, 0x1

    :goto_2
    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v23

    goto :goto_1

    :cond_a
    const/16 v29, 0x0

    goto :goto_0

    :cond_b
    cmp-long v33, v13, v27

    if-lez v33, :cond_21

    :goto_3
    aget-wide v33, p0, v20

    cmp-long v33, v33, v27

    if-lez v33, :cond_c

    add-int/lit8 v21, v20, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    move/from16 v20, v21

    move/from16 v23, v24

    :goto_4
    add-int/lit8 v33, v23, -0x1

    aget-wide v33, p0, v33

    aput-wide v33, p0, p1

    add-int/lit8 v33, v23, -0x1

    aput-wide v25, p0, v33

    add-int/lit8 v33, v20, 0x1

    aget-wide v33, p0, v33

    aput-wide v33, p0, p2

    add-int/lit8 v33, v20, 0x1

    aput-wide v27, p0, v33

    add-int/lit8 v33, v23, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    add-int/lit8 v33, v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    if-nez v29, :cond_15

    :goto_5
    return-void

    :cond_c
    aget-wide v33, p0, v20

    cmp-long v33, v33, v25

    if-gez v33, :cond_d

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    add-int/lit8 v23, v24, 0x1

    aget-wide v33, p0, v20

    aput-wide v33, p0, v24

    add-int/lit8 v21, v20, -0x1

    aput-wide v13, p0, v20

    move/from16 v20, v21

    goto :goto_2

    :cond_d
    aget-wide v33, p0, v20

    aput-wide v33, p0, v22

    add-int/lit8 v21, v20, -0x1

    aput-wide v13, p0, v20

    move/from16 v20, v21

    move/from16 v23, v24

    goto :goto_2

    :cond_e
    move/from16 v23, v24

    goto :goto_4

    :cond_f
    move/from16 v22, v23

    move/from16 v24, v23

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_1f

    aget-wide v13, p0, v22

    cmp-long v33, v13, v25

    if-nez v33, :cond_10

    move/from16 v23, v24

    :goto_7
    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v23

    goto :goto_6

    :cond_10
    cmp-long v33, v13, v25

    if-gez v33, :cond_12

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    aput-wide v13, p0, v24

    :cond_11
    add-int/lit8 v23, v24, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    aget-wide v33, p0, v20

    cmp-long v33, v33, v25

    if-lez v33, :cond_13

    add-int/lit8 v20, v20, -0x1

    goto :goto_8

    :cond_13
    aget-wide v33, p0, v20

    cmp-long v33, v33, v25

    if-gez v33, :cond_14

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    add-int/lit8 v23, v24, 0x1

    aget-wide v33, p0, v20

    aput-wide v33, p0, v24

    add-int/lit8 v21, v20, -0x1

    aput-wide v13, p0, v20

    move/from16 v20, v21

    goto :goto_7

    :cond_14
    aput-wide v25, p0, v22

    add-int/lit8 v21, v20, -0x1

    aput-wide v13, p0, v20

    move/from16 v20, v21

    move/from16 v23, v24

    goto :goto_7

    :cond_15
    move/from16 v0, v23

    if-ge v0, v15, :cond_18

    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_18

    :goto_9
    aget-wide v33, p0, v23

    cmp-long v33, v33, v25

    if-nez v33, :cond_16

    add-int/lit8 v23, v23, 0x1

    goto :goto_9

    :cond_16
    :goto_a
    aget-wide v33, p0, v20

    cmp-long v33, v33, v27

    if-nez v33, :cond_17

    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    :cond_17
    move/from16 v22, v23

    move/from16 v24, v23

    :goto_b
    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_1e

    aget-wide v13, p0, v22

    cmp-long v33, v13, v27

    if-nez v33, :cond_1b

    :goto_c
    aget-wide v33, p0, v20

    cmp-long v33, v33, v27

    if-nez v33, :cond_19

    add-int/lit8 v21, v20, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    move/from16 v20, v21

    move/from16 v23, v24

    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    goto/16 :goto_5

    :cond_19
    aget-wide v33, p0, v20

    cmp-long v33, v33, v25

    if-nez v33, :cond_1a

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    add-int/lit8 v23, v24, 0x1

    aput-wide v25, p0, v24

    :goto_e
    add-int/lit8 v21, v20, -0x1

    aput-wide v27, p0, v20

    move/from16 v20, v21

    :goto_f
    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v23

    goto :goto_b

    :cond_1a
    aget-wide v33, p0, v20

    aput-wide v33, p0, v22

    move/from16 v23, v24

    goto :goto_e

    :cond_1b
    cmp-long v33, v13, v25

    if-nez v33, :cond_1c

    aget-wide v33, p0, v24

    aput-wide v33, p0, v22

    add-int/lit8 v23, v24, 0x1

    aput-wide v25, p0, v24

    goto :goto_f

    :cond_1c
    move/from16 v23, v24

    goto :goto_f

    :cond_1d
    move/from16 v20, v21

    goto :goto_c

    :cond_1e
    move/from16 v23, v24

    goto :goto_d

    :cond_1f
    move/from16 v23, v24

    goto/16 :goto_4

    :cond_20
    move/from16 v20, v21

    goto/16 :goto_3

    :cond_21
    move/from16 v23, v24

    goto/16 :goto_2
.end method

.method private static dualPivotQuicksort([SII)V
    .locals 25

    sub-int v24, p2, p1

    add-int/lit8 v24, v24, 0x1

    div-int/lit8 v22, v24, 0x6

    add-int v9, p1, v22

    sub-int v13, p2, v22

    add-int v24, p1, p2

    ushr-int/lit8 v11, v24, 0x1

    add-int v12, v11, v22

    sub-int v10, v11, v22

    aget-short v3, p0, v9

    aget-short v4, p0, v10

    aget-short v5, p0, v11

    aget-short v6, p0, v12

    aget-short v7, p0, v13

    if-le v3, v4, :cond_0

    move/from16 v23, v3

    move v3, v4

    move/from16 v4, v23

    :cond_0
    if-le v6, v7, :cond_1

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    :cond_1
    if-le v3, v5, :cond_2

    move/from16 v23, v3

    move v3, v5

    move/from16 v5, v23

    :cond_2
    if-le v4, v5, :cond_3

    move/from16 v23, v4

    move v4, v5

    move/from16 v5, v23

    :cond_3
    if-le v3, v6, :cond_4

    move/from16 v23, v3

    move v3, v6

    move/from16 v6, v23

    :cond_4
    if-le v5, v6, :cond_5

    move/from16 v23, v5

    move v5, v6

    move/from16 v6, v23

    :cond_5
    if-le v4, v7, :cond_6

    move/from16 v23, v4

    move v4, v7

    move/from16 v7, v23

    :cond_6
    if-le v4, v5, :cond_7

    move/from16 v23, v4

    move v4, v5

    move/from16 v5, v23

    :cond_7
    if-le v6, v7, :cond_8

    move/from16 v23, v6

    move v6, v7

    move/from16 v7, v23

    :cond_8
    aput-short v3, p0, v9

    aput-short v5, p0, v11

    aput-short v7, p0, v13

    move/from16 v19, v4

    aget-short v24, p0, p1

    aput-short v24, p0, v10

    move/from16 v20, v6

    aget-short v24, p0, p2

    aput-short v24, p0, v12

    add-int/lit8 v17, p1, 0x1

    add-int/lit8 v14, p2, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v21, 0x1

    :goto_0
    if-eqz v21, :cond_f

    move/from16 v16, v17

    move/from16 v18, v17

    :goto_1
    move/from16 v0, v16

    if-gt v0, v14, :cond_e

    aget-short v8, p0, v16

    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    aget-short v24, p0, v18

    aput-short v24, p0, v16

    aput-short v8, p0, v18

    :cond_9
    add-int/lit8 v17, v18, 0x1

    :goto_2
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_1

    :cond_a
    const/16 v21, 0x0

    goto :goto_0

    :cond_b
    move/from16 v0, v20

    if-le v8, v0, :cond_21

    :goto_3
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    add-int/lit8 v15, v14, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_20

    move v14, v15

    move/from16 v17, v18

    :goto_4
    add-int/lit8 v24, v17, -0x1

    aget-short v24, p0, v24

    aput-short v24, p0, p1

    add-int/lit8 v24, v17, -0x1

    aput-short v19, p0, v24

    add-int/lit8 v24, v14, 0x1

    aget-short v24, p0, v24

    aput-short v24, p0, p2

    add-int/lit8 v24, v14, 0x1

    aput-short v20, p0, v24

    add-int/lit8 v24, v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    add-int/lit8 v24, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    if-nez v21, :cond_15

    :goto_5
    return-void

    :cond_c
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    aget-short v24, p0, v18

    aput-short v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aget-short v24, p0, v14

    aput-short v24, p0, v18

    add-int/lit8 v15, v14, -0x1

    aput-short v8, p0, v14

    move v14, v15

    goto :goto_2

    :cond_d
    aget-short v24, p0, v14

    aput-short v24, p0, v16

    add-int/lit8 v15, v14, -0x1

    aput-short v8, p0, v14

    move v14, v15

    move/from16 v17, v18

    goto :goto_2

    :cond_e
    move/from16 v17, v18

    goto :goto_4

    :cond_f
    move/from16 v16, v17

    move/from16 v18, v17

    :goto_6
    move/from16 v0, v16

    if-gt v0, v14, :cond_1f

    aget-short v8, p0, v16

    move/from16 v0, v19

    if-ne v8, v0, :cond_10

    move/from16 v17, v18

    :goto_7
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_6

    :cond_10
    move/from16 v0, v19

    if-ge v8, v0, :cond_12

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    aget-short v24, p0, v18

    aput-short v24, p0, v16

    aput-short v8, p0, v18

    :cond_11
    add-int/lit8 v17, v18, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    :cond_13
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    aget-short v24, p0, v18

    aput-short v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aget-short v24, p0, v14

    aput-short v24, p0, v18

    add-int/lit8 v15, v14, -0x1

    aput-short v8, p0, v14

    move v14, v15

    goto :goto_7

    :cond_14
    aput-short v19, p0, v16

    add-int/lit8 v15, v14, -0x1

    aput-short v8, p0, v14

    move v14, v15

    move/from16 v17, v18

    goto :goto_7

    :cond_15
    move/from16 v0, v17

    if-ge v0, v9, :cond_18

    if-le v14, v13, :cond_18

    :goto_9
    aget-short v24, p0, v17

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    :cond_16
    :goto_a
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    :cond_17
    move/from16 v16, v17

    move/from16 v18, v17

    :goto_b
    move/from16 v0, v16

    if-gt v0, v14, :cond_1e

    aget-short v8, p0, v16

    move/from16 v0, v20

    if-ne v8, v0, :cond_1b

    :goto_c
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    add-int/lit8 v15, v14, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_1d

    move v14, v15

    move/from16 v17, v18

    :cond_18
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    goto/16 :goto_5

    :cond_19
    aget-short v24, p0, v14

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    aget-short v24, p0, v18

    aput-short v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aput-short v19, p0, v18

    :goto_e
    add-int/lit8 v15, v14, -0x1

    aput-short v20, p0, v14

    move v14, v15

    :goto_f
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_b

    :cond_1a
    aget-short v24, p0, v14

    aput-short v24, p0, v16

    move/from16 v17, v18

    goto :goto_e

    :cond_1b
    move/from16 v0, v19

    if-ne v8, v0, :cond_1c

    aget-short v24, p0, v18

    aput-short v24, p0, v16

    add-int/lit8 v17, v18, 0x1

    aput-short v19, p0, v18

    goto :goto_f

    :cond_1c
    move/from16 v17, v18

    goto :goto_f

    :cond_1d
    move v14, v15

    goto :goto_c

    :cond_1e
    move/from16 v17, v18

    goto :goto_d

    :cond_1f
    move/from16 v17, v18

    goto/16 :goto_4

    :cond_20
    move v14, v15

    goto/16 :goto_3

    :cond_21
    move/from16 v17, v18

    goto/16 :goto_2
.end method

.method private static findAnyZero([DII)I
    .locals 6

    const-wide/16 v4, 0x0

    :goto_0
    add-int v3, p1, p2

    ushr-int/lit8 v0, v3, 0x1

    aget-wide v1, p0, v0

    cmpg-double v3, v1, v4

    if-gez v3, :cond_0

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_0
    cmpl-double v3, v1, v4

    if-lez v3, :cond_1

    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static findAnyZero([FII)I
    .locals 4

    const/4 v3, 0x0

    :goto_0
    add-int v2, p1, p2

    ushr-int/lit8 v0, v2, 0x1

    aget v1, p0, v0

    cmpg-float v2, v1, v3

    if-gez v2, :cond_0

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v2, v1, v3

    if-lez v2, :cond_1

    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static sort([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    return-void
.end method

.method public static sort([BII)V
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    return-void
.end method

.method public static sort([C)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    return-void
.end method

.method public static sort([CII)V
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    return-void
.end method

.method public static sort([D)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([DII)V

    return-void
.end method

.method public static sort([DII)V
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([DII)V

    return-void
.end method

.method public static sort([F)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([FII)V

    return-void
.end method

.method public static sort([FII)V
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([FII)V

    return-void
.end method

.method public static sort([I)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    return-void
.end method

.method public static sort([III)V
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    return-void
.end method

.method public static sort([J)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    return-void
.end method

.method public static sort([JII)V
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    return-void
.end method

.method public static sort([S)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    return-void
.end method

.method public static sort([SII)V
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    return-void
.end method

.method private static sortNegZeroAndNaN([DII)V
    .locals 18

    const-wide/high16 v14, -0x8000

    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/4 v12, 0x0

    move/from16 v10, p2

    move/from16 v7, p1

    move v8, v7

    move v11, v10

    :goto_0
    if-gt v8, v11, :cond_1

    aget-wide v4, p0, v8

    const-wide/16 v14, 0x0

    cmpl-double v14, v4, v14

    if-nez v14, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v14

    cmp-long v14, v2, v14

    if-nez v14, :cond_0

    const-wide/16 v14, 0x0

    aput-wide v14, p0, v8

    add-int/lit8 v12, v12, 0x1

    move v7, v8

    move v10, v11

    :goto_1
    add-int/lit8 v7, v7, 0x1

    move v8, v7

    move v11, v10

    goto :goto_0

    :cond_0
    cmpl-double v14, v4, v4

    if-eqz v14, :cond_5

    add-int/lit8 v7, v8, -0x1

    aget-wide v14, p0, v11

    aput-wide v14, p0, v8

    add-int/lit8 v10, v11, -0x1

    const-wide/high16 v14, 0x7ff8

    aput-wide v14, p0, v11

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v11}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    if-nez v12, :cond_3

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v11}, Ljava/util/DualPivotQuicksort;->findAnyZero([DII)I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    :goto_2
    move/from16 v0, p1

    if-lt v6, v0, :cond_4

    aget-wide v14, p0, v6

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_4

    move v13, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    move v6, v13

    add-int v9, v13, v12

    :goto_3
    if-ge v6, v9, :cond_2

    const-wide/high16 v14, -0x8000

    aput-wide v14, p0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move v7, v8

    move v10, v11

    goto :goto_1
.end method

.method private static sortNegZeroAndNaN([FII)V
    .locals 13

    const/high16 v12, -0x8000

    const/4 v11, 0x0

    invoke-static {v12}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v8, 0x0

    move v6, p2

    move v3, p1

    move v4, v3

    move v7, v6

    :goto_0
    if-gt v4, v7, :cond_1

    aget v1, p0, v4

    cmpl-float v10, v1, v11

    if-nez v10, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v10

    if-ne v0, v10, :cond_0

    aput v11, p0, v4

    add-int/lit8 v8, v8, 0x1

    move v3, v4

    move v6, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    move v7, v6

    goto :goto_0

    :cond_0
    cmpl-float v10, v1, v1

    if-eqz v10, :cond_5

    add-int/lit8 v3, v4, -0x1

    aget v10, p0, v7

    aput v10, p0, v4

    add-int/lit8 v6, v7, -0x1

    const/high16 v10, 0x7fc0

    aput v10, p0, v7

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, v7}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    if-nez v8, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-static {p0, p1, v7}, Ljava/util/DualPivotQuicksort;->findAnyZero([FII)I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_2
    if-lt v2, p1, :cond_4

    aget v10, p0, v2

    cmpl-float v10, v10, v11

    if-nez v10, :cond_4

    move v9, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    move v2, v9

    add-int v5, v9, v8

    :goto_3
    if-ge v2, v5, :cond_2

    aput v12, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v3, v4

    move v6, v7

    goto :goto_1
.end method

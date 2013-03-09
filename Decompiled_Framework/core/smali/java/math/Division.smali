.class Ljava/math/Division;
.super Ljava/lang/Object;
.source "Division.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static divideArrayByInt([I[III)I
    .locals 21

    const-wide/16 v11, 0x0

    move/from16 v0, p3

    int-to-long v15, v0

    const-wide v17, 0xffffffffL

    and-long v4, v15, v17

    add-int/lit8 v8, p2, -0x1

    :goto_0
    if-ltz v8, :cond_4

    const/16 v15, 0x20

    shl-long v15, v11, v15

    aget v17, p1, v8

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0xffffffffL

    and-long v17, v17, v19

    or-long v13, v15, v17

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-ltz v15, :cond_1

    div-long v9, v13, v4

    rem-long v11, v13, v4

    :cond_0
    :goto_1
    const-wide v15, 0xffffffffL

    and-long/2addr v15, v9

    long-to-int v15, v15

    aput v15, p0, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x1

    ushr-long v2, v13, v15

    ushr-int/lit8 v15, p3, 0x1

    int-to-long v6, v15

    div-long v9, v2, v6

    rem-long v11, v2, v6

    const/4 v15, 0x1

    shl-long v15, v11, v15

    const-wide/16 v17, 0x1

    and-long v17, v17, v13

    add-long v11, v15, v17

    and-int/lit8 v15, p3, 0x1

    if-eqz v15, :cond_0

    cmp-long v15, v9, v11

    if-gtz v15, :cond_2

    sub-long/2addr v11, v9

    goto :goto_1

    :cond_2
    sub-long v15, v9, v11

    cmp-long v15, v15, v4

    if-gtz v15, :cond_3

    sub-long v15, v4, v9

    add-long/2addr v11, v15

    const-wide/16 v15, 0x1

    sub-long/2addr v9, v15

    goto :goto_1

    :cond_3
    const/4 v15, 0x1

    shl-long v15, v4, v15

    sub-long/2addr v15, v9

    add-long/2addr v11, v15

    const-wide/16 v15, 0x2

    sub-long/2addr v9, v15

    goto :goto_1

    :cond_4
    long-to-int v15, v11

    return v15
.end method

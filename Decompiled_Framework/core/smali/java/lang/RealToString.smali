.class final Ljava/lang/RealToString;
.super Ljava/lang/Object;
.source "RealToString.java"


# static fields
.field private static final INSTANCE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/RealToString;",
            ">;"
        }
    .end annotation
.end field

.field private static final invLogOfTenBaseTwo:D


# instance fields
.field private digitCount:I

.field private final digits:[I

.field private firstK:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/RealToString$1;

    invoke-direct {v0}, Ljava/lang/RealToString$1;-><init>()V

    sput-object v0, Ljava/lang/RealToString;->INSTANCE:Ljava/lang/ThreadLocal;

    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Ljava/lang/RealToString;->invLogOfTenBaseTwo:D

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/lang/RealToString;->digits:[I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/RealToString$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RealToString;-><init>()V

    return-void
.end method

.method private native bigIntDigitGenerator(JIZI)V
.end method

.method private convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;
    .locals 24

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v19

    const-wide/high16 v9, -0x8000

    and-long v9, v9, v19

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-nez v2, :cond_1

    const/16 v22, 0x1

    :goto_0
    const-wide/high16 v9, 0x7ff0

    and-long v9, v9, v19

    const/16 v2, 0x34

    shr-long/2addr v9, v2

    long-to-int v0, v9

    move/from16 v16, v0

    const-wide v9, 0xfffffffffffffL

    and-long v3, v19, v9

    const-wide/16 v9, 0x0

    cmp-long v2, v3, v9

    if-nez v2, :cond_2

    const/4 v7, 0x1

    :goto_1
    const/16 v23, 0x0

    const/16 v2, 0x7ff

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    if-eqz v7, :cond_4

    if-eqz v22, :cond_3

    const-string v23, "Infinity"

    :cond_0
    :goto_2
    if-eqz v23, :cond_9

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/RealToString;->resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2

    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const-string v23, "-Infinity"

    goto :goto_2

    :cond_4
    const-string v23, "NaN"

    goto :goto_2

    :cond_5
    if-nez v16, :cond_0

    if-eqz v7, :cond_7

    if-eqz v22, :cond_6

    const-string v23, "0.0"

    :goto_4
    goto :goto_2

    :cond_6
    const-string v23, "-0.0"

    goto :goto_4

    :cond_7
    const-wide/16 v9, 0x1

    cmp-long v2, v3, v9

    if-nez v2, :cond_0

    if-eqz v22, :cond_8

    const-string v23, "4.9E-324"

    :goto_5
    goto :goto_2

    :cond_8
    const-string v23, "-4.9E-324"

    goto :goto_5

    :cond_9
    const/16 v21, 0x433

    const/16 v8, 0x34

    if-nez v16, :cond_a

    rsub-int/lit8 v5, v21, 0x1

    move-wide/from16 v17, v3

    :goto_6
    const-wide/high16 v9, 0x10

    and-long v9, v9, v17

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-nez v2, :cond_b

    const/4 v2, 0x1

    shl-long v17, v17, v2

    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    :cond_a
    const-wide/high16 v9, 0x10

    or-long/2addr v3, v9

    sub-int v5, v16, v21

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Ljava/lang/RealToString;->digitCount:I

    move-object/from16 v0, p0

    iput v2, v0, Ljava/lang/RealToString;->firstK:I

    const/16 v2, -0x3b

    if-ge v2, v5, :cond_c

    const/4 v2, 0x6

    if-lt v5, v2, :cond_d

    :cond_c
    const/16 v2, -0x3b

    if-ne v5, v2, :cond_10

    if-nez v7, :cond_10

    :cond_d
    if-nez v16, :cond_f

    const/4 v6, 0x1

    :goto_7
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Ljava/lang/RealToString;->longDigitGenerator(JIZZI)V

    :goto_8
    if-eqz p1, :cond_12

    move-object/from16 v15, p1

    :goto_9
    const-wide v9, 0x416312d000000000L

    cmpl-double v2, p2, v9

    if-gez v2, :cond_e

    const-wide v9, -0x3e9ced3000000000L

    cmpg-double v2, p2, v9

    if-lez v2, :cond_e

    const-wide v9, -0x40af9db22d0e5604L

    cmpl-double v2, p2, v9

    if-lez v2, :cond_13

    const-wide v9, 0x3f50624dd2f1a9fcL

    cmpg-double v2, p2, v9

    if-gez v2, :cond_13

    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v15, v1}, Ljava/lang/RealToString;->freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V

    :goto_a
    if-eqz p1, :cond_14

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v6, 0x0

    goto :goto_7

    :cond_10
    if-nez v16, :cond_11

    const/4 v13, 0x1

    :goto_b
    move-object/from16 v9, p0

    move-wide v10, v3

    move v12, v5

    move v14, v8

    invoke-direct/range {v9 .. v14}, Ljava/lang/RealToString;->bigIntDigitGenerator(JIZI)V

    goto :goto_8

    :cond_11
    const/4 v13, 0x0

    goto :goto_b

    :cond_12
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_9

    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v15, v1}, Ljava/lang/RealToString;->freeFormat(Ljava/lang/AbstractStringBuilder;Z)V

    goto :goto_a

    :cond_14
    invoke-virtual {v15}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3
.end method

.method private freeFormat(Ljava/lang/AbstractStringBuilder;Z)V
    .locals 9

    const/16 v8, 0x2e

    const/16 v7, 0x30

    const/4 v5, -0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/16 v6, 0x2d

    invoke-virtual {p1, v6}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    :cond_0
    iget v4, p0, Ljava/lang/RealToString;->firstK:I

    if-gez v4, :cond_1

    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    add-int/lit8 v3, v4, 0x1

    :goto_0
    if-gez v3, :cond_1

    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v6, v1

    :goto_1
    if-eq v0, v5, :cond_4

    add-int/lit8 v6, v0, 0x30

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    :cond_2
    :goto_2
    if-nez v4, :cond_3

    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    :cond_3
    add-int/lit8 v4, v4, -0x1

    iget v6, p0, Ljava/lang/RealToString;->digitCount:I

    if-ge v2, v6, :cond_5

    iget-object v6, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v6, v2

    :goto_3
    if-ne v0, v5, :cond_6

    if-ge v4, v5, :cond_6

    return-void

    :cond_4
    if-lt v4, v5, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    goto :goto_2

    :cond_5
    move v0, v5

    move v1, v2

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method private freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/16 v4, 0x2d

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    :cond_0
    iget-object v4, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v1, v0, 0x1

    aget v4, v4, v0

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    iget v3, p0, Ljava/lang/RealToString;->firstK:I

    move v2, v3

    move v0, v1

    :goto_0
    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Ljava/lang/RealToString;->digitCount:I

    if-lt v0, v4, :cond_2

    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_1

    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    :cond_1
    const/16 v4, 0x45

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    invoke-static {p1, v2}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    return-void

    :cond_2
    iget-object v4, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v1, v0, 0x1

    aget v4, v4, v0

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    move v0, v1

    goto :goto_0
.end method

.method public static getInstance()Ljava/lang/RealToString;
    .locals 1

    sget-object v0, Ljava/lang/RealToString;->INSTANCE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RealToString;

    return-object v0
.end method

.method private longDigitGenerator(JIZZI)V
    .locals 21

    if-ltz p3, :cond_3

    const-wide/16 v17, 0x1

    shl-long v2, v17, p3

    if-nez p5, :cond_2

    add-int/lit8 v17, p3, 0x1

    shl-long v4, p1, v17

    const-wide/16 v6, 0x2

    :goto_0
    add-int v17, p3, p6

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sget-wide v19, Ljava/lang/RealToString;->invLogOfTenBaseTwo:D

    mul-double v17, v17, v19

    const-wide v19, 0x3ddb7cdfd9d7bdbbL

    sub-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v11, v0

    if-lez v11, :cond_6

    sget-object v17, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v17, v17, v11

    mul-long v6, v6, v17

    :cond_0
    :goto_1
    add-long v17, v4, v2

    cmp-long v17, v17, v6

    if-lez v17, :cond_8

    move-object/from16 v0, p0

    iput v11, v0, Ljava/lang/RealToString;->firstK:I

    :goto_2
    const/4 v8, 0x0

    const/4 v10, 0x3

    :goto_3
    if-ltz v10, :cond_9

    shl-long v17, v6, v10

    sub-long v13, v4, v17

    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-ltz v17, :cond_1

    move-wide v4, v13

    const/16 v17, 0x1

    shl-int v17, v17, v10

    add-int v8, v8, v17

    :cond_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v17, p3, 0x2

    shl-long v4, p1, v17

    const-wide/16 v6, 0x4

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x1

    if-nez p4, :cond_4

    if-nez p5, :cond_5

    :cond_4
    const/16 v17, 0x1

    shl-long v4, p1, v17

    const-wide/16 v17, 0x1

    rsub-int/lit8 v19, p3, 0x1

    shl-long v6, v17, v19

    goto :goto_0

    :cond_5
    const/16 v17, 0x2

    shl-long v4, p1, v17

    const-wide/16 v17, 0x1

    rsub-int/lit8 v19, p3, 0x2

    shl-long v6, v17, v19

    goto :goto_0

    :cond_6
    if-gez v11, :cond_0

    sget-object v17, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-int v0, v11

    move/from16 v18, v0

    aget-wide v15, v17, v18

    mul-long/2addr v4, v15

    const-wide/16 v17, 0x1

    cmp-long v17, v2, v17

    if-nez v17, :cond_7

    move-wide v2, v15

    :goto_4
    goto :goto_1

    :cond_7
    mul-long/2addr v2, v15

    goto :goto_4

    :cond_8
    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->firstK:I

    const-wide/16 v17, 0xa

    mul-long v4, v4, v17

    const-wide/16 v17, 0xa

    mul-long v2, v2, v17

    goto :goto_2

    :cond_9
    cmp-long v17, v4, v2

    if-gez v17, :cond_b

    const/4 v12, 0x1

    :goto_5
    add-long v17, v4, v2

    cmp-long v17, v17, v6

    if-lez v17, :cond_c

    const/4 v9, 0x1

    :goto_6
    if-nez v12, :cond_a

    if-eqz v9, :cond_d

    :cond_a
    if-eqz v12, :cond_e

    if-nez v9, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    aput v8, v17, v18

    :goto_7
    return-void

    :cond_b
    const/4 v12, 0x0

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    goto :goto_6

    :cond_d
    const-wide/16 v17, 0xa

    mul-long v4, v4, v17

    const-wide/16 v17, 0xa

    mul-long v2, v2, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    aput v8, v17, v18

    goto/16 :goto_2

    :cond_e
    if-eqz v9, :cond_f

    if-nez v12, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    add-int/lit8 v19, v8, 0x1

    aput v19, v17, v18

    goto :goto_7

    :cond_f
    const/16 v17, 0x1

    shl-long v17, v4, v17

    cmp-long v17, v17, v6

    if-gez v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    aput v8, v17, v18

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    add-int/lit8 v19, v8, 0x1

    aput v19, v17, v18

    goto :goto_7
.end method

.method private static resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public appendDouble(Ljava/lang/AbstractStringBuilder;D)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/RealToString;->convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;

    return-void
.end method

.method public appendFloat(Ljava/lang/AbstractStringBuilder;F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/lang/RealToString;->convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;

    return-void
.end method

.method public convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;
    .locals 23

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v19

    const/high16 v2, -0x8000

    and-int v2, v2, v19

    if-nez v2, :cond_1

    const/16 v21, 0x1

    :goto_0
    const/high16 v2, 0x7f80

    and-int v2, v2, v19

    shr-int/lit8 v16, v2, 0x17

    const v2, 0x7fffff

    and-int v17, v19, v2

    if-nez v17, :cond_2

    const/4 v7, 0x1

    :goto_1
    const/16 v22, 0x0

    const/16 v2, 0xff

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    if-eqz v7, :cond_4

    if-eqz v21, :cond_3

    const-string v22, "Infinity"

    :cond_0
    :goto_2
    if-eqz v22, :cond_7

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/RealToString;->resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2

    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const-string v22, "-Infinity"

    goto :goto_2

    :cond_4
    const-string v22, "NaN"

    goto :goto_2

    :cond_5
    if-nez v16, :cond_0

    if-eqz v7, :cond_0

    if-eqz v21, :cond_6

    const-string v22, "0.0"

    :goto_4
    goto :goto_2

    :cond_6
    const-string v22, "-0.0"

    goto :goto_4

    :cond_7
    const/16 v20, 0x96

    const/16 v8, 0x17

    if-nez v16, :cond_9

    rsub-int/lit8 v5, v20, 0x1

    const/16 v2, 0x8

    move/from16 v0, v17

    if-ge v0, v2, :cond_8

    shl-int/lit8 v17, v17, 0x2

    add-int/lit8 v5, v5, -0x2

    :cond_8
    move/from16 v18, v17

    :goto_5
    const/high16 v2, 0x80

    and-int v2, v2, v18

    if-nez v2, :cond_a

    shl-int/lit8 v18, v18, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_9
    const/high16 v2, 0x80

    or-int v17, v17, v2

    sub-int v5, v16, v20

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Ljava/lang/RealToString;->digitCount:I

    move-object/from16 v0, p0

    iput v2, v0, Ljava/lang/RealToString;->firstK:I

    const/16 v2, -0x3b

    if-ge v2, v5, :cond_b

    const/16 v2, 0x23

    if-lt v5, v2, :cond_c

    :cond_b
    const/16 v2, -0x3b

    if-ne v5, v2, :cond_f

    if-nez v7, :cond_f

    :cond_c
    move/from16 v0, v17

    int-to-long v3, v0

    if-nez v16, :cond_e

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Ljava/lang/RealToString;->longDigitGenerator(JIZZI)V

    :goto_7
    if-eqz p1, :cond_11

    move-object/from16 v15, p1

    :goto_8
    const v2, 0x4b189680

    cmpl-float v2, p2, v2

    if-gez v2, :cond_d

    const v2, -0x34e76980

    cmpg-float v2, p2, v2

    if-lez v2, :cond_d

    const v2, -0x457ced91

    cmpl-float v2, p2, v2

    if-lez v2, :cond_12

    const v2, 0x3a83126f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_12

    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Ljava/lang/RealToString;->freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V

    :goto_9
    if-eqz p1, :cond_13

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v6, 0x0

    goto :goto_6

    :cond_f
    move/from16 v0, v17

    int-to-long v10, v0

    if-nez v16, :cond_10

    const/4 v13, 0x1

    :goto_a
    move-object/from16 v9, p0

    move v12, v5

    move v14, v8

    invoke-direct/range {v9 .. v14}, Ljava/lang/RealToString;->bigIntDigitGenerator(JIZI)V

    goto :goto_7

    :cond_10
    const/4 v13, 0x0

    goto :goto_a

    :cond_11
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_8

    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Ljava/lang/RealToString;->freeFormat(Ljava/lang/AbstractStringBuilder;Z)V

    goto :goto_9

    :cond_13
    invoke-virtual {v15}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3
.end method

.method public doubleToString(D)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/lang/RealToString;->convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public floatToString(F)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/RealToString;->convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

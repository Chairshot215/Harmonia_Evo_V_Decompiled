.class public final Ljava/lang/Double;
.super Ljava/lang/Number;
.source "Double.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_BITS:I = 0xc

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final MANTISSA_BITS:I = 0x34

.field static final MANTISSA_MASK:J = 0xfffffffffffffL

.field public static final MAX_EXPONENT:I = 0x3ff

.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_EXPONENT:I = -0x3fe

.field public static final MIN_NORMAL:D = 2.2250738585072014E-308

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field static final NON_MANTISSA_BITS:I = 0xc

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field static final SIGN_MASK:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7f4c3db5d69404fcL


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, [D

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Ljava/lang/Double;->value:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-void
.end method

.method public static compare(DD)I
    .locals 10

    const/16 v9, 0x3f

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    cmpl-double v7, p0, p2

    if-lez v7, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    cmpl-double v7, p2, p0

    if-lez v7, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    cmpl-double v7, p0, p2

    if-nez v7, :cond_3

    const-wide/16 v7, 0x0

    cmpl-double v7, v7, p0

    if-eqz v7, :cond_3

    move v4, v6

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    shr-long v4, v0, v9

    shr-long v6, v2, v9

    sub-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_0
.end method

.method public static native doubleToLongBits(D)J
.end method

.method public static native doubleToRawLongBits(D)J
.end method

.method public static isInfinite(D)Z
    .locals 2

    const-wide/high16 v0, 0x7ff0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNaN(D)Z
    .locals 1

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native longBitsToDouble(J)D
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/StringToReal;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toHexString(D)Ljava/lang/String;
    .locals 16

    cmpl-double v12, p0, p0

    if-eqz v12, :cond_0

    const-string v12, "NaN"

    :goto_0
    return-object v12

    :cond_0
    const-wide/high16 v12, 0x7ff0

    cmpl-double v12, p0, v12

    if-nez v12, :cond_1

    const-string v12, "Infinity"

    goto :goto_0

    :cond_1
    const-wide/high16 v12, -0x10

    cmpl-double v12, p0, v12

    if-nez v12, :cond_2

    const-string v12, "-Infinity"

    goto :goto_0

    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/high16 v12, -0x8000

    and-long/2addr v12, v0

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    const/4 v9, 0x1

    :goto_1
    const-wide/high16 v12, 0x7ff0

    and-long/2addr v12, v0

    const/16 v14, 0x34

    ushr-long v4, v12, v14

    const-wide v12, 0xfffffffffffffL

    and-long v10, v0, v12

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_5

    if-eqz v9, :cond_4

    const-string v12, "-0x0.0p0"

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    const-string v12, "0x0.0p0"

    goto :goto_0

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v9, :cond_6

    const-string v12, "-0x"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_9

    const-string v12, "0."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xd

    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_7

    const-wide/16 v12, 0xf

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    const/4 v12, 0x4

    ushr-long/2addr v10, v12

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_6
    const-string v12, "0x"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-le v6, v12, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v2, v6, v12

    move v3, v2

    :goto_4
    add-int/lit8 v2, v3, -0x1

    if-eqz v3, :cond_8

    const/16 v12, 0x30

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    goto :goto_4

    :cond_8
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "p-1022"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_9
    const-string v12, "1."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xd

    :goto_6
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_a

    const-wide/16 v12, 0xf

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_a

    const/4 v12, 0x4

    ushr-long/2addr v10, v12

    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_a
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-le v6, v12, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v2, v6, v12

    move v3, v2

    :goto_7
    add-int/lit8 v2, v3, -0x1

    if-eqz v3, :cond_b

    const/16 v12, 0x30

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    goto :goto_7

    :cond_b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x70

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x3ff

    sub-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/Double;
    .locals 1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Double;)I
    .locals 4

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v2, p0, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public intValue()I
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

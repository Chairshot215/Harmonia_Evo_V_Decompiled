.class public final Ljava/lang/Float;
.super Ljava/lang/Number;
.source "Float.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final EXPONENT_BIAS:I = 0x7f

.field static final EXPONENT_BITS:I = 0x9

.field static final EXPONENT_MASK:I = 0x7f800000

.field static final MANTISSA_BITS:I = 0x17

.field static final MANTISSA_MASK:I = 0x7fffff

.field public static final MAX_EXPONENT:I = 0x7f

.field public static final MAX_VALUE:F = 3.4028235E38f

.field public static final MIN_EXPONENT:I = -0x7e

.field public static final MIN_NORMAL:F = 1.17549435E-38f

.field public static final MIN_VALUE:F = 1.4E-45f

.field public static final NEGATIVE_INFINITY:F = -Infinityf

.field static final NON_MANTISSA_BITS:I = 0x9

.field public static final NaN:F = NaNf

.field public static final POSITIVE_INFINITY:F = Infinityf

.field static final SIGN_MASK:I = -0x80000000

.field public static final SIZE:I = 0x20

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2512365d24c30f14L


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, [F

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    double-to-float v0, p1

    iput v0, p0, Ljava/lang/Float;->value:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput p1, p0, Ljava/lang/Float;->value:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Float;-><init>(F)V

    return-void
.end method

.method public static compare(FF)I
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    cmpl-float v5, p0, p1

    if-lez v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    cmpl-float v5, p1, p0

    if-lez v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    cmpl-float v5, p0, p1

    if-nez v5, :cond_3

    const/4 v5, 0x0

    cmpl-float v5, v5, p0

    if-eqz v5, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_4
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    shr-int/lit8 v2, v0, 0x1f

    shr-int/lit8 v3, v1, 0x1f

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public static native floatToIntBits(F)I
.end method

.method public static native floatToRawIntBits(F)I
.end method

.method public static native intBitsToFloat(I)F
.end method

.method public static isInfinite(F)Z
    .locals 1

    const/high16 v0, 0x7f80

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNaN(F)Z
    .locals 1

    cmpl-float v0, p0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/StringToReal;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static toHexString(F)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x30

    cmpl-float v9, p0, p0

    if-eqz v9, :cond_0

    const-string v9, "NaN"

    :goto_0
    return-object v9

    :cond_0
    const/high16 v9, 0x7f80

    cmpl-float v9, p0, v9

    if-nez v9, :cond_1

    const-string v9, "Infinity"

    goto :goto_0

    :cond_1
    const/high16 v9, -0x80

    cmpl-float v9, p0, v9

    if-nez v9, :cond_2

    const-string v9, "-Infinity"

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/high16 v9, -0x8000

    and-int/2addr v9, v0

    if-eqz v9, :cond_3

    const/4 v7, 0x1

    :goto_1
    const/high16 v9, 0x7f80

    and-int/2addr v9, v0

    ushr-int/lit8 v3, v9, 0x17

    const v9, 0x7fffff

    and-int/2addr v9, v0

    shl-int/lit8 v8, v9, 0x1

    if-nez v3, :cond_5

    if-nez v8, :cond_5

    if-eqz v7, :cond_4

    const-string v9, "-0x0.0p0"

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    const-string v9, "0x0.0p0"

    goto :goto_0

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v7, :cond_6

    const-string v9, "-0x"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-nez v3, :cond_9

    const-string v9, "0."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    :goto_3
    if-eqz v8, :cond_7

    and-int/lit8 v9, v8, 0xf

    if-nez v9, :cond_7

    ushr-int/lit8 v8, v8, 0x4

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_6
    const-string v9, "0x"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v8, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v4, v9, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v1, v4, v9

    move v2, v1

    :goto_4
    add-int/lit8 v1, v2, -0x1

    if-eqz v2, :cond_8

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_4

    :cond_8
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "p-126"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_9
    const-string v9, "1."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    :goto_6
    if-eqz v8, :cond_a

    and-int/lit8 v9, v8, 0xf

    if-nez v9, :cond_a

    ushr-int/lit8 v8, v8, 0x4

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v8, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v4, v9, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v1, v4, v9

    move v2, v1

    :goto_7
    add-int/lit8 v1, v2, -0x1

    if-eqz v2, :cond_b

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_7

    :cond_b
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x70

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, -0x7f

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/RealToString;->floatToString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/Float;
    .locals 1

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Float;)I
    .locals 2

    iget v0, p0, Ljava/lang/Float;->value:F

    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    check-cast p1, Ljava/lang/Float;

    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

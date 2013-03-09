.class public Ljava/math/BigInteger;
.super Ljava/lang/Number;
.source "BigInteger.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/math/BigInteger;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final MINUS_ONE:Ljava/math/BigInteger; = null

.field public static final ONE:Ljava/math/BigInteger; = null

.field static final SMALL_VALUES:[Ljava/math/BigInteger; = null

.field public static final TEN:Ljava/math/BigInteger; = null

.field public static final ZERO:Ljava/math/BigInteger; = null

.field private static final serialVersionUID:J = -0x730360e056c404e3L


# instance fields
.field private transient bigInt:Ljava/math/BigInt;

.field transient digits:[I

.field private transient firstNonzeroDigit:I

.field private transient hashCode:I

.field private transient javaIsValid:Z

.field private magnitude:[B

.field private transient nativeIsValid:Z

.field transient numberLength:I

.field transient sign:I

.field private signum:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-instance v0, Ljava/math/BigInteger;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v5, v6, v7}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-wide/16 v1, 0xa

    invoke-direct {v0, v5, v1, v2}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v6, v7}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v1, v0, v3

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x2

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x3

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x4

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x5

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x6

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x7

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x8

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v3, 0x9

    invoke-direct {v2, v5, v3, v4}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    sput-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(IILjava/util/Random;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitLength < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/math/BigInt;->generatePrimeDefault(I)Ljava/math/BigInt;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    return-void
.end method

.method constructor <init>(II[I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    invoke-direct {p0, p1, p2, p3}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    return-void
.end method

.method constructor <init>(IJ)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    const/4 v2, -0x2

    iput v2, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, p2, p3, v1}, Ljava/math/BigInt;->putULongInt(JZ)V

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-boolean v5, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    iput-boolean v5, p0, Ljava/math/BigInteger;->javaIsValid:Z

    const/4 v4, -0x2

    iput v4, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    iput v5, p0, Ljava/math/BigInteger;->hashCode:I

    if-gez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numBits < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p1, :cond_1

    new-array v4, v7, [I

    aput v5, v4, v5

    invoke-direct {p0, v5, v7, v4}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    :goto_0
    iput-boolean v7, p0, Ljava/math/BigInteger;->javaIsValid:Z

    return-void

    :cond_1
    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1f

    shr-int/lit8 v2, v4, 0x5

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v2, -0x1

    aget v5, v0, v4

    neg-int v6, p1

    and-int/lit8 v6, v6, 0x1f

    ushr-int/2addr v5, v6

    aput v5, v0, v4

    invoke-direct {p0, v3, v2, v0}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    goto :goto_0
.end method

.method public constructor <init>(I[B)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-boolean v6, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    iput-boolean v6, p0, Ljava/math/BigInteger;->javaIsValid:Z

    const/4 v7, -0x2

    iput v7, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    iput v6, p0, Ljava/math/BigInteger;->hashCode:I

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "magnitude == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v7, -0x1

    if-lt p1, v7, :cond_1

    if-le p1, v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid signum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    if-nez p1, :cond_4

    move-object v0, p2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_4

    aget-byte v2, v0, v3

    if-eqz v2, :cond_3

    new-instance v5, Ljava/lang/NumberFormatException;

    const-string v6, "signum-magnitude mismatch"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/math/BigInt;

    invoke-direct {v1}, Ljava/math/BigInt;-><init>()V

    if-gez p1, :cond_5

    :goto_1
    invoke-virtual {v1, p2, v5}, Ljava/math/BigInt;->putBigEndian([BZ)V

    invoke-direct {p0, v1}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    return-void

    :cond_5
    move v5, v6

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    const/4 v1, -0x2

    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putDecString(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    const/4 v1, -0x2

    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/16 v1, 0xa

    if-ne p2, v1, :cond_1

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putDecString(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x10

    if-ne p2, v1, :cond_2

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putHexString(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-lt p2, v1, :cond_3

    const/16 v1, 0x24

    if-le p2, v1, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid radix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "value.isEmpty()"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {p0, p1, p2}, Ljava/math/BigInteger;->parseFromString(Ljava/math/BigInteger;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method constructor <init>(Ljava/math/BigInt;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInt;->getNativeBIGNUM()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    const/4 v1, -0x2

    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    array-length v1, p1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "value.length == 0"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putBigEndianTwosComplement([B)V

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    return-void
.end method

.method static inplaceAdd([III)I
    .locals 7

    const-wide v5, 0xffffffffL

    int-to-long v3, p2

    and-long v0, v3, v5

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    int-to-long v3, v3

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p0, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method static multiplyByInt([I[III)I
    .locals 9

    const-wide v7, 0xffffffffL

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget v3, p1, v2

    int-to-long v3, v3

    and-long/2addr v3, v7

    int-to-long v5, p3

    and-long/2addr v5, v7

    mul-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p0, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method private static parseFromString(Ljava/math/BigInteger;Ljava/lang/String;I)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    move v9, v14

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v12, -0x1

    const/4 v13, 0x1

    add-int/lit8 v14, v14, -0x1

    :goto_0
    sget-object v18, Ljava/math/Conversion;->digitFitInInt:[I

    aget v5, v18, p2

    div-int v4, v14, v5

    rem-int v17, v14, v5

    if-eqz v17, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    new-array v8, v4, [I

    sget-object v18, Ljava/math/Conversion;->bigRadices:[I

    add-int/lit8 v19, p2, -0x2

    aget v2, v18, v19

    const/4 v6, 0x0

    if-nez v17, :cond_1

    move/from16 v17, v5

    :cond_1
    add-int v15, v13, v17

    move/from16 v16, v13

    move v7, v6

    :goto_1
    move/from16 v0, v16

    if-ge v0, v9, :cond_3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v8, v8, v7, v2}, Ljava/math/BigInteger;->multiplyByInt([I[III)I

    move-result v10

    invoke-static {v8, v7, v3}, Ljava/math/BigInteger;->inplaceAdd([III)I

    move-result v18

    add-int v10, v10, v18

    add-int/lit8 v6, v7, 0x1

    aput v10, v8, v7

    move/from16 v16, v15

    add-int v15, v16, v5

    move v7, v6

    goto :goto_1

    :cond_2
    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    move v11, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v8}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    return-void
.end method

.method public static probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    iget-object v2, p0, Ljava/math/BigInteger;->magnitude:[B

    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/math/BigInt;->putBigEndian([BZ)V

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setBigInt(Ljava/math/BigInt;)V
    .locals 1

    iput-object p1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    return-void
.end method

.method private setJavaRepresentation(II[I)V
    .locals 2

    :cond_0
    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    aget v1, p3, p2

    if-eqz v1, :cond_0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    aget v1, p3, p2

    if-nez v1, :cond_2

    const/4 p1, 0x0

    :cond_2
    iput p1, p0, Ljava/math/BigInteger;->sign:I

    iput-object p3, p0, Ljava/math/BigInteger;->digits:[I

    iput v0, p0, Ljava/math/BigInteger;->numberLength:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    return-void
.end method

.method private twosComplement()[B
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-nez v12, :cond_1

    new-array v1, v14, [B

    aput-byte v13, v1, v13

    :cond_0
    return-object v1

    :cond_1
    move-object v11, p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v10

    shr-int/lit8 v12, v0, 0x3

    add-int/lit8 v3, v12, 0x1

    new-array v1, v3, [B

    const/4 v6, 0x0

    const/4 v2, 0x4

    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v12, v12, 0x2

    sub-int v12, v3, v12

    if-ne v12, v14, :cond_4

    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-gez v12, :cond_3

    const/4 v12, -0x1

    :goto_0
    int-to-byte v12, v12

    aput-byte v12, v1, v13

    const/4 v8, 0x4

    add-int/lit8 v6, v6, 0x1

    :goto_1
    move v5, v10

    shl-int/lit8 v12, v10, 0x2

    sub-int/2addr v3, v12

    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-gez v12, :cond_8

    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v12, v12, v5

    neg-int v4, v12

    add-int/lit8 v5, v5, 0x1

    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_2

    move v2, v8

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v2, :cond_6

    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_2

    :cond_3
    move v12, v13

    goto :goto_0

    :cond_4
    and-int/lit8 v7, v3, 0x3

    if-nez v7, :cond_5

    const/4 v8, 0x4

    :goto_3
    goto :goto_1

    :cond_5
    move v8, v7

    goto :goto_3

    :cond_6
    if-le v3, v6, :cond_0

    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v12, v12, v5

    xor-int/lit8 v4, v12, -0x1

    add-int/lit8 v5, v5, 0x1

    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_7

    move v2, v8

    :cond_7
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v2, :cond_6

    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_4

    :cond_8
    if-le v3, v6, :cond_0

    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v4, v12, v5

    add-int/lit8 v5, v5, 0x1

    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_9

    move v2, v8

    :cond_9
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v2, :cond_8

    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_5
.end method

.method public static valueOf(J)Ljava/math/BigInteger;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, -0x1

    neg-long v2, p0

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    sget-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    long-to-int v1, p0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ljava/math/BigInteger;-><init>(IJ)V

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v1

    iput v1, p0, Ljava/math/BigInteger;->signum:I

    invoke-virtual {v0}, Ljava/math/BigInt;->bigEndianMagnitude()[B

    move-result-object v1

    iput-object v1, p0, Ljava/math/BigInteger;->magnitude:[B

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public abs()Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-ltz v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInt;->setSign(I)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_0
.end method

.method public add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-nez v2, :cond_1

    move-object p0, p1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    invoke-static {v0, v1}, Ljava/math/BigInt;->addition(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_0
.end method

.method public and(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-static {p0, p1}, Ljava/math/Logical;->and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public andNot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-static {p0, p1}, Ljava/math/Logical;->andNot(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bitCount()I
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-static {p0}, Ljava/math/BitLevel;->bitCount(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public bitLength()I
    .locals 1

    iget-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/math/BitLevel;->bitLength(Ljava/math/BigInteger;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->bitLength()I

    move-result v0

    goto :goto_0
.end method

.method public clearBit(I)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/math/BigInteger;)I
    .locals 2

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/math/BigInt;->cmp(Ljava/math/BigInt;Ljava/math/BigInt;)I

    move-result v0

    return v0
.end method

.method copy()Ljava/math/BigInteger;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v0, v1, [I

    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/math/BigInteger;

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-direct {v1, v2, v3, v0}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v1
.end method

.method public divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method public divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 6

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    new-instance v1, Ljava/math/BigInt;

    invoke-direct {v1}, Ljava/math/BigInt;-><init>()V

    new-instance v2, Ljava/math/BigInt;

    invoke-direct {v2}, Ljava/math/BigInt;-><init>()V

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    aput-object v5, v3, v4

    return-object v3
.end method

.method public doubleValue()D
    .locals 2

    invoke-static {p0}, Ljava/math/Conversion;->bigInteger2Double(Ljava/math/BigInteger;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public flipBit(I)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->gcd(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method getBigInt()Ljava/math/BigInt;
    .locals 3

    iget-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    iget v1, p0, Ljava/math/BigInteger;->sign:I

    if-gez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Ljava/math/BigInt;->putLittleEndianInts([IZ)V

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getFirstNonzeroDigit()I
    .locals 3

    iget v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Ljava/math/BigInteger;->sign:I

    if-nez v1, :cond_2

    const/4 v0, -0x1

    :cond_0
    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    :cond_1
    iget v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    return v1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLowestSetBit()I
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    iget v1, p0, Ljava/math/BigInteger;->sign:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    shl-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    if-eqz v1, :cond_0

    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    mul-int/lit8 v1, v1, 0x21

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    mul-int/2addr v1, v2

    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    goto :goto_0
.end method

.method public intValue()I
    .locals 3

    iget-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/math/BigInt;->twosCompFitsIntoBytes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->longInt()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    iget v0, p0, Ljava/math/BigInteger;->sign:I

    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public isProbablePrime(I)Z
    .locals 1

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->isPrime(I)Z

    move-result v0

    goto :goto_0
.end method

.method public longValue()J
    .locals 8

    const-wide v6, 0xffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/math/BigInt;->twosCompFitsIntoBytes(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->longInt()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-le v2, v4, :cond_1

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v4

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v6

    or-long v0, v2, v4

    :goto_1
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v5

    int-to-long v2, v2

    and-long v0, v2, v6

    goto :goto_1
.end method

.method public max(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public min(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "m.signum() <= 0"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->modulus(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->modInverse(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "m.signum() <= 0"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v3

    invoke-virtual {p2}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/math/BigInt;->modExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->product(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public negate()Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    neg-int v3, v2

    invoke-virtual {v0, v3}, Ljava/math/BigInt;->setSign(I)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_0
.end method

.method public nextProbablePrime()Ljava/math/BigInteger;
    .locals 2

    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "sign < 0"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Ljava/math/Primality;->nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public not()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-static {p0}, Ljava/math/Logical;->not(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public or(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-static {p0, p1}, Ljava/math/Logical;->or(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Ljava/math/BigInteger;
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exp < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/math/BigInt;->exp(Ljava/math/BigInt;I)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method prepareJavaRepresentation()V
    .locals 4

    iget-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v2, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->sign()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->littleEndianIntsMagnitude()[I

    move-result-object v0

    :goto_1
    array-length v2, v0

    invoke-direct {p0, v1, v2, v0}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    monitor-exit p0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method public setBit(I)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public shiftLeft(I)Ljava/math/BigInteger;
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_0

    if-gtz v0, :cond_2

    if-ltz p1, :cond_3

    :cond_2
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/math/BigInt;->shift(Ljava/math/BigInt;I)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    move-object p0, v1

    goto :goto_0

    :cond_3
    neg-int v1, p1

    invoke-static {p0, v1}, Ljava/math/BitLevel;->shiftRight(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method shiftLeftOneBit()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/math/BitLevel;->shiftLeftOneBit(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method public shiftRight(I)Ljava/math/BigInteger;
    .locals 1

    neg-int v0, p1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public signum()I
    .locals 1

    iget-boolean v0, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/math/BigInteger;->sign:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v0

    goto :goto_0
.end method

.method public subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Ljava/math/BigInteger;

    invoke-static {v0, v1}, Ljava/math/BigInt;->subtraction(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_0
.end method

.method public testBit(I)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez p1, :cond_0

    new-instance v4, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-lez v3, :cond_2

    iget-boolean v6, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-nez v6, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/math/BigInt;->isBitSet(I)Z

    move-result v4

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    if-nez p1, :cond_3

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v5

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    move v4, v5

    goto :goto_0

    :cond_3
    shr-int/lit8 v2, p1, 0x5

    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_4

    if-ltz v3, :cond_1

    move v4, v5

    goto :goto_0

    :cond_4
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v0, v6, v2

    and-int/lit8 v6, p1, 0x1f

    shl-int p1, v4, v6

    if-gez v3, :cond_6

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    if-ge v2, v1, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    if-ne v1, v2, :cond_7

    neg-int v0, v0

    :cond_6
    :goto_1
    and-int v6, v0, p1

    if-nez v6, :cond_1

    move v4, v5

    goto :goto_0

    :cond_7
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public toByteArray()[B
    .locals 1

    invoke-direct {p0}, Ljava/math/BigInteger;->twosComplement()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-static {p0, p1}, Ljava/math/Conversion;->bigInteger2String(Ljava/math/BigInteger;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    invoke-static {p0, p1}, Ljava/math/Logical;->xor(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

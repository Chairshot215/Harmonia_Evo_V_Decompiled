.class public Ljava/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/math/BigDecimal$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/math/BigDecimal;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal; = null

.field private static final BI_SCALED_BY_ZERO_LENGTH:I = 0xb

.field private static final CH_ZEROS:[C = null

.field private static final FIVE_POW:[Ljava/math/BigInteger; = null

.field private static final LOG10_2:D = 0.3010299956639812

.field private static final LONG_FIVE_POW:[J = null

.field private static final LONG_FIVE_POW_BIT_LENGTH:[I = null

.field private static final LONG_POWERS_OF_TEN_BIT_LENGTH:[I = null

.field public static final ONE:Ljava/math/BigDecimal; = null

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final TEN:Ljava/math/BigDecimal; = null

.field private static final TEN_POW:[Ljava/math/BigInteger; = null

.field public static final ZERO:Ljava/math/BigDecimal; = null

.field private static final ZERO_SCALED_BY:[Ljava/math/BigDecimal; = null

.field private static final serialVersionUID:J = 0x54c71557f981284fL


# instance fields
.field private transient bitLength:I

.field private transient hashCode:I

.field private intVal:Ljava/math/BigInteger;

.field private transient precision:I

.field private scale:I

.field private transient smallValue:J

.field private transient toStringImage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v2, 0xb

    const/4 v4, 0x0

    const/16 v1, 0x1c

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    sput-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    new-array v1, v2, [Ljava/math/BigDecimal;

    sput-object v1, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    new-array v1, v2, [Ljava/math/BigDecimal;

    sput-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    const/16 v1, 0x64

    new-array v1, v1, [C

    sput-object v1, Ljava/math/BigDecimal;->CH_ZEROS:[C

    sget-object v1, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v4}, Ljava/math/BigDecimal;-><init>(II)V

    aput-object v2, v1, v0

    sget-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v4, v0}, Ljava/math/BigDecimal;-><init>(II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    sget-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v1, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    sput-object v1, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    sput-object v1, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v4, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v1, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    return-void

    nop

    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x71t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x35t 0xct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9t 0x3dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2dt 0x31t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe1t 0xf5t 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x65t 0xcdt 0x1dt 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf9t 0x2t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xddt 0xet 0xe9t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x51t 0x4at 0x8dt 0xet 0x0t 0x0t 0x0t 0x0t
        0x95t 0x73t 0xc2t 0x48t 0x0t 0x0t 0x0t 0x0t
        0xe9t 0x41t 0xcct 0x6bt 0x1t 0x0t 0x0t 0x0t
        0x8dt 0x49t 0xfdt 0x1at 0x7t 0x0t 0x0t 0x0t
        0xc1t 0x6ft 0xf2t 0x86t 0x23t 0x0t 0x0t 0x0t
        0xc5t 0x2et 0xbct 0xa2t 0xb1t 0x0t 0x0t 0x0t
        0xd9t 0xe9t 0xact 0x2dt 0x78t 0x3t 0x0t 0x0t
        0x3dt 0x91t 0x60t 0xe4t 0x58t 0x11t 0x0t 0x0t
        0x31t 0xd6t 0xe2t 0x75t 0xbct 0x56t 0x0t 0x0t
        0xf5t 0x2et 0x6et 0x4dt 0xaet 0xb1t 0x1t 0x0t
        0xc9t 0xeat 0x26t 0x83t 0x67t 0x78t 0x8t 0x0t
        0xedt 0x95t 0xc2t 0x8ft 0x5t 0x5at 0x2at 0x0t
        0xa1t 0xedt 0xcct 0xcet 0x1bt 0xc2t 0xd3t 0x0t
        0x25t 0xa4t 0x0t 0xat 0x8bt 0xcat 0x22t 0x4t
        0xb9t 0x34t 0x3t 0x32t 0xb7t 0xf4t 0xadt 0x14t
        0x9dt 0x7t 0x10t 0xfat 0x93t 0xc7t 0x65t 0x67t
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v7, 0x0

    iput-object v7, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->hashCode:I

    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Infinity or NaN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const/16 v7, 0x34

    shr-long v7, v1, v7

    const-wide/16 v9, 0x7ff

    and-long/2addr v7, v9

    long-to-int v7, v7

    rsub-int v7, v7, 0x433

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v8, 0x433

    if-ne v7, v8, :cond_5

    const-wide v7, 0xfffffffffffffL

    and-long/2addr v7, v1

    const/4 v9, 0x1

    shl-long v3, v7, v9

    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    const/4 v7, 0x1

    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    :cond_2
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_3

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    ushr-long/2addr v3, v6

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sub-int/2addr v7, v6

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    :cond_3
    const/16 v7, 0x3f

    shr-long v7, v1, v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    neg-long v3, v3

    :cond_4
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v5

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v7, :cond_8

    if-nez v5, :cond_6

    const/4 v7, 0x0

    :goto_1
    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_7

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v7, v7

    shl-long v7, v3, v7

    iput-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    :goto_2
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    :goto_3
    return-void

    :cond_5
    const-wide v7, 0xfffffffffffffL

    and-long/2addr v7, v1

    const-wide/high16 v9, 0x10

    or-long v3, v7, v9

    goto :goto_0

    :cond_6
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v7, v5, v7

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/math/BigInt;->putLongInt(J)V

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v7, v7

    invoke-virtual {v0, v7}, Ljava/math/BigInt;->shift(I)V

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    iput-object v7, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    goto :goto_2

    :cond_8
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_a

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sget-object v8, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    array-length v8, v8

    if-ge v7, v8, :cond_9

    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    aget v7, v7, v8

    add-int/2addr v7, v5

    const/16 v8, 0x40

    if-ge v7, v8, :cond_9

    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    aget-wide v7, v7, v8

    mul-long/2addr v7, v3

    iput-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v7

    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    goto :goto_3

    :cond_9
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v7, v8}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {p0, v7}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto :goto_3

    :cond_a
    iput-wide v3, p0, Ljava/math/BigDecimal;->smallValue:J

    iput v5, p0, Ljava/math/BigDecimal;->bitLength:I

    goto :goto_3
.end method

.method public constructor <init>(DLjava/math/MathContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    int-to-long v0, p1

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {p1}, Ljava/math/BigDecimal;->bitLength(I)I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    return-void
.end method

.method public constructor <init>(ILjava/math/MathContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/math/BigDecimal;-><init>(JI)V

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    iput-wide p1, p0, Ljava/math/BigDecimal;->smallValue:J

    iput p3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    return-void
.end method

.method public constructor <init>(JLjava/math/MathContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v10, 0x0

    iput-object v10, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    const/4 v10, 0x0

    iput v10, p0, Ljava/math/BigDecimal;->hashCode:I

    const/4 v10, 0x0

    iput v10, p0, Ljava/math/BigDecimal;->precision:I

    move/from16 v1, p2

    add-int/lit8 v10, p3, -0x1

    add-int v4, p2, v10

    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    :cond_0
    array-length v10, p1

    if-ge v4, v10, :cond_1

    if-ltz p2, :cond_1

    if-lez p3, :cond_1

    if-gez v4, :cond_2

    :cond_1
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad offset/length: offset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " len="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in.length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    move/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move/from16 v0, p2

    if-gt v0, v4, :cond_3

    aget-char v10, p1, p2

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_3
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, p2

    if-gt v0, v4, :cond_6

    aget-char v10, p1, p2

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_6

    aget-char v10, p1, p2

    const/16 v11, 0x65

    if-eq v10, v11, :cond_6

    aget-char v10, p1, p2

    const/16 v11, 0x45

    if-eq v10, v11, :cond_6

    if-nez v9, :cond_4

    aget-char v10, p1, p2

    const/16 v11, 0x30

    if-ne v10, v11, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    sub-int v10, p2, v1

    invoke-virtual {v8, p1, v1, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    sub-int v10, p2, v1

    add-int/2addr v2, v10

    move/from16 v0, p2

    if-gt v0, v4, :cond_c

    aget-char v10, p1, p2

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_c

    add-int/lit8 p2, p2, 0x1

    move/from16 v1, p2

    :goto_2
    move/from16 v0, p2

    if-gt v0, v4, :cond_9

    aget-char v10, p1, p2

    const/16 v11, 0x65

    if-eq v10, v11, :cond_9

    aget-char v10, p1, p2

    const/16 v11, 0x45

    if-eq v10, v11, :cond_9

    if-nez v9, :cond_7

    aget-char v10, p1, p2

    const/16 v11, 0x30

    if-ne v10, v11, :cond_8

    add-int/lit8 v3, v3, 0x1

    :cond_7
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    const/4 v9, 0x1

    goto :goto_3

    :cond_9
    sub-int v10, p2, v1

    iput v10, p0, Ljava/math/BigDecimal;->scale:I

    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v2, v10

    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {v8, p1, v1, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :goto_4
    move/from16 v0, p2

    if-gt v0, v4, :cond_d

    aget-char v10, p1, p2

    const/16 v11, 0x65

    if-eq v10, v11, :cond_a

    aget-char v10, p1, p2

    const/16 v11, 0x45

    if-ne v10, v11, :cond_d

    :cond_a
    add-int/lit8 p2, p2, 0x1

    move/from16 v1, p2

    move/from16 v0, p2

    if-gt v0, v4, :cond_b

    aget-char v10, p1, p2

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_b

    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    if-gt v0, v4, :cond_b

    aget-char v10, p1, p2

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_b

    add-int/lit8 v1, v1, 0x1

    :cond_b
    add-int/lit8 v10, v4, 0x1

    sub-int/2addr v10, v1

    invoke-static {p1, v1, v10}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v7

    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    sub-long v5, v10, v12

    long-to-int v10, v5

    iput v10, p0, Ljava/math/BigDecimal;->scale:I

    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v10

    cmp-long v10, v5, v10

    if-eqz v10, :cond_d

    new-instance v10, Ljava/lang/NumberFormatException;

    const-string v11, "Scale out of range"

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_c
    const/4 v10, 0x0

    iput v10, p0, Ljava/math/BigDecimal;->scale:I

    goto :goto_4

    :cond_d
    const/16 v10, 0x13

    if-ge v2, v10, :cond_f

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v10, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v10

    iput v10, p0, Ljava/math/BigDecimal;->bitLength:I

    :goto_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v3

    iput v10, p0, Ljava/math/BigDecimal;->precision:I

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_e

    iget v10, p0, Ljava/math/BigDecimal;->precision:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Ljava/math/BigDecimal;->precision:I

    :cond_e
    return-void

    :cond_f
    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto :goto_5
.end method

.method public constructor <init>([CIILjava/math/MathContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>([CII)V

    invoke-direct {p0, p4}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-void
.end method

.method public constructor <init>([CLjava/math/MathContext;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-void
.end method

.method private static addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 7

    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge p2, v1, :cond_0

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v3, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v3, v3, p2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v5, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v5, v5, p2

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInt;->add(Ljava/math/BigInt;)V

    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method private approxPrecision()I
    .locals 4

    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v0, :cond_0

    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide v2, 0x3fd34413509f79ffL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static bitLength(I)I
    .locals 1

    if-gez p0, :cond_0

    xor-int/lit8 p0, p0, -0x1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0
.end method

.method private static bitLength(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    xor-long/2addr p0, v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    return v0
.end method

.method private decimalDigitsInLong(J)I
    .locals 4

    const-wide/high16 v1, -0x8000

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    const/16 v1, 0x13

    :goto_0
    return v1

    :cond_0
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_1

    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private static divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 14

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    const/4 v10, 0x0

    aget-object v5, v4, v10

    const/4 v10, 0x1

    aget-object v8, v4, v10

    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_0

    new-instance v10, Ljava/math/BigDecimal;

    move/from16 v0, p2

    invoke-direct {v10, v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    :goto_0
    return-object v10

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v10

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v11

    mul-int v9, v10, v11

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    const/16 v11, 0x3f

    if-ge v10, v11, :cond_2

    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v1

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    add-int/lit8 v11, v1, 0x5

    mul-int/2addr v11, v9

    move-object/from16 v0, p3

    invoke-static {v10, v11, v0}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v1

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    const/16 v11, 0x3f

    if-ge v10, v11, :cond_4

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    int-to-long v12, v1

    add-long/2addr v10, v12

    move/from16 v0, p2

    invoke-static {v10, v11, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_3
    add-int/lit8 v11, v1, 0x5

    mul-int/2addr v11, v9

    move-object/from16 v0, p3

    invoke-static {v10, v11, v0}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    int-to-long v10, v1

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    new-instance v10, Ljava/math/BigDecimal;

    move/from16 v0, p2

    invoke-direct {v10, v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_0

    :cond_5
    new-instance v10, Ljava/math/BigDecimal;

    move/from16 v0, p2

    invoke-direct {v10, v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_0
.end method

.method private static dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 10

    div-long v1, p0, p2

    rem-long v3, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    move-result v6

    invoke-static {p2, p3}, Ljava/lang/Long;->signum(J)I

    move-result v7

    mul-int v5, v6, v7

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v6, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v0

    long-to-int v6, v1

    and-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v0, 0x5

    mul-int/2addr v7, v5

    invoke-static {v6, v7, p5}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v1, v6

    :cond_0
    invoke-static {v1, v2, p4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6
.end method

.method private getUnscaledValue()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    :cond_0
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    return-object v0
.end method

.method private inplaceRound(Ljava/math/MathContext;)V
    .locals 12

    invoke-virtual {p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v8

    if-lt v8, v3, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    sub-int v1, v8, v3

    if-lez v1, :cond_0

    iget v8, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v9, 0x40

    if-ge v8, v9, :cond_2

    invoke-direct {p0, p1, v1}, Ljava/math/BigDecimal;->smallRound(Ljava/math/MathContext;I)V

    goto :goto_0

    :cond_2
    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v8, v8

    int-to-long v10, v1

    sub-long v4, v8, v10

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v8, 0x0

    aget-object v8, v2, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v9

    add-int/lit8 v10, v0, 0x5

    mul-int/2addr v9, v10

    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v10

    invoke-static {v8, v9, v10}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v2, v9

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v2, v8

    :cond_3
    new-instance v7, Ljava/math/BigDecimal;

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v7}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    if-le v8, v3, :cond_4

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v2, v9

    sget-object v10, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v2, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    :cond_4
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v8

    iput v8, p0, Ljava/math/BigDecimal;->scale:I

    iput v3, p0, Ljava/math/BigDecimal;->precision:I

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-direct {p0, v8}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private isZero()Z
    .locals 4

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static longCompareTo(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePoint(J)Ljava/math/BigDecimal;
    .locals 6

    const-wide/16 v1, 0x0

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    cmp-long v0, p1, v1

    if-ltz v0, :cond_2

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_1

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_2
    neg-long v0, p1

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    neg-long v2, p1

    long-to-int v2, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_3

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v3, p1

    long-to-int v3, v3

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    invoke-static {v0, v1, v5}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    neg-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    :cond_0
    return-void
.end method

.method private static roundingBehavior(IILjava/math/RoundingMode;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v0, 0x0

    sget-object v1, Ljava/math/BigDecimal$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, p0

    if-le v1, v3, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static safeLongToInt(J)I
    .locals 3

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of int range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    long-to-int v0, p0

    return v0
.end method

.method private setUnscaledValue(Ljava/math/BigInteger;)V
    .locals 2

    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    :cond_0
    return-void
.end method

.method private smallRound(Ljava/math/MathContext;I)V
    .locals 16

    sget-object v12, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v8, v12, p2

    move-object/from16 v0, p0

    iget v12, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v12

    move/from16 v0, p2

    int-to-long v14, v0

    sub-long v6, v12, v14

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/math/BigDecimal;->smallValue:J

    div-long v4, v10, v8

    rem-long v2, v10, v8

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x2

    mul-long/2addr v12, v14

    invoke-static {v12, v13, v8, v9}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v1

    long-to-int v12, v4

    and-int/lit8 v12, v12, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    move-result v13

    add-int/lit8 v14, v1, 0x5

    mul-int/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v14

    invoke-static {v12, v13, v14}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v14

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_0

    const-wide/16 v12, 0xa

    div-long/2addr v4, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    :cond_0
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Ljava/math/BigDecimal;->precision:I

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Ljava/math/BigDecimal;->bitLength:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    return-void
.end method

.method private valueExact(I)J
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-ge v1, p1, :cond_0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    return-wide v1

    :cond_0
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(D)Ljava/math/BigDecimal;
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Infinity or NaN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(J)Ljava/math/BigDecimal;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0xb

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    sget-object v0, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    long-to-int v1, p0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/math/BigDecimal;-><init>(JI)V

    goto :goto_0
.end method

.method public static valueOf(JI)Ljava/math/BigDecimal;
    .locals 2

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge p2, v0, :cond_1

    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    aget-object v0, v0, p2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(JI)V

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method

.method private static zeroScaledBy(J)Ljava/math/BigDecimal;
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    long-to-int v0, p0

    invoke-static {v3, v4, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    cmp-long v0, p0, v3

    if-ltz v0, :cond_1

    new-instance v0, Ljava/math/BigDecimal;

    const v1, 0x7fffffff

    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, -0x8000

    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public abs()Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public abs(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-object v0
.end method

.method public add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 5

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    sub-int v0, v1, v2

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    if-gtz v0, :cond_1

    move-object p0, p1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    if-nez v0, :cond_5

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_4

    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    add-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto :goto_0

    :cond_5
    if-lez v0, :cond_6

    invoke-static {p0, p1, v0}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_6
    neg-int v1, v0

    invoke-static {p1, p0, v1}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0
.end method

.method public add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 13

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    iget v9, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v9, v9

    sub-long v0, v7, v9

    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_1
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x1

    sub-long v9, v0, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    move-object v2, p1

    move-object v5, p0

    :goto_1
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v7

    invoke-direct {v2}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v8

    if-lt v7, v8, :cond_4

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_0

    :cond_2
    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v7

    int-to-long v7, v7

    neg-long v9, v0

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    move-object v2, p0

    move-object v5, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    invoke-virtual {v5}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-ne v4, v7, :cond_5

    invoke-direct {v2}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :goto_2
    new-instance v3, Ljava/math/BigDecimal;

    iget v7, v2, Ljava/math/BigDecimal;->scale:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-virtual {v3, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_0

    :cond_5
    invoke-direct {v2}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    mul-int/lit8 v8, v4, 0x9

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_2
.end method

.method public byteValueExact()B
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/math/BigDecimal;)I
    .locals 11

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    if-ne v3, v6, :cond_7

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    iget v8, p1, Ljava/math/BigDecimal;->scale:I

    if-ne v7, v8, :cond_2

    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_2

    iget v7, p1, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_2

    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v9, p1, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    const/4 v7, -0x1

    :goto_0
    return v7

    :cond_0
    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v9, p1, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    iget v9, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v9, v9

    sub-long v1, v7, v9

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v7

    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v8

    sub-int v0, v7, v8

    int-to-long v7, v0

    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    move v7, v3

    goto :goto_0

    :cond_3
    int-to-long v7, v0

    const-wide/16 v9, 0x1

    sub-long v9, v1, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    neg-int v7, v3

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gez v7, :cond_6

    neg-long v7, v1

    invoke-static {v7, v8}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    goto :goto_0

    :cond_6
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_5

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_1

    :cond_7
    if-ge v3, v6, :cond_8

    const/4 v7, -0x1

    goto :goto_0

    :cond_8
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 16

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 v0, p0

    iget v12, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v12

    move-object/from16 v0, p1

    iget v14, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v14, v14

    sub-long v1, v12, v14

    const/4 v6, 0x0

    const/4 v4, 0x1

    sget-object v12, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    array-length v12, v12

    add-int/lit8 v7, v12, -0x1

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v12, Ljava/lang/ArithmeticException;

    const-string v13, "Division by zero"

    invoke-direct {v12, v13}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v12

    :goto_0
    return-object v12

    :cond_1
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v10

    :goto_1
    sget-object v12, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    aget-object v12, v12, v4

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-nez v12, :cond_3

    add-int/2addr v6, v4

    if-ge v4, v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    const/4 v12, 0x0

    aget-object v10, v11, v12

    goto :goto_1

    :cond_3
    const/4 v12, 0x1

    if-ne v4, v12, :cond_4

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    new-instance v12, Ljava/lang/ArithmeticException;

    const-string v13, "Non-terminating decimal expansion; no exact representable decimal result"

    invoke-direct {v12, v13}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-gez v12, :cond_6

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    :cond_6
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v12, v1

    invoke-static {v12, v13}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v8

    sub-int v4, v5, v6

    if-lez v4, :cond_7

    invoke-static {v9, v4}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v9

    :goto_2
    new-instance v12, Ljava/math/BigDecimal;

    invoke-direct {v12, v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_7
    neg-int v12, v4

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_2
.end method

.method public divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 2

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;
    .locals 1

    invoke-static {p3}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 12

    const-wide/16 v10, 0x0

    const/16 v4, 0x40

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    int-to-long v2, p2

    sub-long v6, v0, v2

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_4

    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_4

    cmp-long v0, v6, v10

    if-nez v0, :cond_2

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    sget-object v0, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_4

    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    long-to-int v2, v6

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_4

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v4, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    long-to-int v5, v6

    aget-wide v4, v4, v5

    mul-long/2addr v2, v4

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_3
    neg-long v0, v6

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    neg-long v2, v6

    long-to-int v2, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_4

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v3, v6

    long-to-int v3, v3

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    cmp-long v0, v6, v10

    if-lez v0, :cond_6

    long-to-int v0, v6

    int-to-long v0, v0

    invoke-static {v9, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v9

    :cond_5
    :goto_1
    invoke-static {v8, v9, p2, p3}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_6
    cmp-long v0, v6, v10

    if-gez v0, :cond_5

    neg-long v0, v6

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v8, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_1
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 16

    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v14

    int-to-long v14, v14

    sub-long v10, v12, v14

    move-object/from16 v0, p0

    iget v12, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v12

    move-object/from16 v0, p1

    iget v14, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v14, v14

    sub-long v2, v12, v14

    move-wide v7, v2

    const/4 v4, 0x1

    sget-object v12, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v12, v12

    add-int/lit8 v6, v12, -0x1

    const/4 v12, 0x1

    new-array v9, v12, [Ljava/math/BigInteger;

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v13

    aput-object v13, v9, v12

    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v12

    if-eqz v12, :cond_0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v12

    :goto_0
    return-object v12

    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_2

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    aput-object v13, v9, v12

    add-long/2addr v7, v10

    :cond_2
    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v9

    const/4 v12, 0x0

    aget-object v5, v9, v12

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    sget-object v12, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->signum()I

    move-result v13

    add-int/lit8 v14, v1, 0x5

    mul-int/2addr v13, v14

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v12, 0x1

    add-long/2addr v7, v12

    :cond_3
    new-instance v12, Ljava/math/BigDecimal;

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v13

    move-object/from16 v0, p2

    invoke-direct {v12, v5, v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v12, v12, v4

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v9

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-nez v12, :cond_6

    int-to-long v12, v4

    sub-long v12, v7, v12

    cmp-long v12, v12, v2

    if-ltz v12, :cond_6

    int-to-long v12, v4

    sub-long/2addr v7, v12

    if-ge v4, v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    const/4 v12, 0x0

    aget-object v5, v9, v12

    goto :goto_1

    :cond_6
    const/4 v12, 0x1

    if-eq v4, v12, :cond_3

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 1

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {p0, p1, v0, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 16

    const/4 v10, 0x1

    new-array v7, v10, [Ljava/math/BigInteger;

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    aput-object v11, v7, v10

    move-object/from16 v0, p0

    iget v10, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v10

    move-object/from16 v0, p1

    iget v12, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v12

    sub-long v4, v10, v12

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    sget-object v10, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v10, v10

    add-int/lit8 v3, v10, -0x1

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/ArithmeticException;

    const-string v11, "Division by zero"

    invoke-direct {v10, v11}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v10, v4

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-gtz v10, :cond_1

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :goto_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_9

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v10

    :goto_1
    return-object v10

    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_3

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_4

    invoke-static {v4, v5}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    :cond_4
    neg-long v10, v4

    invoke-static {v10, v11}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-nez v10, :cond_7

    sget-object v10, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v10, v10, v1

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_6

    int-to-long v10, v1

    sub-long v10, v8, v10

    cmp-long v10, v10, v4

    if-ltz v10, :cond_6

    int-to-long v10, v1

    sub-long/2addr v8, v10

    if-ge v1, v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    const/4 v10, 0x0

    aget-object v2, v7, v10

    goto :goto_2

    :cond_6
    const/4 v10, 0x1

    if-ne v1, v10, :cond_8

    :cond_7
    move-wide v4, v8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    :cond_9
    new-instance v10, Ljava/math/BigDecimal;

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v11

    invoke-direct {v10, v2, v11}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_1
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 27

    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->precision()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v22

    sub-int v4, v21, v22

    sget-object v21, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v11, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v5, v21, v23

    move-wide v13, v5

    int-to-long v0, v4

    move-wide/from16 v21, v0

    sub-long v21, v21, v5

    const-wide/16 v23, 0x1

    add-long v16, v21, v23

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v15, v0, [Ljava/math/BigInteger;

    if-eqz v12, :cond_0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v21

    if-nez v21, :cond_0

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v21

    if-eqz v21, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    :goto_0
    return-object v10

    :cond_1
    const-wide/16 v21, 0x0

    cmp-long v21, v16, v21

    if-gtz v21, :cond_3

    const/16 v21, 0x0

    sget-object v22, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v22, v15, v21

    :cond_2
    :goto_1
    const/16 v21, 0x0

    aget-object v21, v15, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-nez v21, :cond_7

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v10

    goto :goto_0

    :cond_3
    const-wide/16 v21, 0x0

    cmp-long v21, v5, v21

    if-nez v21, :cond_4

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v15, v21

    goto :goto_1

    :cond_4
    const-wide/16 v21, 0x0

    cmp-long v21, v5, v21

    if-lez v21, :cond_5

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-static {v5, v6}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v15, v21

    int-to-long v0, v12

    move-wide/from16 v21, v0

    sub-long v21, v21, v16

    const-wide/16 v23, 0x1

    add-long v21, v21, v23

    const-wide/16 v23, 0x0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-object v22, v15, v22

    invoke-static {v13, v14}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v15, v21

    goto :goto_1

    :cond_5
    neg-long v0, v5

    move-wide/from16 v21, v0

    int-to-long v0, v12

    move-wide/from16 v23, v0

    int-to-long v0, v4

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    const-wide/16 v25, 0x0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v21

    invoke-static {v7, v8}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v15

    add-long/2addr v13, v7

    neg-long v7, v13

    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-eqz v21, :cond_2

    const-wide/16 v21, 0x0

    cmp-long v21, v7, v21

    if-lez v21, :cond_2

    new-instance v21, Ljava/math/BigDecimal;

    const/16 v22, 0x1

    aget-object v22, v15, v22

    invoke-direct/range {v21 .. v22}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigDecimal;->precision()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v21, v21, v7

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v2, v21, v23

    const-wide/16 v21, 0x0

    cmp-long v21, v2, v21

    if-nez v21, :cond_6

    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v15, v22

    invoke-static {v7, v8}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v15, v21

    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v2, v0

    :cond_6
    const-wide/16 v21, 0x0

    cmp-long v21, v2, v21

    if-lez v21, :cond_2

    new-instance v21, Ljava/lang/ArithmeticException;

    const-string v22, "Division impossible"

    invoke-direct/range {v21 .. v22}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_7
    const/16 v21, 0x0

    aget-object v20, v15, v21

    new-instance v10, Ljava/math/BigDecimal;

    const/16 v21, 0x0

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v10}, Ljava/math/BigDecimal;->precision()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/4 v9, 0x1

    :goto_2
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v21

    if-nez v21, :cond_b

    sget-object v21, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v21, v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v15

    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-nez v21, :cond_a

    int-to-long v0, v9

    move-wide/from16 v21, v0

    sub-long v21, v18, v21

    int-to-long v0, v12

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gez v21, :cond_8

    int-to-long v0, v9

    move-wide/from16 v21, v0

    sub-long v21, v13, v21

    cmp-long v21, v21, v5

    if-ltz v21, :cond_a

    :cond_8
    int-to-long v0, v9

    move-wide/from16 v21, v0

    sub-long v18, v18, v21

    int-to-long v0, v9

    move-wide/from16 v21, v0

    sub-long v13, v13, v21

    if-ge v9, v11, :cond_9

    add-int/lit8 v9, v9, 0x1

    :cond_9
    const/16 v21, 0x0

    aget-object v20, v15, v21

    goto :goto_2

    :cond_a
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_c

    :cond_b
    int-to-long v0, v12

    move-wide/from16 v21, v0

    cmp-long v21, v18, v21

    if-lez v21, :cond_d

    new-instance v21, Ljava/lang/ArithmeticException;

    const-string v22, "Division impossible"

    invoke-direct/range {v21 .. v22}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_c
    const/4 v9, 0x1

    goto :goto_2

    :cond_d
    invoke-static {v13, v14}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Ljava/math/BigDecimal;->scale:I

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto/16 :goto_0
.end method

.method public doubleValue()D
    .locals 23

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->signum()I

    move-result v14

    const/16 v6, 0x434

    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->bitLength:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3fd34413509f79ffL

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v11, v17, v19

    const-wide/16 v17, -0x432

    cmp-long v17, v11, v17

    if-ltz v17, :cond_0

    if-nez v14, :cond_1

    :cond_0
    int-to-double v0, v14

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    mul-double v17, v17, v19

    :goto_0
    return-wide v17

    :cond_1
    const-wide/16 v17, 0x401

    cmp-long v17, v11, v17

    if-lez v17, :cond_2

    int-to-double v0, v14

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x7ff0

    mul-double v17, v17, v19

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    if-gtz v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    :goto_1
    invoke-virtual {v9}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v8

    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v17

    add-int/lit8 v5, v17, -0x36

    if-lez v5, :cond_8

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    move-wide v15, v2

    const-wide/16 v17, 0x1

    and-long v17, v17, v2

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-nez v17, :cond_3

    if-lt v8, v5, :cond_4

    :cond_3
    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-nez v17, :cond_5

    :cond_4
    const-wide/16 v17, 0x2

    add-long v2, v2, v17

    :cond_5
    :goto_2
    const-wide/high16 v17, 0x40

    and-long v17, v17, v2

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_9

    const/16 v17, 0x1

    shr-long v2, v2, v17

    add-int/2addr v6, v5

    :goto_3
    const/16 v17, 0x7fe

    move/from16 v0, v17

    if-le v6, v0, :cond_a

    int-to-double v0, v14

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x7ff0

    mul-double v17, v17, v19

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v10

    long-to-int v0, v11

    move/from16 v17, v0

    rsub-int/lit8 v7, v17, 0x64

    if-lez v7, :cond_7

    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    sub-int/2addr v6, v7

    :cond_7
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v13

    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/16 v17, 0x0

    aget-object v17, v13, v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v17

    add-int/lit8 v18, v4, 0x3

    mul-int v18, v18, v4

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    add-int/lit8 v6, v6, -0x2

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v17

    neg-int v0, v5

    move/from16 v19, v0

    shl-long v2, v17, v19

    move-wide v15, v2

    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-nez v17, :cond_5

    const-wide/16 v17, 0x2

    add-long v2, v2, v17

    goto/16 :goto_2

    :cond_9
    const/16 v17, 0x2

    shr-long v2, v2, v17

    add-int/lit8 v17, v5, 0x1

    add-int v6, v6, v17

    goto/16 :goto_3

    :cond_a
    if-gtz v6, :cond_e

    const/16 v17, -0x35

    move/from16 v0, v17

    if-ge v6, v0, :cond_b

    int-to-double v0, v14

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    mul-double v17, v17, v19

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x1

    shr-long v2, v15, v17

    const-wide/16 v17, -0x1

    add-int/lit8 v19, v6, 0x3f

    ushr-long v17, v17, v19

    and-long v15, v2, v17

    neg-int v0, v6

    move/from16 v17, v0

    shr-long v2, v2, v17

    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-eqz v17, :cond_c

    const-wide/16 v17, 0x1

    and-long v17, v17, v2

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-nez v17, :cond_d

    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-eqz v17, :cond_d

    if-ge v8, v5, :cond_d

    :cond_c
    const-wide/16 v17, 0x1

    add-long v2, v2, v17

    :cond_d
    const/4 v6, 0x0

    const/16 v17, 0x1

    shr-long v2, v2, v17

    :cond_e
    int-to-long v0, v14

    move-wide/from16 v17, v0

    const-wide/high16 v19, -0x8000

    and-long v17, v17, v19

    int-to-long v0, v6

    move-wide/from16 v19, v0

    const/16 v21, 0x34

    shl-long v19, v19, v21

    or-long v17, v17, v19

    const-wide v19, 0xfffffffffffffL

    and-long v19, v19, v2

    or-long v2, v17, v19

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v17

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljava/math/BigDecimal;

    if-eqz v3, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    iget v3, v0, Ljava/math/BigDecimal;->scale:I

    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v4, 0x40

    if-ge v3, v4, :cond_3

    iget-wide v3, v0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v5, p0, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v4, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public floatValue()F
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    int-to-float v0, v3

    iget v3, p0, Ljava/math/BigDecimal;->bitLength:I

    int-to-long v3, v3

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    int-to-double v5, v5

    const-wide v7, 0x3fd34413509f79ffL

    div-double/2addr v5, v7

    double-to-long v5, v5

    sub-long v1, v3, v5

    const-wide/16 v3, -0x95

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    cmpl-float v3, v0, v9

    if-nez v3, :cond_1

    :cond_0
    mul-float/2addr v0, v9

    :goto_0
    return v0

    :cond_1
    const-wide/16 v3, 0x81

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    const/high16 v3, 0x7f80

    mul-float/2addr v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    double-to-float v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const-wide/16 v4, -0x1

    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    mul-int/lit8 v0, v0, 0x21

    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    and-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    goto :goto_0
.end method

.method public intValue()I
    .locals 2

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x20

    if-le v0, v1, :cond_0

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public intValueExact()I
    .locals 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x40

    if-le v0, v1, :cond_0

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public longValueExact()J
    .locals 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public max(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public min(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public movePointLeft(I)Ljava/math/BigDecimal;
    .locals 4

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public movePointRight(I)Ljava/math/BigDecimal;
    .locals 4

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 6

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v4, v4

    add-long v0, v2, v4

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v3, p1, Ljava/math/BigDecimal;->bitLength:I

    add-int/2addr v2, v3

    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    mul-long/2addr v2, v4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-object v0
.end method

.method public negate()Ljava/math/BigDecimal;
    .locals 4

    const/16 v1, 0x3f

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    neg-long v0, v0

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-object v0
.end method

.method public plus()Ljava/math/BigDecimal;
    .locals 0

    return-object p0
.end method

.method public plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Ljava/math/BigDecimal;
    .locals 6

    if-nez p1, :cond_0

    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    :goto_0
    return-object v2

    :cond_0
    if-ltz p1, :cond_1

    const v2, 0x3b9ac9ff

    if-le p1, v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Invalid operation"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    int-to-long v4, p1

    mul-long v0, v2, v4

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v1, v6, 0x1

    move-object v4, p2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1

    if-lez p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const v6, 0x3b9ac9ff

    if-gt v2, v6, :cond_3

    if-nez v3, :cond_2

    if-ltz p1, :cond_3

    :cond_2
    if-lez v3, :cond_4

    if-le v1, v3, :cond_4

    :cond_3
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "Invalid operation"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    if-lez v3, :cond_5

    new-instance v4, Ljava/math/MathContext;

    add-int v6, v3, v1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    :cond_5
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    shr-int/lit8 v5, v6, 0x1

    :goto_1
    if-lez v5, :cond_7

    invoke-virtual {v0, v0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    and-int v6, v2, v5

    if-ne v6, v5, :cond_6

    invoke-virtual {v0, p0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_6
    shr-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    if-gez p1, :cond_8

    sget-object v6, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v6, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_8
    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    goto :goto_0
.end method

.method public precision()I
    .locals 6

    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v2, :cond_0

    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    :goto_0
    return v2

    :cond_0
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-nez v0, :cond_1

    const/4 v2, 0x1

    iput v2, p0, Ljava/math/BigDecimal;->precision:I

    :goto_1
    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x40

    if-ge v0, v2, :cond_2

    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-direct {p0, v2, v3}, Ljava/math/BigDecimal;->decimalDigitsInLong(J)I

    move-result v2

    iput v2, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v0, -0x1

    int-to-double v2, v2

    const-wide v4, 0x3fd34413509f79ffL

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_1
.end method

.method public remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 2

    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public round(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    return-object v0
.end method

.method public scale()I
    .locals 1

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    return v0
.end method

.method public scaleByPowerOfTen(I)Ljava/math/BigDecimal;
    .locals 6

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    int-to-long v4, p1

    sub-long v0, v2, v4

    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public setScale(I)Ljava/math/BigDecimal;
    .locals 1

    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public setScale(II)Ljava/math/BigDecimal;
    .locals 1

    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v4, 0x40

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    int-to-long v0, p1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long v6, v0, v2

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    sget-object v0, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    long-to-int v2, v6

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_2

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    long-to-int v3, v6

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    long-to-int v2, v6

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_4

    neg-long v0, v6

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v3, v6

    long-to-int v3, v3

    aget-wide v2, v2, v3

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    neg-long v1, v6

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0
.end method

.method public shortValueExact()S
    .locals 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public signum()I
    .locals 2

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    goto :goto_0
.end method

.method public stripTrailingZeros()Ljava/math/BigDecimal;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x1

    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v6, v6

    add-int/lit8 v1, v6, -0x1

    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v6

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    :goto_1
    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    aget-object v6, v4, v9

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-nez v6, :cond_2

    int-to-long v6, v0

    sub-long/2addr v2, v6

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    aget-object v5, v4, v8

    goto :goto_1

    :cond_2
    if-ne v0, v9, :cond_4

    :cond_3
    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v6

    invoke-direct {p0, v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 7

    const/16 v4, 0x40

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    sub-int v0, v1, v2

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    if-nez v0, :cond_5

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_4

    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sub-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto :goto_0

    :cond_5
    if-lez v0, :cond_7

    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v3, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_6

    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v5, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v5, v5, v0

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto/16 :goto_0

    :cond_7
    neg-int v0, v0

    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge v0, v1, :cond_8

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v2, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_8

    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v3, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v3, v3, v0

    mul-long/2addr v1, v3

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sub-long/2addr v1, v3

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto/16 :goto_0
.end method

.method public subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 10

    const/16 v9, 0xa

    iget v5, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v5, v5

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    sub-long v0, v5, v7

    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_1
    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    sub-long v7, v0, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v5

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v5

    if-eq v4, v5, :cond_2

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5, v9}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_1
    new-instance v2, Ljava/math/BigDecimal;

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-virtual {v2, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3, v9}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    mul-int/lit8 v6, v4, 0x9

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 3

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v0, :cond_2

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v1, v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public toBigIntegerExact()Ljava/math/BigInteger;
    .locals 4

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v1, :cond_2

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v2

    if-gt v1, v2, :cond_3

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    if-le v1, v2, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public toEngineeringString()Ljava/lang/String;
    .locals 14

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v10, :cond_0

    :goto_0
    return-object v7

    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-gez v10, :cond_2

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v10

    neg-long v10, v10

    int-to-long v12, v2

    add-long/2addr v10, v12

    int-to-long v12, v0

    sub-long v4, v10, v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v10, :cond_4

    const-wide/16 v10, -0x6

    cmp-long v10, v4, v10

    if-ltz v10, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_3

    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v10, v2, v10

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v10, v0, -0x1

    const-string v11, "0."

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v0, 0x1

    sget-object v11, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/4 v12, 0x0

    long-to-int v13, v4

    neg-int v13, v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    sub-int v1, v2, v0

    const-wide/16 v10, 0x3

    rem-long v10, v4, v10

    long-to-int v8, v10

    if-eqz v8, :cond_9

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_6

    if-gez v8, :cond_5

    neg-int v8, v8

    :goto_3
    int-to-long v10, v8

    add-long/2addr v4, v10

    :goto_4
    const/4 v10, 0x3

    if-ge v1, v10, :cond_9

    sub-int v6, v8, v1

    move v3, v2

    :goto_5
    if-lez v6, :cond_8

    add-int/lit8 v2, v3, 0x1

    const/16 v10, 0x30

    invoke-virtual {v9, v3, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    move v3, v2

    goto :goto_5

    :cond_5
    rsub-int/lit8 v8, v8, 0x3

    goto :goto_3

    :cond_6
    if-gez v8, :cond_7

    add-int/lit8 v8, v8, 0x3

    :cond_7
    int-to-long v10, v8

    sub-long/2addr v4, v10

    add-int/2addr v0, v8

    goto :goto_4

    :cond_8
    move v2, v3

    :cond_9
    sub-int v10, v2, v0

    const/4 v11, 0x1

    if-lt v10, v11, :cond_a

    const/16 v10, 0x2e

    invoke-virtual {v9, v0, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_a
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_1

    const/16 v10, 0x45

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_b

    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x2b

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public toPlainString()Ljava/lang/String;
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v6, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v6, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    if-gez v6, :cond_3

    move v0, v4

    :goto_1
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    if-ne v0, v4, :cond_2

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v1, v4

    if-ltz v1, :cond_5

    const-string v4, "0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    if-le v1, v4, :cond_4

    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    sub-int/2addr v1, v4

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    sub-int v1, v0, v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    neg-int v4, v4

    if-ge v1, v4, :cond_7

    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    add-int/2addr v1, v4

    goto :goto_4

    :cond_7
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    neg-int v6, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    const-wide/16 v12, 0x0

    const/16 v11, 0x2e

    const/4 v6, 0x1

    iget-object v7, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v4, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x20

    if-ge v7, v8, :cond_2

    iget-wide v6, p0, Ljava/math/BigDecimal;->smallValue:J

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v6, v7, v8}, Ljava/math/Conversion;->toDecimalScaledString(JI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    iget-object v4, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v7, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-gez v7, :cond_3

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    neg-long v7, v7

    int-to-long v9, v1

    add-long/2addr v7, v9

    int-to-long v9, v0

    sub-long v2, v7, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_5

    const-wide/16 v7, -0x6

    cmp-long v7, v2, v7

    if-ltz v7, :cond_5

    cmp-long v6, v2, v12

    if-ltz v6, :cond_4

    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v6, v1, v6

    invoke-virtual {v5, v6, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    iget-object v4, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v0, -0x1

    const-string v7, "0."

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x1

    sget-object v7, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/4 v8, 0x0

    long-to-int v9, v2

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    sub-int v7, v1, v0

    if-lt v7, v6, :cond_6

    invoke-virtual {v5, v0, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_6
    const/16 v6, 0x45

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    cmp-long v6, v2, v12

    if-lez v6, :cond_7

    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x2b

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public ulp()Ljava/math/BigDecimal;
    .locals 3

    const-wide/16 v0, 0x1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public unscaledValue()Ljava/math/BigInteger;
    .locals 1

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.class public final Ljava/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DECIMAL128:Ljava/math/MathContext; = null

.field public static final DECIMAL32:Ljava/math/MathContext; = null

.field public static final DECIMAL64:Ljava/math/MathContext; = null

.field public static final UNLIMITED:Ljava/math/MathContext; = null

.field private static final serialVersionUID:J = 0x4d6f25c81f7601ffL


# instance fields
.field private final precision:I

.field private final roundingMode:Ljava/math/RoundingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/math/MathContext;

    const/16 v1, 0x22

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    new-instance v0, Ljava/math/MathContext;

    const/4 v1, 0x7

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL32:Ljava/math/MathContext;

    new-instance v0, Ljava/math/MathContext;

    const/16 v1, 0x10

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    new-instance v0, Ljava/math/MathContext;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {p0, p1, v0}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    return-void
.end method

.method public constructor <init>(ILjava/math/RoundingMode;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/math/MathContext;->precision:I

    iput-object p2, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {p0}, Ljava/math/MathContext;->checkValid()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v6, "precision="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const-string v6, "roundingMode="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    const-string v6, "precision="

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x20

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    :cond_0
    const-string v6, "Missing precision"

    invoke-direct {p0, v6, p1}, Ljava/math/MathContext;->invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    :cond_1
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Ljava/math/MathContext;->precision:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v5, 0x1

    const-string v6, "roundingMode="

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v6, v7, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Missing rounding mode"

    invoke-direct {p0, v6, p1}, Ljava/math/MathContext;->invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    :catch_0
    move-exception v0

    const-string v6, "Bad precision"

    invoke-direct {p0, v6, p1}, Ljava/math/MathContext;->invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    :cond_2
    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/math/RoundingMode;->valueOf(Ljava/lang/String;)Ljava/math/RoundingMode;

    move-result-object v6

    iput-object v6, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {p0}, Ljava/math/MathContext;->checkValid()V

    return-void
.end method

.method private checkValid()V
    .locals 3

    iget v0, p0, Ljava/math/MathContext;->precision:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative precision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/math/MathContext;->precision:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "roundingMode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    :try_start_0
    invoke-direct {p0}, Ljava/math/MathContext;->checkValid()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/math/MathContext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/math/MathContext;

    invoke-virtual {v0}, Ljava/math/MathContext;->getPrecision()I

    move-result v0

    iget v1, p0, Ljava/math/MathContext;->precision:I

    if-ne v0, v1, :cond_0

    check-cast p1, Ljava/math/MathContext;

    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrecision()I
    .locals 1

    iget v0, p0, Ljava/math/MathContext;->precision:I

    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava/math/MathContext;->precision:I

    shl-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/math/MathContext;->precision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " roundingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

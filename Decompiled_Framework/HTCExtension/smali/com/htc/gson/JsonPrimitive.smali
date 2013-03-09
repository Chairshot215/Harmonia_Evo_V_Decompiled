.class public final Lcom/htc/gson/JsonPrimitive;
.super Lcom/htc/gson/JsonElement;
.source "JsonPrimitive.java"


# static fields
.field private static final INTEGER_MAX:Ljava/math/BigInteger;

.field private static final LONG_MAX:Ljava/math/BigInteger;

.field private static final PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Short;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Byte;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Character;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/JsonPrimitive;->INTEGER_MAX:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/JsonPrimitive;->LONG_MAX:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static isFloatingPoint(Lcom/htc/gson/JsonPrimitive;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    instance-of v2, v0, Ljava/math/BigDecimal;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Double;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isIntegral(Lcom/htc/gson/JsonPrimitive;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    instance-of v2, v0, Ljava/math/BigInteger;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Short;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Byte;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isPrimitiveOrString(Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x1

    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lcom/htc/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/htc/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/htc/gson/JsonPrimitive;->isIntegral(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/htc/gson/JsonPrimitive;->isIntegral(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/htc/gson/JsonPrimitive;->isFloatingPoint(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Lcom/htc/gson/JsonPrimitive;->isFloatingPoint(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigDecimal;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAsBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method getAsBooleanWrapper()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAsByte()B
    .locals 1

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    goto :goto_0
.end method

.method public getAsCharacter()C
    .locals 2

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getAsDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getAsFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public getAsInt()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getAsLong()J
    .locals 2

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method getAsObject()Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/htc/gson/JsonPrimitive;->INTEGER_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/htc/gson/JsonPrimitive;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAsShort()S
    .locals 1

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    const/16 v4, 0x20

    iget-object v2, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/16 v2, 0x1f

    :goto_0
    return v2

    :cond_0
    invoke-static {p0}, Lcom/htc/gson/JsonPrimitive;->isIntegral(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    ushr-long v2, v0, v4

    xor-long/2addr v2, v0

    long-to-int v2, v2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/htc/gson/JsonPrimitive;->isFloatingPoint(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v4

    xor-long/2addr v2, v0

    long-to-int v2, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isBoolean()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public isNumber()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public isString()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 2

    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/htc/gson/JsonPrimitive;->isPrimitiveOrString(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/htc/gson/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x22

    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/gson/Escaper;->escapeJsonString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0
.end method

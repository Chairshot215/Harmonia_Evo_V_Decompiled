.class public final Ljava/lang/reflect/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method private static native createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    aget-object v0, p0, p1

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, [Z

    if-eqz v0, :cond_2

    check-cast p0, [Z

    check-cast p0, [Z

    aget-boolean v0, p0, p1

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    check-cast p0, [B

    check-cast p0, [B

    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    check-cast p0, [C

    check-cast p0, [C

    aget-char v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p0, [S

    if-eqz v0, :cond_5

    check-cast p0, [S

    check-cast p0, [S

    aget-short v0, p0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p0, [I

    if-eqz v0, :cond_6

    check-cast p0, [I

    check-cast p0, [I

    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_6
    instance-of v0, p0, [J

    if-eqz v0, :cond_7

    check-cast p0, [J

    check-cast p0, [J

    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v0, p0, [F

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/Float;

    check-cast p0, [F

    check-cast p0, [F

    aget v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    :cond_8
    instance-of v0, p0, [D

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/Double;

    check-cast p0, [D

    check-cast p0, [D

    aget-wide v1, p0, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :cond_9
    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBoolean(Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [Z

    if-eqz v0, :cond_0

    check-cast p0, [Z

    check-cast p0, [Z

    aget-boolean v0, p0, p1

    return v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByte(Ljava/lang/Object;I)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    check-cast p0, [B

    aget-byte v0, p0, p1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChar(Ljava/lang/Object;I)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [C

    if-eqz v0, :cond_0

    check-cast p0, [C

    check-cast p0, [C

    aget-char v0, p0, p1

    return v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDouble(Ljava/lang/Object;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [D

    if-eqz v0, :cond_0

    check-cast p0, [D

    check-cast p0, [D

    aget-wide v0, p0, p1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v0

    float-to-double v0, v0

    goto :goto_0
.end method

.method public static getFloat(Ljava/lang/Object;I)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [F

    if-eqz v0, :cond_0

    check-cast p0, [F

    check-cast p0, [F

    aget v0, p0, p1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v0

    long-to-float v0, v0

    goto :goto_0
.end method

.method public static getInt(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [I

    if-eqz v0, :cond_0

    check-cast p0, [I

    check-cast p0, [I

    aget v0, p0, p1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getShort(Ljava/lang/Object;I)S

    move-result v0

    goto :goto_0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1

    check-cast p0, [Z

    check-cast p0, [Z

    array-length v0, p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    check-cast p0, [B

    check-cast p0, [B

    array-length v0, p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, [C

    if-eqz v0, :cond_3

    check-cast p0, [C

    check-cast p0, [C

    array-length v0, p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, [S

    if-eqz v0, :cond_4

    check-cast p0, [S

    check-cast p0, [S

    array-length v0, p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, [I

    if-eqz v0, :cond_5

    check-cast p0, [I

    check-cast p0, [I

    array-length v0, p0

    goto :goto_0

    :cond_5
    instance-of v0, p0, [J

    if-eqz v0, :cond_6

    check-cast p0, [J

    check-cast p0, [J

    array-length v0, p0

    goto :goto_0

    :cond_6
    instance-of v0, p0, [F

    if-eqz v0, :cond_7

    check-cast p0, [F

    check-cast p0, [F

    array-length v0, p0

    goto :goto_0

    :cond_7
    instance-of v0, p0, [D

    if-eqz v0, :cond_8

    check-cast p0, [D

    check-cast p0, [D

    array-length v0, p0

    goto :goto_0

    :cond_8
    if-nez p0, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLong(Ljava/lang/Object;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [J

    if-eqz v0, :cond_0

    check-cast p0, [J

    check-cast p0, [J

    aget-wide v0, p0, p1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static getShort(Ljava/lang/Object;I)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [S

    if-eqz v0, :cond_0

    check-cast p0, [S

    check-cast p0, [S

    aget-short v0, p0, p1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    new-array v0, p1, [Z

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    new-array v0, p1, [B

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    new-array v0, p1, [C

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    new-array v0, p1, [S

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    new-array v0, p1, [I

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    new-array v0, p1, [J

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    new-array v0, p1, [F

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    new-array v0, p1, [D

    goto :goto_0

    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad number of dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    if-nez p0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    aput-object p2, p0, p1

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primitive array can\'t take null values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    goto :goto_0

    :cond_7
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto :goto_0

    :cond_8
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_9

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_9
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_0

    :cond_a
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_b

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_0

    :cond_b
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    goto :goto_0
.end method

.method public static setBoolean(Ljava/lang/Object;IZ)V
    .locals 1

    instance-of v0, p0, [Z

    if-eqz v0, :cond_0

    check-cast p0, [Z

    check-cast p0, [Z

    aput-boolean p2, p0, p1

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setByte(Ljava/lang/Object;IB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    check-cast p0, [B

    aput-byte p2, p0, p1

    :goto_0
    return-void

    :cond_0
    int-to-short v0, p2

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto :goto_0
.end method

.method public static setChar(Ljava/lang/Object;IC)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [C

    if-eqz v0, :cond_0

    check-cast p0, [C

    check-cast p0, [C

    aput-char p2, p0, p1

    return-void

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDouble(Ljava/lang/Object;ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [D

    if-eqz v0, :cond_0

    check-cast p0, [D

    check-cast p0, [D

    aput-wide p2, p0, p1

    return-void

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setFloat(Ljava/lang/Object;IF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [F

    if-eqz v0, :cond_0

    check-cast p0, [F

    check-cast p0, [F

    aput p2, p0, p1

    :goto_0
    return-void

    :cond_0
    float-to-double v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    goto :goto_0
.end method

.method public static setInt(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [I

    if-eqz v0, :cond_0

    check-cast p0, [I

    check-cast p0, [I

    aput p2, p0, p1

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_0
.end method

.method public static setLong(Ljava/lang/Object;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [J

    if-eqz v0, :cond_0

    check-cast p0, [J

    check-cast p0, [J

    aput-wide p2, p0, p1

    :goto_0
    return-void

    :cond_0
    long-to-float v0, p2

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_0
.end method

.method public static setShort(Ljava/lang/Object;IS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    instance-of v0, p0, [S

    if-eqz v0, :cond_0

    check-cast p0, [S

    check-cast p0, [S

    aput-short p2, p0, p1

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_0
.end method

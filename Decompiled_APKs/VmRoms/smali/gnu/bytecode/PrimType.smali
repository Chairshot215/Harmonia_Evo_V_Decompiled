.class public Lgnu/bytecode/PrimType;
.super Lgnu/bytecode/Type;
.source "PrimType.java"


# static fields
.field private static final numberHierarchy:Ljava/lang/String; = "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"


# direct methods
.method protected constructor <init>(Lgnu/bytecode/PrimType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 14
    iget-object v0, p1, Lgnu/bytecode/PrimType;->this_name:Ljava/lang/String;

    iget-object v1, p1, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget v0, p1, Lgnu/bytecode/PrimType;->size:I

    iput v0, p0, Lgnu/bytecode/PrimType;->size:I

    .line 16
    iget-object v0, p1, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    iput-object v0, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .parameter "nam"
    .parameter "sig"
    .parameter "siz"
    .parameter "reflectClass"

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput p3, p0, Lgnu/bytecode/PrimType;->size:I

    .line 8
    iput-object p4, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    .line 9
    invoke-static {p4, p0}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V

    .line 10
    return-void
.end method

.method public static booleanValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 64
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I
    .locals 8
    .parameter "type1"
    .parameter "type2"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 160
    iget-object v2, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 161
    .local v0, sig1:C
    iget-object v2, p1, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 163
    .local v1, sig2:C
    if-ne v0, v1, :cond_0

    move v2, v6

    .line 204
    :goto_0
    return v2

    .line 167
    :cond_0
    const/16 v2, 0x56

    if-ne v0, v2, :cond_1

    move v2, v4

    .line 168
    goto :goto_0

    .line 169
    :cond_1
    const/16 v2, 0x56

    if-ne v1, v2, :cond_2

    move v2, v3

    .line 170
    goto :goto_0

    .line 175
    :cond_2
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_4

    :cond_3
    move v2, v5

    .line 176
    goto :goto_0

    .line 178
    :cond_4
    const/16 v2, 0x43

    if-ne v0, v2, :cond_6

    .line 179
    iget v2, p1, Lgnu/bytecode/PrimType;->size:I

    if-le v2, v7, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_0

    .line 180
    :cond_6
    const/16 v2, 0x43

    if-ne v1, v2, :cond_8

    .line 181
    iget v2, p0, Lgnu/bytecode/PrimType;->size:I

    if-le v2, v7, :cond_7

    move v2, v4

    goto :goto_0

    :cond_7
    move v2, v5

    goto :goto_0

    .line 183
    :cond_8
    const/16 v2, 0x44

    if-ne v0, v2, :cond_9

    move v2, v4

    .line 184
    goto :goto_0

    .line 185
    :cond_9
    const/16 v2, 0x44

    if-ne v1, v2, :cond_a

    move v2, v3

    .line 186
    goto :goto_0

    .line 187
    :cond_a
    const/16 v2, 0x46

    if-ne v0, v2, :cond_b

    move v2, v4

    .line 188
    goto :goto_0

    .line 189
    :cond_b
    const/16 v2, 0x46

    if-ne v1, v2, :cond_c

    move v2, v3

    .line 190
    goto :goto_0

    .line 191
    :cond_c
    const/16 v2, 0x4a

    if-ne v0, v2, :cond_d

    move v2, v4

    .line 192
    goto :goto_0

    .line 193
    :cond_d
    const/16 v2, 0x4a

    if-ne v1, v2, :cond_e

    move v2, v3

    .line 194
    goto :goto_0

    .line 195
    :cond_e
    const/16 v2, 0x49

    if-ne v0, v2, :cond_f

    move v2, v4

    .line 196
    goto :goto_0

    .line 197
    :cond_f
    const/16 v2, 0x49

    if-ne v1, v2, :cond_10

    move v2, v3

    .line 198
    goto :goto_0

    .line 199
    :cond_10
    const/16 v2, 0x53

    if-ne v0, v2, :cond_11

    move v2, v4

    .line 200
    goto :goto_0

    .line 201
    :cond_11
    const/16 v2, 0x53

    if-ne v1, v2, :cond_12

    move v2, v3

    .line 202
    goto :goto_0

    :cond_12
    move v2, v5

    .line 204
    goto :goto_0
.end method

.method private static findInHierarchy(Ljava/lang/String;)C
    .locals 3
    .parameter "cname"

    .prologue
    .line 240
    const-string v1, "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .line 241
    .local v0, pos:I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public boxedType()Lgnu/bytecode/ClassType;
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getSignature()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 71
    .local v1, sig1:C
    sparse-switch v1, :sswitch_data_0

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, cname:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    return-object v2

    .line 73
    .end local v0           #cname:Ljava/lang/String;
    :sswitch_0
    const-string v0, "java.lang.Boolean"

    .restart local v0       #cname:Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v0           #cname:Ljava/lang/String;
    :sswitch_1
    const-string v0, "java.lang.Character"

    .restart local v0       #cname:Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v0           #cname:Ljava/lang/String;
    :sswitch_2
    const-string v0, "java.lang.Byte"

    .restart local v0       #cname:Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v0           #cname:Ljava/lang/String;
    :sswitch_3
    const-string v0, "java.lang.Short"

    .restart local v0       #cname:Ljava/lang/String;
    goto :goto_0

    .line 77
    .end local v0           #cname:Ljava/lang/String;
    :sswitch_4
    const-string v0, "java.lang.Integer"

    .restart local v0       #cname:Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v0           #cname:Ljava/lang/String;
    :sswitch_5
    const-string v0, "java.lang.Long"

    .restart local v0       #cname:Ljava/lang/String;
    goto :goto_0

    .line 79
    .end local v0           #cname:Ljava/lang/String;
    :sswitch_6
    const-string v0, "java.lang.Float"

    .restart local v0       #cname:Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v0           #cname:Ljava/lang/String;
    :sswitch_7
    const-string v0, "java.lang.Double"

    .restart local v0       #cname:Ljava/lang/String;
    goto :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public charValue(Ljava/lang/Object;)C
    .locals 1
    .parameter "value"

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "obj"

    .prologue
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    move-object v1, p1

    .line 34
    .end local p1
    :goto_0
    return-object v1

    .line 23
    .restart local p1
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    :cond_1
    const/16 v1, 0x20

    move v0, v1

    .line 26
    .local v0, sig1:C
    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 48
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "don\'t know how to coerce "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    .end local v0           #sig1:C
    :cond_2
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    goto :goto_1

    .line 28
    .restart local v0       #sig1:C
    :sswitch_0
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 29
    .restart local p1
    :sswitch_1
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 30
    .restart local p1
    :sswitch_2
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 31
    .restart local p1
    :sswitch_3
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 32
    .restart local p1
    :sswitch_4
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_0

    .line 33
    .restart local p1
    :sswitch_5
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_0

    .line 34
    .restart local p1
    :sswitch_6
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 26
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_2
        0x4a -> :sswitch_3
        0x53 -> :sswitch_1
        0x5a -> :sswitch_6
    .end sparse-switch
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 9
    .parameter "other"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x3

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 246
    instance-of v4, p1, Lgnu/bytecode/PrimType;

    if-eqz v4, :cond_1

    .line 251
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 252
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v4

    invoke-static {v4}, Lgnu/bytecode/PrimType;->swappedCompareResult(I)I

    move-result v4

    .line 295
    .end local p1
    :goto_0
    return v4

    .line 253
    .restart local p1
    :cond_0
    check-cast p1, Lgnu/bytecode/PrimType;

    .end local p1
    invoke-static {p0, p1}, Lgnu/bytecode/PrimType;->compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I

    move-result v4

    goto :goto_0

    .line 255
    .restart local p1
    :cond_1
    instance-of v4, p1, Lgnu/bytecode/ClassType;

    if-nez v4, :cond_3

    .line 257
    instance-of v4, p1, Lgnu/bytecode/ArrayType;

    if-eqz v4, :cond_2

    move v4, v7

    .line 258
    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v4

    invoke-static {v4}, Lgnu/bytecode/PrimType;->swappedCompareResult(I)I

    move-result v4

    goto :goto_0

    .line 262
    :cond_3
    iget-object v4, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 263
    .local v2, sig1:C
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, otherName:Ljava/lang/String;
    if-nez v0, :cond_4

    move v4, v6

    .line 265
    goto :goto_0

    .line 266
    :cond_4
    const/4 v3, 0x0

    .line 267
    .local v3, thisPriority:C
    sparse-switch v2, :sswitch_data_0

    .line 285
    :cond_5
    :goto_1
    if-eqz v3, :cond_9

    .line 287
    invoke-static {v0}, Lgnu/bytecode/PrimType;->findInHierarchy(Ljava/lang/String;)C

    move-result v1

    .line 288
    .local v1, otherPriority:C
    if-eqz v1, :cond_9

    .line 289
    if-ne v1, v3, :cond_7

    move v4, v5

    goto :goto_0

    .end local v1           #otherPriority:C
    :sswitch_0
    move v4, v8

    .line 270
    goto :goto_0

    .line 272
    :sswitch_1
    const-string v4, "java.lang.Boolean"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    .line 273
    goto :goto_0

    .line 275
    :cond_6
    :sswitch_2
    const-string v4, "java.lang.Character"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    .line 276
    goto :goto_0

    .line 278
    :sswitch_3
    const/16 v3, 0x41

    goto :goto_1

    .line 279
    :sswitch_4
    const/16 v3, 0x42

    goto :goto_1

    .line 280
    :sswitch_5
    const/16 v3, 0x43

    goto :goto_1

    .line 281
    :sswitch_6
    const/16 v3, 0x44

    goto :goto_1

    .line 282
    :sswitch_7
    const/16 v3, 0x48

    goto :goto_1

    .line 283
    :sswitch_8
    const/16 v3, 0x49

    goto :goto_1

    .line 289
    .restart local v1       #otherPriority:C
    :cond_7
    if-ge v1, v3, :cond_8

    move v4, v8

    goto :goto_0

    :cond_8
    move v4, v6

    goto :goto_0

    .line 292
    .end local v1           #otherPriority:C
    :cond_9
    const-string v4, "java.lang.Object"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lgnu/bytecode/PrimType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v4, :cond_b

    :cond_a
    move v4, v6

    .line 294
    goto :goto_0

    :cond_b
    move v4, v7

    .line 295
    goto :goto_0

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_2
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_5
        0x4a -> :sswitch_6
        0x53 -> :sswitch_4
        0x56 -> :sswitch_0
        0x5a -> :sswitch_1
    .end sparse-switch
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4
    .parameter "code"

    .prologue
    const/4 v3, 0x1

    .line 132
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_0
    const/16 v1, 0x20

    move v0, v1

    .line 134
    .local v0, sig1:C
    :goto_0
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    .line 136
    sget-object v1, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 137
    sget-object v1, Lgnu/bytecode/PrimType;->booleanValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 156
    :goto_1
    return-void

    .line 132
    .end local v0           #sig1:C
    :cond_1
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    goto :goto_0

    .line 139
    .restart local v0       #sig1:C
    :cond_2
    const/16 v1, 0x56

    if-ne v0, v1, :cond_3

    .line 140
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    goto :goto_1

    .line 143
    :cond_3
    sget-object v1, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 144
    const/16 v1, 0x49

    if-eq v0, v1, :cond_4

    const/16 v1, 0x53

    if-eq v0, v1, :cond_4

    const/16 v1, 0x42

    if-ne v0, v1, :cond_5

    .line 145
    :cond_4
    sget-object v1, Lgnu/bytecode/PrimType;->intValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 146
    :cond_5
    const/16 v1, 0x4a

    if-ne v0, v1, :cond_6

    .line 147
    sget-object v1, Lgnu/bytecode/PrimType;->longValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 148
    :cond_6
    const/16 v1, 0x44

    if-ne v0, v1, :cond_7

    .line 149
    sget-object v1, Lgnu/bytecode/PrimType;->doubleValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 150
    :cond_7
    const/16 v1, 0x46

    if-ne v0, v1, :cond_8

    .line 151
    sget-object v1, Lgnu/bytecode/PrimType;->floatValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 154
    :cond_8
    invoke-super {p0, p1}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 6
    .parameter "code"

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 89
    .local v3, sig1:C
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 90
    .local v1, clas:Lgnu/bytecode/ClassType;
    const/16 v4, 0x5a

    if-ne v3, v4, :cond_0

    .line 92
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 93
    const-string v4, "TRUE"

    invoke-virtual {v1, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 94
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 95
    const-string v4, "FALSE"

    invoke-virtual {v1, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 96
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 112
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v4, 0x1

    new-array v0, v4, [Lgnu/bytecode/Type;

    .line 101
    .local v0, args:[Lgnu/bytecode/Type;
    aput-object p0, v0, v5

    .line 102
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    iget v4, v4, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    const/high16 v5, 0x31

    if-lt v4, v5, :cond_1

    .line 103
    const-string v4, "valueOf"

    invoke-virtual {v1, v4, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 111
    .local v2, method:Lgnu/bytecode/Method;
    :goto_1
    invoke-virtual {p1, v2}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 106
    .end local v2           #method:Lgnu/bytecode/Method;
    :cond_1
    const-string v4, "<init>"

    invoke-virtual {v1, v4, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 107
    .restart local v2       #method:Lgnu/bytecode/Method;
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 108
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 109
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    goto :goto_1
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .locals 4
    .parameter "code"

    .prologue
    const/4 v3, 0x1

    .line 116
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_0
    const/16 v1, 0x20

    move v0, v1

    .line 118
    .local v0, sig1:C
    :goto_0
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    .line 119
    sget-object v1, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p1}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 128
    :goto_1
    return-void

    .line 116
    .end local v0           #sig1:C
    :cond_1
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    goto :goto_0

    .line 120
    .restart local v0       #sig1:C
    :cond_2
    const/16 v1, 0x56

    if-ne v0, v1, :cond_3

    .line 122
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 123
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_1

    .line 127
    :cond_3
    sget-object v1, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p1}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1
.end method

.method public promotedType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 214
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    :goto_0
    return-object v0

    .line 212
    :sswitch_0
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 209
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x49 -> :sswitch_0
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

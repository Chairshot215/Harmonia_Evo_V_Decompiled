.class public Lgnu/kawa/functions/Arithmetic;
.super Ljava/lang/Object;
.source "Arithmetic.java"


# static fields
.field public static final BIGDECIMAL_CODE:I = 0x5

.field public static final BIGINTEGER_CODE:I = 0x3

.field public static final DOUBLE_CODE:I = 0x8

.field public static final FLOAT_CODE:I = 0x7

.field public static final FLONUM_CODE:I = 0x9

.field public static final INTNUM_CODE:I = 0x4

.field public static final INT_CODE:I = 0x1

.field public static final LONG_CODE:I = 0x2

.field public static final NUMERIC_CODE:I = 0xb

.field public static final RATNUM_CODE:I = 0x6

.field public static final REALNUM_CODE:I = 0xa

.field static typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeNumber:Lgnu/bytecode/ClassType;

.field static typeNumeric:Lgnu/bytecode/ClassType;

.field static typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeRealNum:Lgnu/kawa/lispexpr/LangObjType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 109
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 110
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 111
    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumber:Lgnu/bytecode/ClassType;

    .line 112
    const-string v0, "gnu.math.Numeric"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    .line 113
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 2
    .parameter "value"

    .prologue
    .line 213
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 214
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0
    move-object v0, p0

    .line 220
    :goto_0
    return-object v0

    .line 215
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    .end local p0
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 217
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 219
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 220
    .restart local p0
    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 2
    .parameter "value"

    .prologue
    .line 183
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 184
    check-cast p0, Ljava/math/BigInteger;

    .end local p0
    move-object v0, p0

    .line 187
    :goto_0
    return-object v0

    .line 185
    .restart local p0
    :cond_0
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_1
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public static asDouble(Ljava/lang/Object;)D
    .locals 2
    .parameter "value"

    .prologue
    .line 178
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static asFloat(Ljava/lang/Object;)F
    .locals 1
    .parameter "value"

    .prologue
    .line 173
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public static asInt(Ljava/lang/Object;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 163
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    .locals 2
    .parameter "value"

    .prologue
    .line 202
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 203
    check-cast p0, Lgnu/math/IntNum;

    .end local p0
    move-object v0, p0

    .line 208
    :goto_0
    return-object v0

    .line 204
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_1
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 207
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 208
    .restart local p0
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0
.end method

.method public static asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;
    .locals 2
    .parameter "value"

    .prologue
    .line 192
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;
    .locals 2
    .parameter "value"

    .prologue
    .line 197
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static asLong(Ljava/lang/Object;)J
    .locals 2
    .parameter "value"

    .prologue
    .line 168
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 2
    .parameter "value"

    .prologue
    .line 237
    invoke-static {p0}, Lgnu/math/Numeric;->asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    .line 238
    .local v0, n:Lgnu/math/Numeric;
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    check-cast p0, Lgnu/math/Numeric;

    move-object v1, p0

    goto :goto_0
.end method

.method public static asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;
    .locals 2
    .parameter "value"

    .prologue
    .line 225
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 226
    check-cast p0, Lgnu/math/RatNum;

    .end local p0
    move-object v0, p0

    .line 232
    :goto_0
    return-object v0

    .line 227
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 230
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0
    invoke-static {p0}, Lgnu/math/RatNum;->valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;

    move-result-object v0

    goto :goto_0

    .line 232
    .restart local p0
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0
.end method

.method public static classifyType(Lgnu/bytecode/Type;)I
    .locals 9
    .parameter "type"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, kind:I
    instance-of v3, p0, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_5

    .line 120
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 121
    .local v1, sig:C
    const/16 v3, 0x56

    if-eq v1, v3, :cond_0

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_0

    const/16 v3, 0x43

    if-ne v1, v3, :cond_1

    :cond_0
    move v3, v4

    .line 158
    .end local v1           #sig:C
    :goto_0
    return v3

    .line 123
    .restart local v1       #sig:C
    :cond_1
    const/16 v3, 0x44

    if-ne v1, v3, :cond_2

    move v3, v8

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    const/16 v3, 0x46

    if-ne v1, v3, :cond_3

    move v3, v7

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    const/16 v3, 0x4a

    if-ne v1, v3, :cond_4

    move v3, v6

    .line 128
    goto :goto_0

    :cond_4
    move v3, v5

    .line 130
    goto :goto_0

    .line 132
    .end local v1           #sig:C
    :cond_5
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, tname:Ljava/lang/String;
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 134
    const/4 v3, 0x4

    goto :goto_0

    .line 135
    :cond_6
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 136
    const/4 v3, 0x6

    goto :goto_0

    .line 137
    :cond_7
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 138
    const/16 v3, 0x9

    goto :goto_0

    .line 139
    :cond_8
    const-string v3, "java.lang.Double"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v8

    .line 140
    goto :goto_0

    .line 141
    :cond_9
    const-string v3, "java.lang.Float"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v7

    .line 142
    goto :goto_0

    .line 143
    :cond_a
    const-string v3, "java.lang.Long"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v6

    .line 144
    goto :goto_0

    .line 145
    :cond_b
    const-string v3, "java.lang.Integer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "java.lang.Short"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "java.lang.Byte"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    move v3, v5

    .line 148
    goto :goto_0

    .line 149
    :cond_d
    const-string v3, "java.math.BigInteger"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 150
    const/4 v3, 0x3

    goto :goto_0

    .line 151
    :cond_e
    const-string v3, "java.math.BigDecimal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 152
    const/4 v3, 0x5

    goto/16 :goto_0

    .line 153
    :cond_f
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 154
    const/16 v3, 0xa

    goto/16 :goto_0

    .line 155
    :cond_10
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 156
    const/16 v3, 0xb

    goto/16 :goto_0

    :cond_11
    move v3, v4

    .line 158
    goto/16 :goto_0
.end method

.method public static classifyValue(Ljava/lang/Object;)I
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, -0x1

    .line 38
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_4

    .line 40
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x4

    .line 70
    :goto_0
    return v0

    .line 42
    :cond_0
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x6

    goto :goto_0

    .line 44
    :cond_1
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_2

    .line 45
    const/16 v0, 0x9

    goto :goto_0

    .line 46
    :cond_2
    instance-of v0, p0, Lgnu/math/RealNum;

    if-eqz v0, :cond_3

    .line 47
    const/16 v0, 0xa

    goto :goto_0

    .line 49
    :cond_3
    const/16 v0, 0xb

    goto :goto_0

    .line 51
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_c

    .line 53
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    .line 55
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 57
    const/4 v0, 0x2

    goto :goto_0

    .line 58
    :cond_7
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 59
    const/4 v0, 0x7

    goto :goto_0

    .line 60
    :cond_8
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 61
    const/16 v0, 0x8

    goto :goto_0

    .line 62
    :cond_9
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_a

    .line 63
    const/4 v0, 0x3

    goto :goto_0

    .line 64
    :cond_a
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_b

    .line 65
    const/4 v0, 0x5

    goto :goto_0

    :cond_b
    move v0, v1

    .line 67
    goto :goto_0

    :cond_c
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .parameter "value"
    .parameter "code"

    .prologue
    .line 282
    packed-switch p1, :pswitch_data_0

    .line 337
    check-cast p0, Ljava/lang/Number;

    .end local p0
    move-object v6, p0

    :goto_0
    return-object v6

    .line 285
    .restart local p0
    :pswitch_0
    instance-of v6, p0, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    move-object v6, p0

    .line 286
    goto :goto_0

    .line 287
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 289
    .local v3, i:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 294
    .end local v3           #i:I
    .restart local p0
    :pswitch_1
    instance-of v6, p0, Ljava/lang/Long;

    if-eqz v6, :cond_1

    move-object v6, p0

    .line 295
    goto :goto_0

    .line 296
    :cond_1
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 298
    .local v4, l:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .line 303
    .end local v4           #l:J
    .restart local p0
    :pswitch_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_0

    .line 305
    :pswitch_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v6

    goto :goto_0

    .line 307
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v6

    goto :goto_0

    .line 309
    :pswitch_5
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v6

    goto :goto_0

    .line 311
    :pswitch_6
    instance-of v6, p0, Ljava/lang/Float;

    if-eqz v6, :cond_2

    move-object v6, p0

    .line 312
    goto :goto_0

    .line 313
    :cond_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v2

    .line 315
    .local v2, f:F
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_0

    .line 320
    .end local v2           #f:F
    :pswitch_7
    instance-of v6, p0, Ljava/lang/Double;

    if-eqz v6, :cond_3

    move-object v6, p0

    .line 321
    goto :goto_0

    .line 322
    :cond_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 324
    .local v0, d:D
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_0

    .line 329
    .end local v0           #d:D
    :pswitch_8
    instance-of v6, p0, Lgnu/math/DFloNum;

    if-eqz v6, :cond_4

    move-object v6, p0

    .line 330
    goto :goto_0

    .line 331
    :cond_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v6

    goto :goto_0

    .line 333
    :pswitch_9
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v6

    goto :goto_0

    .line 335
    :pswitch_a
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/RealNum;

    move-object v6, p0

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static isExact(Ljava/lang/Number;)Z
    .locals 1
    .parameter "num"

    .prologue
    .line 343
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_0

    .line 344
    check-cast p0, Lgnu/math/Numeric;

    .end local p0
    invoke-virtual {p0}, Lgnu/math/Numeric;->isExact()Z

    move-result v0

    .line 345
    :goto_0
    return v0

    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static kindType(I)Lgnu/bytecode/Type;
    .locals 1
    .parameter "kind"

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_0

    .line 100
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 80
    :pswitch_1
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 82
    :pswitch_2
    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_3
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 86
    :pswitch_4
    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_5
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 90
    :pswitch_6
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 92
    :pswitch_7
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 94
    :pswitch_8
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 96
    :pswitch_9
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 98
    :pswitch_a
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static toExact(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2
    .parameter "num"

    .prologue
    .line 351
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_0

    .line 352
    check-cast p0, Lgnu/math/Numeric;

    .end local p0
    invoke-virtual {p0}, Lgnu/math/Numeric;->toExact()Lgnu/math/Numeric;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 353
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 355
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 357
    goto :goto_0
.end method

.method public static toInexact(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2
    .parameter "num"

    .prologue
    .line 362
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_0

    .line 363
    check-cast p0, Lgnu/math/Numeric;

    .end local p0
    invoke-virtual {p0}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 364
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p0

    .line 366
    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "radix"

    .prologue
    const/16 v1, 0xa

    .line 247
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 248
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 272
    :cond_0
    :pswitch_0
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/Numeric;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 251
    :pswitch_1
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 253
    :pswitch_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 255
    :pswitch_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 257
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 259
    :pswitch_5
    if-ne p1, v1, :cond_1

    .line 260
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 263
    :cond_1
    :pswitch_6
    if-ne p1, v1, :cond_2

    .line 264
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 268
    :cond_2
    :pswitch_7
    if-ne p1, v1, :cond_0

    .line 269
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

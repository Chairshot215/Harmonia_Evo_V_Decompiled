.class public Lgnu/kawa/functions/AddOp;
.super Lgnu/kawa/functions/ArithOp;
.source "AddOp.java"


# static fields
.field public static final $Mn:Lgnu/kawa/functions/AddOp;

.field public static final $Pl:Lgnu/kawa/functions/AddOp;


# instance fields
.field plusOrMinus:I


# direct methods
.method public static $Mn(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "arg1"

    .prologue
    .line 97
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 98
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Numeric;->neg()Lgnu/math/Numeric;

    move-result-object v1

    :goto_0
    return-object v1

    .line 101
    :pswitch_0
    new-instance v1, Ljava/lang/Integer;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v2

    neg-int v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 103
    :pswitch_1
    new-instance v1, Ljava/lang/Long;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v2

    neg-long v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 105
    :pswitch_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 107
    :pswitch_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0

    .line 109
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0

    .line 111
    :pswitch_5
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/RatNum;->neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v1

    goto :goto_0

    .line 113
    :pswitch_6
    new-instance v1, Ljava/lang/Float;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v2

    neg-float v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    .line 115
    :pswitch_7
    new-instance v1, Ljava/lang/Double;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 117
    :pswitch_8
    new-instance v1, Lgnu/math/DFloNum;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_0

    .line 98
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
    .end packed-switch
.end method

.method public static $Mn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 92
    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Mn$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "rest"

    .prologue
    const/4 v1, -0x1

    .line 133
    invoke-static {v1, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Pl$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "rest"

    .prologue
    const/4 v1, 0x1

    .line 127
    invoke-static {v1, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "+"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 31
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "-"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "plusOrMinus"

    .prologue
    const/4 v2, 0x1

    .line 20
    if-lez p2, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, p1, v1}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 16
    iput v2, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 21
    iput p2, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 22
    if-lez p2, :cond_1

    const-string v1, "gnu.kawa.functions.CompileArith:$Pl"

    move-object v0, v1

    .line 25
    .local v0, compiler:Ljava/lang/String;
    :goto_1
    sget-object v1, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    invoke-virtual {v1, p0, v0}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/functions/AddOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    return-void

    .line 20
    .end local v0           #compiler:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 22
    :cond_1
    const-string v1, "gnu.kawa.functions.CompileArith:$Mn"

    move-object v0, v1

    goto :goto_1
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "plusOrMinus"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 35
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 36
    .local v0, code1:I
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v1

    .line 41
    .local v1, code2:I
    if-ge v0, v1, :cond_0

    move v0, v1

    .line 42
    .local v0, code:I
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p1

    .line 80
    .local p1, num1:Lgnu/math/Numeric;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p2

    .line 81
    .local p2, num2:Lgnu/math/Numeric;
    invoke-virtual {p1, p2, p0}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object p0

    .end local v0           #code:I
    .end local v1           #code2:I
    .end local p0
    .end local p1           #num1:Lgnu/math/Numeric;
    .end local p2           #num2:Lgnu/math/Numeric;
    :goto_0
    return-object p0

    .line 45
    .restart local v0       #code:I
    .restart local v1       #code2:I
    .restart local p0
    .local p1, arg1:Ljava/lang/Object;
    .local p2, arg2:Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p1

    .line 46
    .local p1, i1:I
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p2

    .line 47
    .local p2, i2:I
    new-instance v0, Ljava/lang/Integer;

    .end local v0           #code:I
    if-lez p0, :cond_1

    add-int p0, p1, p2

    .end local p0
    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    goto :goto_0

    .restart local p0
    :cond_1
    sub-int p0, p1, p2

    goto :goto_1

    .line 49
    .restart local v0       #code:I
    .local p1, arg1:Ljava/lang/Object;
    .local p2, arg2:Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v0

    .line 50
    .end local v1           #code2:I
    .local v0, l1:J
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide p1

    .line 51
    .end local p2           #arg2:Ljava/lang/Object;
    .local p1, l2:J
    new-instance v2, Ljava/lang/Long;

    if-lez p0, :cond_2

    add-long p0, v0, p1

    .end local p0
    :goto_2
    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v2

    goto :goto_0

    .restart local p0
    :cond_2
    sub-long p0, v0, p1

    goto :goto_2

    .line 53
    .local v0, code:I
    .restart local v1       #code2:I
    .local p1, arg1:Ljava/lang/Object;
    .restart local p2       #arg2:Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    .line 54
    .local p1, bi1:Ljava/math/BigInteger;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p2

    .line 55
    .local p2, bi2:Ljava/math/BigInteger;
    if-lez p0, :cond_3

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 57
    .local p1, arg1:Ljava/lang/Object;
    .local p2, arg2:Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1

    .end local p1           #arg1:Ljava/lang/Object;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    .end local p2           #arg2:Ljava/lang/Object;
    invoke-static {p1, p2, p0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_0

    .line 60
    .restart local p1       #arg1:Ljava/lang/Object;
    .restart local p2       #arg2:Ljava/lang/Object;
    :pswitch_4
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 61
    .local p1, bd1:Ljava/math/BigDecimal;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 62
    .local p2, bd2:Ljava/math/BigDecimal;
    if-lez p0, :cond_4

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    .line 64
    .local p1, arg1:Ljava/lang/Object;
    .local p2, arg2:Ljava/lang/Object;
    :pswitch_5
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p1

    .end local p1           #arg1:Ljava/lang/Object;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p2

    .end local p2           #arg2:Ljava/lang/Object;
    invoke-static {p1, p2, p0}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object p0

    goto :goto_0

    .line 67
    .restart local p1       #arg1:Ljava/lang/Object;
    .restart local p2       #arg2:Ljava/lang/Object;
    :pswitch_6
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p1

    .line 68
    .local p1, f1:F
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p2

    .line 69
    .local p2, f2:F
    new-instance v0, Ljava/lang/Float;

    .end local v0           #code:I
    if-lez p0, :cond_5

    add-float p0, p1, p2

    .end local p0
    :goto_3
    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v0

    goto/16 :goto_0

    .restart local p0
    :cond_5
    sub-float p0, p1, p2

    goto :goto_3

    .line 71
    .restart local v0       #code:I
    .local p1, arg1:Ljava/lang/Object;
    .local p2, arg2:Ljava/lang/Object;
    :pswitch_7
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 72
    .end local v1           #code2:I
    .local v0, d1:D
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p1

    .line 73
    .end local p2           #arg2:Ljava/lang/Object;
    .local p1, d2:D
    new-instance v2, Ljava/lang/Double;

    if-lez p0, :cond_6

    add-double p0, v0, p1

    .end local p0
    :goto_4
    invoke-direct {v2, p0, p1}, Ljava/lang/Double;-><init>(D)V

    move-object p0, v2

    goto/16 :goto_0

    .restart local p0
    :cond_6
    sub-double p0, v0, p1

    goto :goto_4

    .line 75
    .local v0, code:I
    .restart local v1       #code2:I
    .local p1, arg1:Ljava/lang/Object;
    .restart local p2       #arg2:Ljava/lang/Object;
    :pswitch_8
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 76
    .end local v1           #code2:I
    .local v0, d1:D
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p1

    .line 77
    .end local p2           #arg2:Ljava/lang/Object;
    .local p1, d2:D
    new-instance v2, Lgnu/math/DFloNum;

    if-lez p0, :cond_7

    add-double p0, v0, p1

    .end local p0
    :goto_5
    invoke-direct {v2, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    move-object p0, v2

    goto/16 :goto_0

    .restart local p0
    :cond_7
    sub-double p0, v0, p1

    goto :goto_5

    .line 42
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
    .end packed-switch
.end method

.method public static applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "plusOrMinus"
    .parameter "init"
    .parameter "args"

    .prologue
    .line 151
    array-length v1, p2

    .line 152
    .local v1, len:I
    move-object v2, p1

    .line 153
    .local v2, result:Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 154
    aget-object v3, p2, v0

    invoke-static {p0, v2, v3}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-object v2
.end method

.method public static applyN(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "plusOrMinus"
    .parameter "args"

    .prologue
    .line 138
    array-length v1, p1

    .line 139
    .local v1, len:I
    if-nez v1, :cond_0

    .line 140
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v3

    .line 146
    :goto_0
    return-object v3

    .line 141
    :cond_0
    const/4 v3, 0x0

    aget-object v2, p1, v3

    .line 142
    .local v2, result:Ljava/lang/Object;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-gez p0, :cond_1

    .line 143
    invoke-static {v2}, Lgnu/kawa/functions/AddOp;->$Mn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 145
    aget-object v3, p1, v0

    invoke-static {p0, v2, v3}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 146
    goto :goto_0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 160
    iget v0, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    invoke-static {v0, p1}, Lgnu/kawa/functions/AddOp;->applyN(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

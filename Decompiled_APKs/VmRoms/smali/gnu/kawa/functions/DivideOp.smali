.class public Lgnu/kawa/functions/DivideOp;
.super Lgnu/kawa/functions/ArithOp;
.source "DivideOp.java"


# static fields
.field public static final $Sl:Lgnu/kawa/functions/DivideOp;

.field public static final div:Lgnu/kawa/functions/DivideOp;

.field public static final div0:Lgnu/kawa/functions/DivideOp;

.field public static final idiv:Lgnu/kawa/functions/DivideOp;

.field public static final mod:Lgnu/kawa/functions/DivideOp;

.field public static final mod0:Lgnu/kawa/functions/DivideOp;

.field public static final modulo:Lgnu/kawa/functions/DivideOp;

.field public static final quotient:Lgnu/kawa/functions/DivideOp;

.field public static final remainder:Lgnu/kawa/functions/DivideOp;


# instance fields
.field rounding_mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/16 v3, 0x8

    .line 19
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "/"

    invoke-direct {v0, v1, v5}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 20
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "idiv"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    .line 21
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "quotient"

    invoke-direct {v0, v1, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    .line 22
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "remainder"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->remainder:Lgnu/kawa/functions/DivideOp;

    .line 23
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "modulo"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    .line 24
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "div"

    invoke-direct {v0, v1, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->div:Lgnu/kawa/functions/DivideOp;

    .line 25
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "mod"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->mod:Lgnu/kawa/functions/DivideOp;

    .line 26
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "div0"

    invoke-direct {v0, v1, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->div0:Lgnu/kawa/functions/DivideOp;

    .line 27
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "mod0"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->mod0:Lgnu/kawa/functions/DivideOp;

    .line 29
    sget-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    iput v4, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 30
    sget-object v0, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    iput v4, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 31
    sget-object v0, Lgnu/kawa/functions/DivideOp;->remainder:Lgnu/kawa/functions/DivideOp;

    iput v4, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 32
    sget-object v0, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x1

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 33
    sget-object v0, Lgnu/kawa/functions/DivideOp;->div:Lgnu/kawa/functions/DivideOp;

    iput v7, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 34
    sget-object v0, Lgnu/kawa/functions/DivideOp;->mod:Lgnu/kawa/functions/DivideOp;

    iput v7, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 35
    sget-object v0, Lgnu/kawa/functions/DivideOp;->div0:Lgnu/kawa/functions/DivideOp;

    iput v5, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 36
    sget-object v0, Lgnu/kawa/functions/DivideOp;->mod0:Lgnu/kawa/functions/DivideOp;

    iput v5, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "op"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/DivideOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.functions.CompileArith:forDiv"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    .line 51
    .local v19, len:I
    if-nez v19, :cond_0

    .line 52
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v28

    .line 257
    :goto_0
    return-object v28

    .line 53
    :cond_0
    const/16 v28, 0x0

    aget-object v26, p1, v28

    check-cast v26, Ljava/lang/Number;

    .line 54
    .local v26, result:Ljava/lang/Number;
    const/16 v28, 0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 55
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DivideOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    goto :goto_0

    .line 56
    :cond_1
    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v6

    .line 57
    .local v6, code:I
    const/4 v12, 0x1

    .local v12, i:I
    :goto_1
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 59
    aget-object v3, p1, v12

    .line 60
    .local v3, arg2:Ljava/lang/Object;
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v7

    .line 61
    .local v7, code2:I
    if-ge v6, v7, :cond_2

    move v6, v7

    .line 62
    :cond_2
    move/from16 v27, v6

    .line 63
    .local v27, scode:I
    const/16 v28, 0x4

    move v0, v6

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 65
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_0

    .line 72
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    const/16 v28, 0x1

    move v0, v6

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    const/16 v28, 0x2

    move v0, v6

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 80
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v28, v0

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const/16 v28, 0xa

    move v0, v6

    move/from16 v1, v28

    if-gt v0, v1, :cond_6

    .line 82
    const/16 v27, 0xa

    .line 83
    const/16 v28, 0x8

    move v0, v6

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    const/16 v28, 0x7

    move v0, v6

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    .line 84
    const/16 v6, 0x9

    .line 92
    :cond_4
    :goto_3
    packed-switch v27, :pswitch_data_1

    .line 213
    :pswitch_0
    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v23

    .line 214
    .local v23, num1:Lgnu/math/Numeric;
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v24

    .line 215
    .local v24, num2:Lgnu/math/Numeric;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v28, v0

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    invoke-virtual/range {v24 .. v24}, Lgnu/math/Numeric;->isZero()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 216
    invoke-virtual/range {v24 .. v24}, Lgnu/math/Numeric;->isExact()Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v28, v23

    goto/16 :goto_0

    .line 69
    .end local v23           #num1:Lgnu/math/Numeric;
    .end local v24           #num2:Lgnu/math/Numeric;
    :pswitch_1
    const/4 v6, 0x4

    move/from16 v27, v6

    .line 70
    goto :goto_2

    .line 76
    :cond_5
    const/16 v27, 0x4

    goto :goto_2

    .line 86
    :cond_6
    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    const/16 v28, 0x7

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 88
    :cond_7
    const/16 v27, 0x9

    .line 89
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v28, v0

    const/16 v29, 0x7

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 90
    move/from16 v6, v27

    goto :goto_3

    .line 95
    :pswitch_2
    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v13

    .line 96
    .local v13, i1:I
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v14

    .line 97
    .local v14, i2:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_2

    .line 103
    div-int/2addr v13, v14

    .line 106
    :goto_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 236
    .end local v13           #i1:I
    .end local v14           #i2:I
    :goto_5
    move v0, v6

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    .line 238
    packed-switch v6, :pswitch_data_3

    .line 57
    :cond_8
    :goto_6
    :pswitch_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 100
    .restart local v13       #i1:I
    .restart local v14       #i2:I
    :pswitch_4
    rem-int/2addr v13, v14

    .line 101
    goto :goto_4

    .line 109
    .end local v13           #i1:I
    .end local v14           #i2:I
    :pswitch_5
    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v15

    .line 110
    .local v15, l1:J
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v17

    .line 111
    .local v17, l2:J
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_4

    .line 117
    div-long v15, v15, v17

    .line 120
    :goto_7
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 121
    goto :goto_5

    .line 114
    :pswitch_6
    rem-long v15, v15, v17

    .line 115
    goto :goto_7

    .line 123
    .end local v15           #l1:J
    .end local v17           #l2:J
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_5

    :pswitch_8
    goto :goto_5

    .line 137
    :pswitch_9
    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v28

    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v26

    .line 139
    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v28, v0

    if-eqz v28, :cond_9

    const/16 v28, 0x4

    move/from16 v6, v28

    .line 141
    :goto_8
    move/from16 v27, v6

    goto :goto_5

    .line 127
    :pswitch_a
    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v28

    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v30

    invoke-static/range {v28 .. v30}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v26

    .line 130
    goto :goto_5

    .line 132
    :pswitch_b
    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v28

    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v30

    invoke-static/range {v28 .. v30}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v26

    .line 135
    goto :goto_5

    .line 139
    :cond_9
    const/16 v28, 0x6

    move/from16 v6, v28

    goto :goto_8

    .line 147
    :pswitch_c
    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 148
    .local v4, bd1:Ljava/math/BigDecimal;
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 149
    .local v5, bd2:Ljava/math/BigDecimal;
    const/16 v21, 0x0

    .line 151
    .local v21, mprec:I
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v28

    packed-switch v28, :pswitch_data_6

    .line 165
    :goto_9
    :pswitch_d
    sget-object v22, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 168
    .local v22, mround:Ljava/math/RoundingMode;
    :goto_a
    new-instance v20, Ljava/math/MathContext;

    invoke-direct/range {v20 .. v22}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 169
    .local v20, mcontext:Ljava/math/MathContext;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_7

    :pswitch_e
    goto/16 :goto_5

    .line 172
    :pswitch_f
    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 173
    goto/16 :goto_5

    .line 154
    .end local v20           #mcontext:Ljava/math/MathContext;
    .end local v22           #mround:Ljava/math/RoundingMode;
    :pswitch_10
    sget-object v22, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 155
    .restart local v22       #mround:Ljava/math/RoundingMode;
    goto :goto_a

    .line 157
    .end local v22           #mround:Ljava/math/RoundingMode;
    :pswitch_11
    sget-object v22, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 158
    .restart local v22       #mround:Ljava/math/RoundingMode;
    goto :goto_a

    .line 160
    .end local v22           #mround:Ljava/math/RoundingMode;
    :pswitch_12
    sget-object v22, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 161
    .restart local v22       #mround:Ljava/math/RoundingMode;
    goto :goto_a

    .line 163
    .end local v22           #mround:Ljava/math/RoundingMode;
    :pswitch_13
    invoke-virtual {v5}, Ljava/math/BigDecimal;->signum()I

    move-result v28

    if-gez v28, :cond_a

    sget-object v28, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    move-object/from16 v22, v28

    .restart local v22       #mround:Ljava/math/RoundingMode;
    :goto_b
    goto :goto_9

    .end local v22           #mround:Ljava/math/RoundingMode;
    :cond_a
    sget-object v28, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-object/from16 v22, v28

    goto :goto_b

    .line 175
    .restart local v20       #mcontext:Ljava/math/MathContext;
    .restart local v22       #mround:Ljava/math/RoundingMode;
    :pswitch_14
    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 176
    goto/16 :goto_5

    .line 178
    :pswitch_15
    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v26

    .line 180
    const/16 v27, 0x3

    move/from16 v6, v27

    .line 181
    goto/16 :goto_5

    .line 183
    :pswitch_16
    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    goto/16 :goto_5

    .line 189
    .end local v4           #bd1:Ljava/math/BigDecimal;
    .end local v5           #bd2:Ljava/math/BigDecimal;
    .end local v20           #mcontext:Ljava/math/MathContext;
    .end local v21           #mprec:I
    .end local v22           #mround:Ljava/math/RoundingMode;
    :pswitch_17
    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v8

    .line 190
    .local v8, d1:D
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v10

    .line 191
    .local v10, d2:D
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_8

    goto/16 :goto_5

    .line 195
    :pswitch_18
    div-double v28, v8, v10

    invoke-static/range {v28 .. v29}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v26

    .line 196
    goto/16 :goto_5

    .line 198
    :pswitch_19
    div-double v28, v8, v10

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v30

    invoke-static/range {v28 .. v30}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    .line 199
    goto/16 :goto_5

    .line 201
    :pswitch_1a
    div-double v28, v8, v10

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v30

    invoke-static/range {v28 .. v30}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v26

    .line 202
    const/16 v27, 0x4

    move/from16 v6, v27

    .line 203
    goto/16 :goto_5

    .line 205
    :pswitch_1b
    const-wide/16 v28, 0x0

    cmpl-double v28, v10, v28

    if-eqz v28, :cond_b

    .line 206
    div-double v28, v8, v10

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v30

    invoke-static/range {v28 .. v30}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v28

    mul-double v28, v28, v10

    sub-double v8, v8, v28

    .line 207
    :cond_b
    invoke-static {v8, v9}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v26

    goto/16 :goto_5

    .line 216
    .end local v8           #d1:D
    .end local v10           #d2:D
    .restart local v23       #num1:Lgnu/math/Numeric;
    .restart local v24       #num2:Lgnu/math/Numeric;
    :cond_c
    invoke-virtual/range {v23 .. v23}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v28

    goto/16 :goto_0

    .line 217
    :cond_d
    invoke-virtual/range {v23 .. v24}, Lgnu/math/Numeric;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v25

    .line 218
    .local v25, numr:Lgnu/math/Numeric;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v28, v0

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 219
    check-cast v25, Lgnu/math/RealNum;

    .end local v25           #numr:Lgnu/math/Numeric;
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/math/Numeric;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v25

    .line 220
    .restart local v25       #numr:Lgnu/math/Numeric;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_9

    .line 233
    move-object/from16 v26, v25

    goto/16 :goto_5

    .line 223
    :pswitch_1c
    check-cast v25, Lgnu/math/RealNum;

    .end local v25           #numr:Lgnu/math/Numeric;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v26

    .line 224
    const/4 v6, 0x4

    move/from16 v27, v6

    .line 225
    goto/16 :goto_5

    .line 227
    .restart local v25       #numr:Lgnu/math/Numeric;
    :pswitch_1d
    check-cast v25, Lgnu/math/RealNum;

    .end local v25           #numr:Lgnu/math/Numeric;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v26

    .line 228
    goto/16 :goto_5

    .line 230
    .restart local v25       #numr:Lgnu/math/Numeric;
    :pswitch_1e
    invoke-virtual/range {v25 .. v25}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v26

    .line 231
    goto/16 :goto_5

    .line 241
    .end local v23           #num1:Lgnu/math/Numeric;
    .end local v24           #num2:Lgnu/math/Numeric;
    .end local v25           #numr:Lgnu/math/Numeric;
    :pswitch_1f
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 242
    goto/16 :goto_6

    .line 244
    :pswitch_20
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->longValue()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 245
    goto/16 :goto_6

    .line 247
    :pswitch_21
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->floatValue()F

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    .line 248
    goto/16 :goto_6

    .line 250
    :pswitch_22
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    .line 251
    goto/16 :goto_6

    .line 253
    :pswitch_23
    invoke-static/range {v26 .. v26}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v26

    goto/16 :goto_6

    .end local v3           #arg2:Ljava/lang/Object;
    .end local v7           #code2:I
    .end local v27           #scode:I
    :cond_f
    move-object/from16 v28, v26

    .line 257
    goto/16 :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 92
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
    .end packed-switch

    .line 97
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_4
    .end packed-switch

    .line 238
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_20
        :pswitch_23
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_21
        :pswitch_22
    .end packed-switch

    .line 111
    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_6
    .end packed-switch

    .line 123
    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 151
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_d
        :pswitch_13
    .end packed-switch

    .line 169
    :pswitch_data_7
    .packed-switch 0x4
        :pswitch_f
        :pswitch_e
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 191
    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 220
    :pswitch_data_9
    .packed-switch 0x5
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method public getRoundingMode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    return v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, -0xfff

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2002

    goto :goto_0
.end method

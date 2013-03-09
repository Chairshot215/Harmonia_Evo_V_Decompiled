.class public Lgnu/kawa/xml/XIntegerType;
.super Lgnu/kawa/xml/XDataType;
.source "XIntegerType.java"


# static fields
.field public static final byteType:Lgnu/kawa/xml/XIntegerType;

.field public static final intType:Lgnu/kawa/xml/XIntegerType;

.field public static final integerType:Lgnu/kawa/xml/XIntegerType;

.field public static final longType:Lgnu/kawa/xml/XIntegerType;

.field public static final negativeIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final positiveIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final shortType:Lgnu/kawa/xml/XIntegerType;

.field static typeIntNum:Lgnu/bytecode/ClassType;

.field public static final unsignedByteType:Lgnu/kawa/xml/XIntegerType;

.field public static final unsignedIntType:Lgnu/kawa/xml/XIntegerType;

.field public static final unsignedLongType:Lgnu/kawa/xml/XIntegerType;

.field public static final unsignedShortType:Lgnu/kawa/xml/XIntegerType;


# instance fields
.field isUnsignedType:Z

.field public final maxValue:Lgnu/math/IntNum;

.field public final minValue:Lgnu/math/IntNum;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 23
    const-string v0, "gnu.math.IntNum"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->typeIntNum:Lgnu/bytecode/ClassType;

    .line 32
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    const-string v1, "integer"

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->decimalType:Lgnu/kawa/xml/XDataType;

    const/4 v3, 0x5

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    .line 35
    new-instance v5, Lgnu/kawa/xml/XIntegerType;

    const-string v6, "long"

    sget-object v7, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v8, 0x8

    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v9

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v5, Lgnu/kawa/xml/XIntegerType;->longType:Lgnu/kawa/xml/XIntegerType;

    .line 38
    new-instance v5, Lgnu/kawa/xml/XIntegerType;

    const-string v6, "int"

    sget-object v7, Lgnu/kawa/xml/XIntegerType;->longType:Lgnu/kawa/xml/XIntegerType;

    const/16 v8, 0x9

    const/high16 v0, -0x8000

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    const v0, 0x7fffffff

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v5, Lgnu/kawa/xml/XIntegerType;->intType:Lgnu/kawa/xml/XIntegerType;

    .line 42
    new-instance v5, Lgnu/kawa/xml/XIntegerType;

    const-string v6, "short"

    sget-object v7, Lgnu/kawa/xml/XIntegerType;->intType:Lgnu/kawa/xml/XIntegerType;

    const/16 v8, 0xa

    const/16 v0, -0x8000

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    const/16 v0, 0x7fff

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v5, Lgnu/kawa/xml/XIntegerType;->shortType:Lgnu/kawa/xml/XIntegerType;

    .line 46
    new-instance v5, Lgnu/kawa/xml/XIntegerType;

    const-string v6, "byte"

    sget-object v7, Lgnu/kawa/xml/XIntegerType;->shortType:Lgnu/kawa/xml/XIntegerType;

    const/16 v8, 0xb

    const/16 v0, -0x80

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    const/16 v0, 0x7f

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v5, Lgnu/kawa/xml/XIntegerType;->byteType:Lgnu/kawa/xml/XIntegerType;

    .line 50
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    const-string v1, "nonPositiveInteger"

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    const/4 v3, 0x6

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    .line 54
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    const-string v1, "negativeInteger"

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/4 v3, 0x7

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->negativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    .line 58
    new-instance v5, Lgnu/kawa/xml/XIntegerType;

    const-string v6, "nonNegativeInteger"

    sget-object v7, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v8, 0xc

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v9

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v5, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    .line 62
    new-instance v5, Lgnu/kawa/xml/XIntegerType;

    const-string v6, "unsignedLong"

    sget-object v7, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v8, 0xd

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v9

    const-string v0, "18446744073709551615"

    invoke-static {v0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;)Lgnu/math/IntNum;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v5, Lgnu/kawa/xml/XIntegerType;->unsignedLongType:Lgnu/kawa/xml/XIntegerType;

    .line 66
    new-instance v5, Lgnu/kawa/xml/XIntegerType;

    const-string v6, "unsignedInt"

    sget-object v7, Lgnu/kawa/xml/XIntegerType;->unsignedLongType:Lgnu/kawa/xml/XIntegerType;

    const/16 v8, 0xe

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v9

    const-wide v0, 0xffffffffL

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v5, Lgnu/kawa/xml/XIntegerType;->unsignedIntType:Lgnu/kawa/xml/XIntegerType;

    .line 70
    new-instance v5, Lgnu/kawa/xml/XIntegerType;

    const-string v6, "unsignedShort"

    sget-object v7, Lgnu/kawa/xml/XIntegerType;->unsignedIntType:Lgnu/kawa/xml/XIntegerType;

    const/16 v8, 0xf

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v9

    const v0, 0xffff

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v5, Lgnu/kawa/xml/XIntegerType;->unsignedShortType:Lgnu/kawa/xml/XIntegerType;

    .line 74
    new-instance v5, Lgnu/kawa/xml/XIntegerType;

    const-string v6, "unsignedByte"

    sget-object v7, Lgnu/kawa/xml/XIntegerType;->unsignedShortType:Lgnu/kawa/xml/XIntegerType;

    const/16 v8, 0x10

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v9

    const/16 v0, 0xff

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v5, Lgnu/kawa/xml/XIntegerType;->unsignedByteType:Lgnu/kawa/xml/XIntegerType;

    .line 78
    new-instance v5, Lgnu/kawa/xml/XIntegerType;

    const-string v6, "positiveInteger"

    sget-object v7, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v8, 0x11

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v9

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v5, Lgnu/kawa/xml/XIntegerType;->positiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V
    .locals 1
    .parameter "name"
    .parameter "base"
    .parameter "typeCode"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 94
    sget-object v0, Lgnu/kawa/xml/XIntegerType;->typeIntNum:Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1, v0, p3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    .line 95
    iput-object p4, p0, Lgnu/kawa/xml/XIntegerType;->minValue:Lgnu/math/IntNum;

    .line 96
    iput-object p5, p0, Lgnu/kawa/xml/XIntegerType;->maxValue:Lgnu/math/IntNum;

    .line 97
    iput-object p2, p0, Lgnu/kawa/xml/XIntegerType;->baseType:Lgnu/kawa/xml/XDataType;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V
    .locals 1
    .parameter "name"
    .parameter "base"
    .parameter "typeCode"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p5}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/Object;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    .line 88
    const-string v0, "unsigned"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgnu/kawa/xml/XIntegerType;->isUnsignedType:Z

    .line 89
    return-void
.end method


# virtual methods
.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x3

    .line 137
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 138
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    .line 148
    :goto_1
    return-object v0

    .line 138
    :cond_0
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 140
    .restart local p1
    :cond_1
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_2

    .line 141
    check-cast p1, Lgnu/math/IntNum;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_1

    .line 142
    .restart local p1
    :cond_2
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 143
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_1

    .line 144
    .restart local p1
    :cond_3
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_4

    .line 145
    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1, v2}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_1

    .line 146
    .restart local p1
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 147
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_1

    .line 148
    .restart local p1
    :cond_5
    invoke-super {p0, p1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 120
    check-cast p1, Lgnu/math/IntNum;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    instance-of v1, p1, Lgnu/math/IntNum;

    if-nez v1, :cond_0

    move v1, v2

    .line 115
    .end local p1
    :goto_0
    return v1

    .line 104
    .restart local p1
    :cond_0
    sget-object v1, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    if-ne p0, v1, :cond_1

    move v1, v3

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    instance-of v1, p1, Lgnu/kawa/xml/XInteger;

    if-eqz v1, :cond_2

    check-cast p1, Lgnu/kawa/xml/XInteger;

    .end local p1
    invoke-virtual {p1}, Lgnu/kawa/xml/XInteger;->getIntegerType()Lgnu/kawa/xml/XIntegerType;

    move-result-object v1

    move-object v0, v1

    .line 109
    .local v0, objType:Lgnu/kawa/xml/XDataType;
    :goto_1
    if-eqz v0, :cond_4

    .line 111
    if-ne v0, p0, :cond_3

    move v1, v3

    .line 112
    goto :goto_0

    .line 106
    .end local v0           #objType:Lgnu/kawa/xml/XDataType;
    .restart local p1
    :cond_2
    sget-object v1, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    move-object v0, v1

    goto :goto_1

    .line 113
    .end local p1
    .restart local v0       #objType:Lgnu/kawa/xml/XDataType;
    :cond_3
    iget-object v0, v0, Lgnu/kawa/xml/XDataType;->baseType:Lgnu/kawa/xml/XDataType;

    goto :goto_1

    :cond_4
    move v1, v2

    .line 115
    goto :goto_0
.end method

.method public isUnsignedType()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lgnu/kawa/xml/XIntegerType;->isUnsignedType:Z

    return v0
.end method

.method public valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 3
    .parameter "value"

    .prologue
    .line 125
    sget-object v0, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    if-eq p0, v0, :cond_3

    .line 127
    iget-object v0, p0, Lgnu/kawa/xml/XIntegerType;->minValue:Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/kawa/xml/XIntegerType;->minValue:Lgnu/math/IntNum;

    invoke-static {p1, v0}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/XIntegerType;->maxValue:Lgnu/math/IntNum;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgnu/kawa/xml/XIntegerType;->maxValue:Lgnu/math/IntNum;

    invoke-static {p1, v0}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    if-lez v0, :cond_2

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgnu/kawa/xml/XIntegerType;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    new-instance v0, Lgnu/kawa/xml/XInteger;

    invoke-direct {v0, p1, p0}, Lgnu/kawa/xml/XInteger;-><init>(Lgnu/math/IntNum;Lgnu/kawa/xml/XIntegerType;)V

    .line 132
    :goto_0
    return-object v0

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method public valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;
    .locals 1
    .parameter "value"
    .parameter "radix"

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

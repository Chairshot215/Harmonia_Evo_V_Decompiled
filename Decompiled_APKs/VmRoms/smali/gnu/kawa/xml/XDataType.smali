.class public Lgnu/kawa/xml/XDataType;
.super Lgnu/bytecode/Type;
.source "XDataType.java"

# interfaces
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final ANY_ATOMIC_TYPE_CODE:I = 0x3

.field public static final ANY_SIMPLE_TYPE_CODE:I = 0x2

.field public static final ANY_URI_TYPE_CODE:I = 0x21

.field public static final BASE64_BINARY_TYPE_CODE:I = 0x22

.field public static final BOOLEAN_TYPE_CODE:I = 0x1f

.field public static final BYTE_TYPE_CODE:I = 0xb

.field public static final DATE_TIME_TYPE_CODE:I = 0x14

.field public static final DATE_TYPE_CODE:I = 0x15

.field public static final DAY_TIME_DURATION_TYPE_CODE:I = 0x1e

.field public static final DECIMAL_ONE:Ljava/math/BigDecimal; = null

.field public static final DECIMAL_TYPE_CODE:I = 0x4

.field public static final DOUBLE_ONE:Ljava/lang/Double; = null

.field public static final DOUBLE_TYPE_CODE:I = 0x13

.field public static final DOUBLE_ZERO:Ljava/lang/Double; = null

.field public static final DURATION_TYPE_CODE:I = 0x1c

.field public static final ENTITY_TYPE_CODE:I = 0x2f

.field public static final FLOAT_ONE:Ljava/lang/Float; = null

.field public static final FLOAT_TYPE_CODE:I = 0x12

.field public static final FLOAT_ZERO:Ljava/lang/Float; = null

.field public static final G_DAY_TYPE_CODE:I = 0x1a

.field public static final G_MONTH_DAY_TYPE_CODE:I = 0x19

.field public static final G_MONTH_TYPE_CODE:I = 0x1b

.field public static final G_YEAR_MONTH_TYPE_CODE:I = 0x17

.field public static final G_YEAR_TYPE_CODE:I = 0x18

.field public static final HEX_BINARY_TYPE_CODE:I = 0x23

.field public static final IDREF_TYPE_CODE:I = 0x2e

.field public static final ID_TYPE_CODE:I = 0x2d

.field public static final INTEGER_TYPE_CODE:I = 0x5

.field public static final INT_TYPE_CODE:I = 0x9

.field public static final LANGUAGE_TYPE_CODE:I = 0x29

.field public static final LONG_TYPE_CODE:I = 0x8

.field public static final NAME_TYPE_CODE:I = 0x2b

.field public static final NCNAME_TYPE_CODE:I = 0x2c

.field public static final NEGATIVE_INTEGER_TYPE_CODE:I = 0x7

.field public static final NMTOKEN_TYPE_CODE:I = 0x2a

.field public static final NONNEGATIVE_INTEGER_TYPE_CODE:I = 0xc

.field public static final NON_POSITIVE_INTEGER_TYPE_CODE:I = 0x6

.field public static final NORMALIZED_STRING_TYPE_CODE:I = 0x27

.field public static final NOTATION_TYPE_CODE:I = 0x24

.field public static final NotationType:Lgnu/kawa/xml/XDataType; = null

.field public static final POSITIVE_INTEGER_TYPE_CODE:I = 0x11

.field public static final QNAME_TYPE_CODE:I = 0x20

.field public static final SHORT_TYPE_CODE:I = 0xa

.field public static final STRING_TYPE_CODE:I = 0x26

.field public static final TIME_TYPE_CODE:I = 0x16

.field public static final TOKEN_TYPE_CODE:I = 0x28

.field public static final UNSIGNED_BYTE_TYPE_CODE:I = 0x10

.field public static final UNSIGNED_INT_TYPE_CODE:I = 0xe

.field public static final UNSIGNED_LONG_TYPE_CODE:I = 0xd

.field public static final UNSIGNED_SHORT_TYPE_CODE:I = 0xf

.field public static final UNTYPED_ATOMIC_TYPE_CODE:I = 0x25

.field public static final UNTYPED_TYPE_CODE:I = 0x30

.field public static final YEAR_MONTH_DURATION_TYPE_CODE:I = 0x1d

.field public static final anyAtomicType:Lgnu/kawa/xml/XDataType;

.field public static final anySimpleType:Lgnu/kawa/xml/XDataType;

.field public static final anyURIType:Lgnu/kawa/xml/XDataType;

.field public static final base64BinaryType:Lgnu/kawa/xml/XDataType;

.field public static final booleanType:Lgnu/kawa/xml/XDataType;

.field public static final dayTimeDurationType:Lgnu/kawa/xml/XDataType;

.field public static final decimalType:Lgnu/kawa/xml/XDataType;

.field public static final doubleType:Lgnu/kawa/xml/XDataType;

.field public static final durationType:Lgnu/kawa/xml/XDataType;

.field public static final floatType:Lgnu/kawa/xml/XDataType;

.field public static final hexBinaryType:Lgnu/kawa/xml/XDataType;

.field public static final stringStringType:Lgnu/kawa/xml/XDataType;

.field public static final stringType:Lgnu/kawa/xml/XDataType;

.field public static final untypedAtomicType:Lgnu/kawa/xml/XDataType;

.field public static final untypedType:Lgnu/kawa/xml/XDataType;

.field public static final yearMonthDurationType:Lgnu/kawa/xml/XDataType;


# instance fields
.field baseType:Lgnu/kawa/xml/XDataType;

.field implementationType:Lgnu/bytecode/Type;

.field name:Ljava/lang/Object;

.field typeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x26

    .line 100
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "anySimpleType"

    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    .line 105
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "anyAtomicType"

    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    .line 110
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "string"

    const-string v2, "java.lang.CharSequence"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    .line 122
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "String"

    const-string v2, "java.lang.String"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    .line 127
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "string"

    const-string v2, "gnu.kawa.xml.UntypedAtomic"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    .line 131
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "base64Binary"

    const-string v2, "gnu.kawa.xml.Base64Binary"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->base64BinaryType:Lgnu/kawa/xml/XDataType;

    .line 135
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "hexBinary"

    const-string v2, "gnu.kawa.xml.HexBinary"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->hexBinaryType:Lgnu/kawa/xml/XDataType;

    .line 139
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "boolean"

    sget-object v2, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    .line 143
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "anyURI"

    const-string v2, "gnu.text.Path"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    .line 146
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "NOTATION"

    const-string v2, "gnu.kawa.xml.Notation"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    .line 151
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "decimal"

    const-string v2, "java.lang.Number"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    .line 158
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "float"

    const-string v2, "java.lang.Float"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    .line 161
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "double"

    const-string v2, "java.lang.Double"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    .line 164
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "duration"

    const-string v2, "gnu.math.Duration"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->durationType:Lgnu/kawa/xml/XDataType;

    .line 168
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "yearMonthDuration"

    const-string v2, "gnu.math.Duration"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->yearMonthDurationType:Lgnu/kawa/xml/XDataType;

    .line 172
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "dayTimeDuration"

    const-string v2, "gnu.math.Duration"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->dayTimeDurationType:Lgnu/kawa/xml/XDataType;

    .line 176
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "untyped"

    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    .line 544
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 545
    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->DOUBLE_ONE:Ljava/lang/Double;

    .line 546
    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->FLOAT_ZERO:Ljava/lang/Float;

    .line 547
    const/high16 v0, 0x3f80

    invoke-static {v0}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->FLOAT_ONE:Ljava/lang/Float;

    .line 548
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V
    .locals 1
    .parameter "name"
    .parameter "implementationType"
    .parameter "typeCode"

    .prologue
    .line 92
    invoke-direct {p0, p2}, Lgnu/bytecode/Type;-><init>(Lgnu/bytecode/Type;)V

    .line 93
    iput-object p1, p0, Lgnu/kawa/xml/XDataType;->name:Ljava/lang/Object;

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XDataType;->setName(Ljava/lang/String;)V

    .line 96
    :cond_0
    iput-object p2, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    .line 97
    iput p3, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    .line 98
    return-void
.end method

.method public static makeDouble(D)Ljava/lang/Double;
    .locals 1
    .parameter "value"

    .prologue
    .line 538
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static makeFloat(F)Ljava/lang/Float;
    .locals 1
    .parameter "value"

    .prologue
    .line 529
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "value"

    .prologue
    .line 333
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 334
    instance-of v7, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v7, :cond_1

    .line 336
    iget v7, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/16 v8, 0x25

    if-ne v7, v8, :cond_0

    move-object v7, p1

    .line 435
    .end local p0
    .end local p1
    :goto_0
    return-object v7

    .line 338
    .restart local p0
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 340
    :cond_1
    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 342
    :cond_2
    iget v7, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    packed-switch v7, :pswitch_data_0

    .line 435
    :cond_3
    :pswitch_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 345
    :pswitch_1
    invoke-static {p1}, Lgnu/xml/TextUtils;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 347
    :pswitch_2
    new-instance v7, Lgnu/kawa/xml/UntypedAtomic;

    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lgnu/kawa/xml/UntypedAtomic;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :pswitch_3
    invoke-static {p1}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v7

    goto :goto_0

    .line 351
    :pswitch_4
    instance-of v7, p1, Ljava/lang/Boolean;

    if-eqz v7, :cond_5

    .line 352
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 354
    .restart local p1
    :cond_5
    instance-of v7, p1, Ljava/lang/Number;

    if-eqz v7, :cond_3

    .line 356
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 357
    .local v1, d:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v1, v7

    if-eqz v7, :cond_6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 362
    .end local v1           #d:D
    .restart local p1
    :pswitch_5
    instance-of v7, p1, Ljava/math/BigDecimal;

    if-eqz v7, :cond_8

    move-object v7, p1

    .line 363
    goto :goto_0

    .line 364
    :cond_8
    instance-of v7, p1, Lgnu/math/RealNum;

    if-eqz v7, :cond_9

    .line 365
    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_0

    .line 366
    .restart local p1
    :cond_9
    instance-of v7, p1, Ljava/lang/Float;

    if-nez v7, :cond_a

    instance-of v7, p1, Ljava/lang/Double;

    if-eqz v7, :cond_b

    .line 368
    :cond_a
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 370
    .restart local v1       #d:D
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v7

    goto/16 :goto_0

    .line 375
    .end local v1           #d:D
    .restart local p1
    :cond_b
    instance-of v7, p1, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    .line 376
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v7

    :goto_1
    invoke-virtual {p0, v7}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v7

    goto :goto_1

    .line 380
    .restart local p1
    :pswitch_6
    instance-of v7, p1, Ljava/lang/Float;

    if-eqz v7, :cond_d

    move-object v7, p1

    .line 381
    goto/16 :goto_0

    .line 382
    :cond_d
    instance-of v7, p1, Ljava/lang/Number;

    if-eqz v7, :cond_e

    .line 384
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-static {v7}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v7

    goto/16 :goto_0

    .line 385
    .restart local p1
    :cond_e
    instance-of v7, p1, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    .line 386
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f

    sget-object v7, Lgnu/kawa/xml/XDataType;->FLOAT_ONE:Ljava/lang/Float;

    goto/16 :goto_0

    :cond_f
    sget-object v7, Lgnu/kawa/xml/XDataType;->FLOAT_ZERO:Ljava/lang/Float;

    goto/16 :goto_0

    .line 389
    .restart local p1
    :pswitch_7
    instance-of v7, p1, Ljava/lang/Double;

    if-eqz v7, :cond_10

    move-object v7, p1

    .line 390
    goto/16 :goto_0

    .line 391
    :cond_10
    instance-of v7, p1, Ljava/lang/Number;

    if-eqz v7, :cond_11

    .line 393
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v7

    goto/16 :goto_0

    .line 394
    .restart local p1
    :cond_11
    instance-of v7, p1, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    .line 395
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_12

    sget-object v7, Lgnu/kawa/xml/XDataType;->DOUBLE_ONE:Ljava/lang/Double;

    goto/16 :goto_0

    :cond_12
    sget-object v7, Lgnu/kawa/xml/XDataType;->DOUBLE_ZERO:Ljava/lang/Double;

    goto/16 :goto_0

    .line 402
    .restart local p1
    :pswitch_8
    instance-of v7, p1, Lgnu/math/DateTime;

    if-eqz v7, :cond_3

    .line 404
    check-cast p0, Lgnu/kawa/xml/XTimeType;

    .end local p0
    iget v7, p0, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v7}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v3

    .line 405
    .local v3, dstMask:I
    move-object v0, p1

    check-cast v0, Lgnu/math/DateTime;

    move-object v4, v0

    .line 406
    .local v4, dt:Lgnu/math/DateTime;
    invoke-virtual {v4}, Lgnu/math/DateTime;->components()I

    move-result v6

    .line 407
    .local v6, srcMask:I
    if-eq v3, v6, :cond_13

    and-int/lit8 v7, v6, 0xe

    const/16 v8, 0xe

    if-ne v7, v8, :cond_14

    .line 409
    :cond_13
    invoke-virtual {v4, v3}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v7

    goto/16 :goto_0

    .line 410
    :cond_14
    new-instance v7, Ljava/lang/ClassCastException;

    invoke-direct {v7}, Ljava/lang/ClassCastException;-><init>()V

    throw v7

    .line 416
    .end local v3           #dstMask:I
    .end local v4           #dt:Lgnu/math/DateTime;
    .end local v6           #srcMask:I
    .restart local p0
    :pswitch_9
    instance-of v7, p1, Lgnu/math/DateTime;

    if-eqz v7, :cond_3

    .line 418
    check-cast p0, Lgnu/kawa/xml/XTimeType;

    .end local p0
    iget v7, p0, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v7}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v5

    .line 419
    .local v5, mask:I
    check-cast p1, Lgnu/math/DateTime;

    .end local p1
    invoke-virtual {p1, v5}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v7

    goto/16 :goto_0

    .line 423
    .end local v5           #mask:I
    .restart local p0
    .restart local p1
    :pswitch_a
    sget-object v7, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-virtual {p0, p1, v7}, Lgnu/kawa/xml/XDataType;->castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v7

    goto/16 :goto_0

    .line 425
    :pswitch_b
    sget-object v7, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    invoke-virtual {p0, p1, v7}, Lgnu/kawa/xml/XDataType;->castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v7

    goto/16 :goto_0

    .line 427
    :pswitch_c
    sget-object v7, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-virtual {p0, p1, v7}, Lgnu/kawa/xml/XDataType;->castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v7

    goto/16 :goto_0

    .line 429
    :pswitch_d
    instance-of v7, p1, Lgnu/kawa/xml/BinaryObject;

    if-eqz v7, :cond_15

    .line 430
    new-instance v7, Lgnu/kawa/xml/Base64Binary;

    check-cast p1, Lgnu/kawa/xml/BinaryObject;

    .end local p1
    invoke-virtual {p1}, Lgnu/kawa/xml/BinaryObject;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lgnu/kawa/xml/Base64Binary;-><init>([B)V

    goto/16 :goto_0

    .line 432
    .restart local p1
    :cond_15
    :pswitch_e
    instance-of v7, p1, Lgnu/kawa/xml/BinaryObject;

    if-eqz v7, :cond_3

    .line 433
    new-instance v7, Lgnu/kawa/xml/HexBinary;

    check-cast p1, Lgnu/kawa/xml/BinaryObject;

    .end local p1
    invoke-virtual {p1}, Lgnu/kawa/xml/BinaryObject;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lgnu/kawa/xml/HexBinary;-><init>([B)V

    goto/16 :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;
    .locals 7
    .parameter "value"
    .parameter "unit"

    .prologue
    .line 440
    instance-of v6, p1, Lgnu/math/Duration;

    if-eqz v6, :cond_3

    .line 442
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    move-object v1, v0

    .line 443
    .local v1, dur:Lgnu/math/Duration;
    invoke-virtual {v1}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v6

    if-ne v6, p2, :cond_0

    move-object v6, v1

    .line 457
    .end local v1           #dur:Lgnu/math/Duration;
    .end local p0
    :goto_0
    return-object v6

    .line 445
    .restart local v1       #dur:Lgnu/math/Duration;
    .restart local p0
    :cond_0
    invoke-virtual {v1}, Lgnu/math/Duration;->getTotalMonths()I

    move-result v2

    .line 446
    .local v2, months:I
    invoke-virtual {v1}, Lgnu/math/Duration;->getTotalSeconds()J

    move-result-wide v4

    .line 447
    .local v4, seconds:J
    invoke-virtual {v1}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v3

    .line 448
    .local v3, nanos:I
    sget-object v6, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    if-ne p2, v6, :cond_1

    .line 449
    const/4 v2, 0x0

    .line 450
    :cond_1
    sget-object v6, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne p2, v6, :cond_2

    .line 452
    const-wide/16 v4, 0x0

    .line 453
    const/4 v3, 0x0

    .line 455
    :cond_2
    invoke-static {v2, v4, v5, v3, p2}, Lgnu/math/Duration;->make(IJILgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v6

    goto :goto_0

    .line 457
    .end local v1           #dur:Lgnu/math/Duration;
    .end local v2           #months:I
    .end local v3           #nanos:I
    .end local v4           #seconds:J
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/Duration;

    move-object v6, p0

    goto :goto_0
.end method

.method public castable(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 322
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    const/4 v1, 0x1

    .line 327
    :goto_0
    return v1

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, ex:Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
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

    iget-object v2, p0, Lgnu/kawa/xml/XDataType;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    return-object p1
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 1
    .parameter "other"

    .prologue
    .line 469
    if-eq p0, p1, :cond_1

    sget-object v0, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    if-eq p1, v0, :cond_1

    :cond_0
    sget-object v0, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    if-ne p0, v0, :cond_2

    sget-object v0, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    if-ne p1, v0, :cond_2

    .line 472
    :cond_1
    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    goto :goto_0
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1
    .parameter "value"

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 5
    .parameter "code"

    .prologue
    .line 193
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    .line 194
    .local v0, comp:Lgnu/expr/Compilation;
    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v0, p0, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 195
    const-string v2, "gnu.kawa.xml.XDataType"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "coerceFromObject"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 197
    .local v1, meth:Lgnu/bytecode/Method;
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 198
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 200
    iget-object v2, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    invoke-virtual {v2, p1}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 201
    return-void
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 205
    iget v0, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-super {p0, p1}, Lgnu/bytecode/Type;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .parameter "incoming"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 300
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 301
    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 4
    .parameter "incoming"
    .parameter "decl"
    .parameter "comp"

    .prologue
    .line 213
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 214
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget v1, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_2

    .line 216
    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 218
    :cond_0
    sget-object v1, Lgnu/bytecode/Type;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v0}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 219
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 220
    if-eqz p2, :cond_1

    .line 223
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 224
    sget-object v1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v0}, Lgnu/bytecode/PrimType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 225
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 230
    :cond_2
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p3, p0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 231
    if-nez p1, :cond_3

    .line 232
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 235
    :goto_1
    sget-object v1, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v2, "isInstance"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 237
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 238
    if-eqz p2, :cond_1

    .line 240
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 241
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XDataType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 242
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_1
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 253
    iget v0, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    sparse-switch v0, :sswitch_data_0

    .line 293
    invoke-super {p0, p1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    .end local p1
    :goto_0
    return v0

    .restart local p1
    :sswitch_0
    move v0, v2

    .line 256
    goto :goto_0

    .line 258
    :sswitch_1
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    if-nez v0, :cond_0

    instance-of v0, p1, Lgnu/kawa/xml/Nodes;

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    .line 259
    goto :goto_0

    :cond_1
    move v0, v2

    .line 262
    goto :goto_0

    .line 264
    :sswitch_2
    instance-of v0, p1, Lgnu/mapping/Values;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgnu/lists/SeqPosition;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 267
    :sswitch_3
    instance-of v0, p1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 272
    :sswitch_4
    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    goto :goto_0

    .line 274
    :sswitch_5
    instance-of v0, p1, Lgnu/text/Path;

    goto :goto_0

    .line 276
    :sswitch_6
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 278
    :sswitch_7
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 280
    :sswitch_8
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 282
    :sswitch_9
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-nez v0, :cond_3

    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    .line 285
    :sswitch_a
    instance-of v0, p1, Lgnu/math/Duration;

    goto :goto_0

    .line 287
    :sswitch_b
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_5

    check-cast p1, Lgnu/math/Duration;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v0

    sget-object v1, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0

    .line 290
    .restart local p1
    :sswitch_c
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_6

    check-cast p1, Lgnu/math/Duration;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v0

    sget-object v1, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    if-ne v0, v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0

    .line 253
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_9
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x1c -> :sswitch_a
        0x1d -> :sswitch_b
        0x1e -> :sswitch_c
        0x1f -> :sswitch_6
        0x21 -> :sswitch_5
        0x25 -> :sswitch_4
        0x26 -> :sswitch_3
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method public print(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "value"
    .parameter "out"

    .prologue
    .line 311
    instance-of v0, p1, Lgnu/text/Printable;

    if-eqz v0, :cond_0

    .line 312
    check-cast p1, Lgnu/text/Printable;

    .end local p1
    invoke-interface {p1, p2}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    .line 315
    :goto_0
    return-void

    .line 314
    .restart local p1
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "value"

    .prologue
    .line 478
    iget v2, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    sparse-switch v2, :sswitch_data_0

    .line 522
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "valueOf not implemented for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/xml/XDataType;->name:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    move-object v2, p1

    .line 520
    :goto_0
    return-object v2

    .line 483
    :sswitch_1
    new-instance v2, Lgnu/kawa/xml/UntypedAtomic;

    invoke-direct {v2, p1}, Lgnu/kawa/xml/UntypedAtomic;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :sswitch_2
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v2

    goto :goto_0

    .line 487
    :sswitch_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 488
    const-string v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 490
    :cond_1
    const-string v2, "false"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 491
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 492
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not a valid boolean: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :sswitch_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 496
    const-string v2, "INF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "Infinity"

    .line 498
    :cond_4
    :goto_1
    iget v2, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 497
    :cond_5
    const-string v2, "-INF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "-Infinity"

    goto :goto_1

    .line 498
    :cond_6
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_0

    .line 501
    :sswitch_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 504
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, i:I
    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    .line 506
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 507
    .local v0, ch:C
    const/16 v2, 0x65

    if-eq v0, v2, :cond_8

    const/16 v2, 0x45

    if-ne v0, v2, :cond_7

    .line 508
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not a valid decimal: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    .end local v0           #ch:C
    :cond_9
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    .end local v1           #i:I
    :sswitch_6
    invoke-static {p1}, Lgnu/math/Duration;->parseDuration(Ljava/lang/String;)Lgnu/math/Duration;

    move-result-object v2

    goto/16 :goto_0

    .line 514
    :sswitch_7
    invoke-static {p1}, Lgnu/math/Duration;->parseYearMonthDuration(Ljava/lang/String;)Lgnu/math/Duration;

    move-result-object v2

    goto/16 :goto_0

    .line 516
    :sswitch_8
    invoke-static {p1}, Lgnu/math/Duration;->parseDayTimeDuration(Ljava/lang/String;)Lgnu/math/Duration;

    move-result-object v2

    goto/16 :goto_0

    .line 518
    :sswitch_9
    invoke-static {p1}, Lgnu/kawa/xml/Base64Binary;->valueOf(Ljava/lang/String;)Lgnu/kawa/xml/Base64Binary;

    move-result-object v2

    goto/16 :goto_0

    .line 520
    :sswitch_a
    invoke-static {p1}, Lgnu/kawa/xml/HexBinary;->valueOf(Ljava/lang/String;)Lgnu/kawa/xml/HexBinary;

    move-result-object v2

    goto/16 :goto_0

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x12 -> :sswitch_4
        0x13 -> :sswitch_4
        0x1c -> :sswitch_6
        0x1d -> :sswitch_7
        0x1e -> :sswitch_8
        0x1f -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_9
        0x23 -> :sswitch_a
        0x25 -> :sswitch_1
        0x26 -> :sswitch_0
    .end sparse-switch
.end method

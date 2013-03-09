.class public Lkawa/standard/define_unit;
.super Lkawa/lang/Syntax;
.source "define_unit.java"


# static fields
.field public static final define_base_unit:Lkawa/standard/define_unit;

.field public static final define_unit:Lkawa/standard/define_unit;


# instance fields
.field base:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lkawa/standard/define_unit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkawa/standard/define_unit;-><init>(Z)V

    sput-object v0, Lkawa/standard/define_unit;->define_unit:Lkawa/standard/define_unit;

    .line 15
    sget-object v0, Lkawa/standard/define_unit;->define_unit:Lkawa/standard/define_unit;

    const-string v1, "define-unit"

    invoke-virtual {v0, v1}, Lkawa/standard/define_unit;->setName(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkawa/standard/define_unit;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkawa/standard/define_unit;-><init>(Z)V

    sput-object v0, Lkawa/standard/define_unit;->define_base_unit:Lkawa/standard/define_unit;

    .line 17
    sget-object v0, Lkawa/standard/define_unit;->define_base_unit:Lkawa/standard/define_unit;

    const-string v1, "define-base-unit"

    invoke-virtual {v0, v1}, Lkawa/standard/define_unit;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "base"

    .prologue
    .line 23
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 24
    iput-boolean p1, p0, Lkawa/standard/define_unit;->base:Z

    .line 25
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 17
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 75
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    .line 76
    .local v6, obj:Ljava/lang/Object;
    const/4 v14, 0x0

    .line 79
    .local v14, value:Lgnu/expr/Expression;
    instance-of v15, v6, Lgnu/lists/Pair;

    if-eqz v15, :cond_0

    move-object v0, v6

    check-cast v0, Lgnu/lists/Pair;

    move-object v7, v0

    .local v7, p1:Lgnu/lists/Pair;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Lgnu/expr/Declaration;

    if-nez v15, :cond_1

    .line 81
    .end local v7           #p1:Lgnu/lists/Pair;
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "invalid syntax for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/define_unit;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v15

    .line 124
    .end local p0
    :goto_0
    return-object v15

    .line 82
    .restart local v7       #p1:Lgnu/lists/Pair;
    .restart local p0
    :cond_1
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Declaration;

    .line 83
    .local v4, decl:Lgnu/expr/Declaration;
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/Symbol;

    .line 84
    .local v11, symbol:Lgnu/mapping/Symbol;
    invoke-virtual {v11}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, unit:Ljava/lang/String;
    const-string v15, "gnu.math.Unit"

    invoke-static {v15}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v13

    .line 86
    .local v13, unitType:Lgnu/bytecode/ClassType;
    invoke-virtual {v4, v13}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 87
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v14

    instance-of v15, v14, Lgnu/expr/QuoteExp;

    if-eqz v15, :cond_2

    move-object v0, v14

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v15, v0

    invoke-virtual {v15}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Lgnu/math/Unit;

    if-eqz v15, :cond_2

    .line 121
    .end local p0
    :goto_1
    new-instance v10, Lgnu/expr/SetExp;

    invoke-direct {v10, v4, v14}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 122
    .local v10, sexp:Lgnu/expr/SetExp;
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 123
    invoke-virtual {v4, v14}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    move-object v15, v10

    .line 124
    goto :goto_0

    .line 90
    .end local v10           #sexp:Lgnu/expr/SetExp;
    .restart local p0
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/define_unit;->base:Z

    move v15, v0

    if-eqz v15, :cond_4

    .line 92
    const/4 v5, 0x0

    .line 93
    .local v5, dimension:Ljava/lang/String;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v15

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 95
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual/range {p0 .. p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    :cond_3
    invoke-static {v12, v5}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v3

    .line 98
    .local v3, bunit:Lgnu/math/BaseUnit;
    new-instance v14, Lgnu/expr/QuoteExp;

    .end local v14           #value:Lgnu/expr/Expression;
    invoke-direct {v14, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 99
    .restart local v14       #value:Lgnu/expr/Expression;
    goto :goto_1

    .line 102
    .end local v3           #bunit:Lgnu/math/BaseUnit;
    .end local v5           #dimension:Ljava/lang/String;
    .restart local p0
    :cond_4
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Lgnu/lists/Pair;

    if-nez v15, :cond_5

    .line 103
    const-string v15, "missing value for define-unit"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v15

    goto :goto_0

    .line 104
    :cond_5
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    .line 105
    .local v8, p2:Lgnu/lists/Pair;
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v14

    .line 107
    instance-of v15, v14, Lgnu/expr/QuoteExp;

    if-eqz v15, :cond_6

    move-object v0, v14

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v15, v0

    invoke-virtual {v15}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, quantity:Ljava/lang/Object;
    instance-of v15, v9, Lgnu/math/Quantity;

    if-eqz v15, :cond_6

    .line 110
    new-instance v14, Lgnu/expr/QuoteExp;

    .end local v14           #value:Lgnu/expr/Expression;
    check-cast v9, Lgnu/math/Quantity;

    .end local v9           #quantity:Ljava/lang/Object;
    invoke-static {v12, v9}, Lgnu/math/Unit;->make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;

    move-result-object v15

    invoke-direct {v14, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .restart local v14       #value:Lgnu/expr/Expression;
    goto :goto_1

    .line 114
    :cond_6
    const/4 v15, 0x2

    new-array v2, v15, [Lgnu/expr/Expression;

    .line 115
    .local v2, args:[Lgnu/expr/Expression;
    const/4 v15, 0x0

    new-instance v16, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v16, v2, v15

    .line 116
    const/4 v15, 0x1

    aput-object v14, v2, v15

    .line 117
    const-string v15, "make"

    invoke-static {v13, v15, v2}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v14

    goto/16 :goto_1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 10
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    const/4 v9, 0x1

    .line 30
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_5

    .line 32
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    .line 33
    .local v2, p:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 34
    .local v3, q:Ljava/lang/Object;
    instance-of v7, v3, Lgnu/mapping/SimpleSymbol;

    if-eqz v7, :cond_5

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, name:Ljava/lang/String;
    sget-object v7, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v7, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 38
    .local v4, sym:Lgnu/mapping/Symbol;
    const/16 v7, 0x77

    invoke-virtual {p3, v4, v7, p4}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 39
    .local v0, decl:Lgnu/expr/Declaration;
    invoke-virtual {p4, v0}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 40
    invoke-static {v0, v2}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 41
    const-wide/16 v7, 0x4000

    invoke-virtual {v0, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 42
    instance-of v7, p3, Lgnu/expr/ModuleExp;

    if-eqz v7, :cond_0

    .line 43
    invoke-virtual {v0, v9}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 44
    :cond_0
    const/4 v5, 0x0

    .line 45
    .local v5, unit:Lgnu/math/Unit;
    iget-boolean v7, p0, Lkawa/standard/define_unit;->base:Z

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v7, v8, :cond_3

    .line 46
    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    invoke-static {v1, v7}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v5

    .line 61
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 62
    new-instance v7, Lgnu/expr/QuoteExp;

    invoke-direct {v7, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 63
    :cond_2
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v0, v7}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    .line 64
    invoke-static {p1, p0, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 65
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v7, v9

    .line 70
    .end local v0           #decl:Lgnu/expr/Declaration;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #p:Lgnu/lists/Pair;
    .end local v3           #q:Ljava/lang/Object;
    .end local v4           #sym:Lgnu/mapping/Symbol;
    .end local v5           #unit:Lgnu/math/Unit;
    :goto_1
    return v7

    .line 47
    .restart local v0       #decl:Lgnu/expr/Declaration;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #p:Lgnu/lists/Pair;
    .restart local v3       #q:Ljava/lang/Object;
    .restart local v4       #sym:Lgnu/mapping/Symbol;
    .restart local v5       #unit:Lgnu/math/Unit;
    :cond_3
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_1

    .line 49
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/Pair;

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 50
    .local v6, v:Ljava/lang/Object;
    iget-boolean v7, p0, Lkawa/standard/define_unit;->base:Z

    if-eqz v7, :cond_4

    instance-of v7, v6, Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    .line 57
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v5

    goto :goto_0

    .line 58
    :cond_4
    iget-boolean v7, p0, Lkawa/standard/define_unit;->base:Z

    if-nez v7, :cond_1

    instance-of v7, v6, Lgnu/math/Quantity;

    if-eqz v7, :cond_1

    .line 59
    check-cast v6, Lgnu/math/Quantity;

    .end local v6           #v:Ljava/lang/Object;
    invoke-static {v1, v6}, Lgnu/math/Unit;->make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;

    move-result-object v5

    goto :goto_0

    .line 69
    .end local v0           #decl:Lgnu/expr/Declaration;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #p:Lgnu/lists/Pair;
    .end local v3           #q:Ljava/lang/Object;
    .end local v4           #sym:Lgnu/mapping/Symbol;
    .end local v5           #unit:Lgnu/math/Unit;
    :cond_5
    const/16 v7, 0x65

    const-string v8, "missing name in define-unit"

    invoke-virtual {p4, v7, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 70
    const/4 v7, 0x0

    goto :goto_1
.end method

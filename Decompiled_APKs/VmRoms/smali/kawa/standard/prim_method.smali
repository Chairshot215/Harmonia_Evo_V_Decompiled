.class public Lkawa/standard/prim_method;
.super Lkawa/lang/Syntax;
.source "prim_method.java"


# static fields
.field public static final interface_method:Lkawa/standard/prim_method;

.field public static final op1:Lkawa/standard/prim_method;

.field private static pattern3:Lkawa/lang/Pattern;

.field private static pattern4:Lkawa/lang/Pattern;

.field public static final static_method:Lkawa/standard/prim_method;

.field public static final virtual_method:Lkawa/standard/prim_method;


# instance fields
.field op_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb6

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->virtual_method:Lkawa/standard/prim_method;

    .line 11
    sget-object v0, Lkawa/standard/prim_method;->virtual_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-virtual-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 13
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb8

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->static_method:Lkawa/standard/prim_method;

    .line 14
    sget-object v0, Lkawa/standard/prim_method;->static_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-static-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb9

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->interface_method:Lkawa/standard/prim_method;

    .line 17
    sget-object v0, Lkawa/standard/prim_method;->interface_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-interface-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lkawa/standard/prim_method;

    invoke-direct {v0}, Lkawa/standard/prim_method;-><init>()V

    sput-object v0, Lkawa/standard/prim_method;->op1:Lkawa/standard/prim_method;

    .line 20
    sget-object v0, Lkawa/standard/prim_method;->op1:Lkawa/standard/prim_method;

    const-string v1, "primitive-op1"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lkawa/lang/ListPat;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkawa/lang/ListPat;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->pattern3:Lkawa/lang/Pattern;

    .line 23
    new-instance v0, Lkawa/lang/ListPat;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lkawa/lang/ListPat;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->pattern4:Lkawa/lang/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "opcode"

    .prologue
    .line 30
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 31
    iput p1, p0, Lkawa/standard/prim_method;->op_code:I

    .line 32
    return-void
.end method


# virtual methods
.method opcode()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lkawa/standard/prim_method;->op_code:I

    return v0
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 19
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 40
    const/4 v5, 0x4

    new-array v15, v5, [Ljava/lang/Object;

    .line 41
    .local v15, match:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v0, v0, Lkawa/standard/prim_method;->op_code:I

    move v5, v0

    if-nez v5, :cond_1

    sget-object v5, Lkawa/standard/prim_method;->pattern3:Lkawa/lang/Pattern;

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v15

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 46
    :cond_0
    const/4 v5, 0x3

    aget-object v5, v15, v5

    instance-of v5, v5, Lgnu/lists/LList;

    if-nez v5, :cond_3

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing/invalid parameter list in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/prim_method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    .line 95
    .end local p0
    .end local p1
    :goto_0
    return-object v5

    .line 41
    .restart local p0
    .restart local p1
    :cond_1
    sget-object v5, Lkawa/standard/prim_method;->pattern4:Lkawa/lang/Pattern;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v15

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 43
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrong number of arguments to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/prim_method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(opcode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lkawa/standard/prim_method;->op_code:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_0

    .line 48
    :cond_3
    const/4 v5, 0x3

    aget-object v10, v15, v5

    check-cast v10, Lgnu/lists/LList;

    .line 50
    .local v10, argp:Lgnu/lists/LList;
    invoke-virtual {v10}, Lgnu/lists/LList;->size()I

    move-result v16

    .line 51
    .local v16, narg:I
    move/from16 v0, v16

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v9, v0

    .line 52
    .local v9, args:[Lgnu/bytecode/Type;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 54
    move-object v0, v10

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v18, v0

    .line 55
    .local v18, p:Lgnu/lists/Pair;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v5

    aput-object v5, v9, v14

    .line 56
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #argp:Lgnu/lists/LList;
    check-cast v10, Lgnu/lists/LList;

    .line 52
    .restart local v10       #argp:Lgnu/lists/LList;
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 58
    .end local v18           #p:Lgnu/lists/Pair;
    :cond_4
    new-instance v5, Lgnu/lists/Pair;

    const/4 v6, 0x2

    aget-object v6, v15, v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v8

    .line 60
    .local v8, rtype:Lgnu/bytecode/Type;
    move-object/from16 v0, p0

    iget v0, v0, Lkawa/standard/prim_method;->op_code:I

    move v5, v0

    if-nez v5, :cond_5

    .line 62
    const/4 v5, 0x1

    aget-object p0, v15, v5

    .end local p0
    check-cast p0, Ljava/lang/Number;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I

    move-result v17

    .line 63
    .local v17, opcode:I
    new-instance v4, Lgnu/expr/PrimProcedure;

    move-object v0, v4

    move/from16 v1, v17

    move-object v2, v8

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 95
    .end local v17           #opcode:I
    .end local p1
    .local v4, proc:Lgnu/expr/PrimProcedure;
    :goto_2
    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 67
    .end local v4           #proc:Lgnu/expr/PrimProcedure;
    .restart local p0
    .restart local p1
    :cond_5
    const/4 v6, 0x0

    .line 68
    .local v6, cl:Lgnu/bytecode/ClassType;
    check-cast p1, Lgnu/lists/Pair;

    .end local p1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v12

    .line 69
    .local v12, ctype:Lgnu/bytecode/Type;
    if-eqz v12, :cond_6

    .line 70
    invoke-virtual {v12}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v12

    .line 73
    :cond_6
    :try_start_0
    move-object v0, v12

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v6, v0

    .line 74
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_3
    const/4 v5, 0x1

    aget-object v5, v15, v5

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    aget-object v18, v15, v5

    check-cast v18, Lgnu/lists/Pair;

    .restart local v18       #p:Lgnu/lists/Pair;
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    const-string v7, "quote"

    if-ne v5, v7, :cond_7

    .line 91
    const/4 v5, 0x1

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v15, v5

    .line 92
    .end local v18           #p:Lgnu/lists/Pair;
    :cond_7
    new-instance v4, Lgnu/expr/PrimProcedure;

    move-object/from16 v0, p0

    iget v0, v0, Lkawa/standard/prim_method;->op_code:I

    move v5, v0

    const/4 v7, 0x1

    aget-object v7, v15, v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v4 .. v9}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .restart local v4       #proc:Lgnu/expr/PrimProcedure;
    goto :goto_2

    .line 76
    .end local v4           #proc:Lgnu/expr/PrimProcedure;
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 79
    .local v13, ex:Ljava/lang/Exception;
    if-nez v6, :cond_8

    .line 80
    const/16 v11, 0x65

    .line 86
    .local v11, code:C
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown class: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v7, v15, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move v1, v11

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_3

    .line 83
    .end local v11           #code:C
    :cond_8
    const/16 v11, 0x77

    .line 84
    .restart local v11       #code:C
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lgnu/bytecode/ClassType;->setExisting(Z)V

    goto :goto_4
.end method

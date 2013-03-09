.class public Lgnu/kawa/xml/MakeText;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeText.java"


# static fields
.field public static final makeText:Lgnu/kawa/xml/MakeText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/MakeText;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeText;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeText;->makeText:Lgnu/kawa/xml/MakeText;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method

.method public static text$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 4
    .parameter "arg"
    .parameter "ctx"

    .prologue
    .line 28
    if-eqz p0, :cond_0

    instance-of v3, p0, Lgnu/mapping/Values;

    if-eqz v3, :cond_1

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 31
    .local v2, saved:Lgnu/lists/Consumer;
    invoke-static {p1}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 34
    .local v1, out:Lgnu/lists/Consumer;
    :try_start_0
    invoke-static {p0, v1}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {v2, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v2, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v3
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/kawa/xml/MakeText;->text$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 45
    return-void
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "arg"

    .prologue
    .line 19
    if-eqz p1, :cond_0

    instance-of v2, p1, Lgnu/mapping/Values;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, p1

    .line 23
    :goto_0
    return-object v2

    .line 21
    :cond_1
    new-instance v1, Lgnu/xml/NodeTree;

    invoke-direct {v1}, Lgnu/xml/NodeTree;-><init>()V

    .line 22
    .local v1, node:Lgnu/xml/NodeTree;
    new-instance v2, Lgnu/xml/XMLFilter;

    invoke-direct {v2, v1}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    invoke-static {p1, v2}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 23
    invoke-static {v1}, Lgnu/kawa/xml/KText;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v2

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 51
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 52
    return-void
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 20
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 58
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    .line 59
    .local v4, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 60
    .local v3, args:[Lgnu/expr/Expression;
    const/16 v16, 0x0

    aget-object v13, v3, v16

    .line 61
    .local v13, texp:Lgnu/expr/Expression;
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v6

    .line 62
    .local v6, cvar:Lgnu/bytecode/Variable;
    move-object v0, v13

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 64
    move-object v0, v13

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v14, v0

    invoke-virtual {v14}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 65
    .local v14, tval:Ljava/lang/Object;
    move-object v0, v14

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 67
    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 68
    .local v12, str:Ljava/lang/String;
    invoke-static {v12}, Lgnu/bytecode/CodeAttr;->calculateSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, segments:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .line 70
    .local v7, numSegments:I
    invoke-virtual {v6}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ClassType;

    .line 71
    .local v5, ctype:Lgnu/bytecode/ClassType;
    const-string v16, "write"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget-object v19, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v19, v17, v18

    move-object v0, v5

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v15

    .line 73
    .local v15, writer:Lgnu/bytecode/Method;
    const/4 v10, 0x0

    .line 74
    .local v10, segStart:I
    const/4 v8, 0x0

    .local v8, seg:I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 76
    invoke-virtual {v4, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 77
    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v16

    add-int v9, v10, v16

    .line 78
    .local v9, segEnd:I
    invoke-virtual {v12, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4, v15}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 80
    move v10, v9

    .line 74
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 85
    .end local v5           #ctype:Lgnu/bytecode/ClassType;
    .end local v7           #numSegments:I
    .end local v8           #seg:I
    .end local v9           #segEnd:I
    .end local v10           #segStart:I
    .end local v11           #segments:Ljava/lang/String;
    .end local v12           #str:Ljava/lang/String;
    .end local v14           #tval:Ljava/lang/Object;
    .end local v15           #writer:Lgnu/bytecode/Method;
    :cond_0
    sget-object v16, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object v0, v13

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 86
    invoke-virtual {v4, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 87
    const-string v16, "gnu.xml.TextUtils"

    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v16

    const-string v17, "textValue"

    const/16 v18, 0x2

    invoke-virtual/range {v16 .. v18}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 89
    :cond_1
    return-void
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x1001

    return v0
.end method

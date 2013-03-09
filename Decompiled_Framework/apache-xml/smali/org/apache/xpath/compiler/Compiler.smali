.class public Lorg/apache/xpath/compiler/Compiler;
.super Lorg/apache/xpath/compiler/OpMap;
.source "Compiler.java"


# static fields
.field private static final DEBUG:Z

.field private static s_nextMethodId:J


# instance fields
.field private locPathDepth:I

.field private m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

.field m_errorHandler:Ljavax/xml/transform/ErrorListener;

.field private m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

.field m_locator:Ljavax/xml/transform/SourceLocator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xpath/compiler/OpMap;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    iput-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    iput-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    iput-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xpath/compiler/OpMap;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    iput-object p1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    iput-object p2, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    iput-object p3, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    return-void
.end method

.method private compileExtension(I)Lorg/apache/xpath/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v6

    add-int/2addr v6, p1

    add-int/lit8 v0, v6, -0x1

    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v6

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v6

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    new-instance v1, Lorg/apache/xpath/functions/FuncExtFunction;

    invoke-direct {p0}, Lorg/apache/xpath/compiler/Compiler;->getNextMethodId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v2, v6}, Lorg/apache/xpath/functions/FuncExtFunction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v4

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v6

    invoke-virtual {v1, v6, v3}, Lorg/apache/xpath/functions/FuncExtFunction;->setArg(Lorg/apache/xpath/Expression;I)V
    :try_end_0
    .catch Lorg/apache/xpath/functions/WrongNumberArgsException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    :cond_0
    return-object v1
.end method

.method private compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/operations/Operation;->setLeftRight(Lorg/apache/xpath/Expression;Lorg/apache/xpath/Expression;)V

    return-object p1
.end method

.method private compilePredicates(I[Lorg/apache/xpath/Expression;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1d

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->predicate(I)Lorg/apache/xpath/Expression;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xpath/operations/UnaryOperation;->setRight(Lorg/apache/xpath/Expression;)V

    return-object p1
.end method

.method private declared-synchronized getNextMethodId()J
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    :cond_0
    sget-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected and(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/And;

    invoke-direct {v0}, Lorg/apache/xpath/operations/And;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected arg(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public assertion(ZLjava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method protected bool(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Bool;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Bool;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public compile(I)Lorg/apache/xpath/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    const-string v2, "ER_UNKNOWN_OPCODE"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :pswitch_0
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->or(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->and(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->notequals(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->equals(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->lte(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->lt(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->gte(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->gt(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->plus(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->minus(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->mult(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->div(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->mod(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->neg(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->string(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->bool(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->number(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->union(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_13
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->literal(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_14
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->variable(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_15
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->group(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_16
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->numberlit(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_17
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->arg(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_18
    invoke-direct {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileExtension(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_0

    :pswitch_19
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileFunction(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->locationPath(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1b
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_1c
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->matchPattern(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->locationPathPattern(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1e
    const-string v2, "ER_UNKNOWN_OPCODE"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "quo"

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_1e
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_19
        :pswitch_17
        :pswitch_16
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method compileFunction(I)Lorg/apache/xpath/Expression;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v1, 0x0

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v7

    add-int/2addr v7, p1

    add-int/lit8 v0, v7, -0x1

    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    add-int/lit8 p1, p1, 0x1

    const/4 v7, -0x1

    if-eq v7, v2, :cond_2

    iget-object v7, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v7, v2}, Lorg/apache/xpath/compiler/FunctionTable;->getFunction(I)Lorg/apache/xpath/functions/Function;

    move-result-object v1

    instance-of v7, v1, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    if-eqz v7, :cond_0

    move-object v7, v1

    check-cast v7, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    iget-object v8, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v7, v8}, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->setFunctionTable(Lorg/apache/xpath/compiler/FunctionTable;)V

    :cond_0
    invoke-virtual {v1, p0}, Lorg/apache/xpath/functions/Function;->postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V

    const/4 v3, 0x0

    move v5, p1

    :goto_0
    if-ge v5, v0, :cond_1

    :try_start_0
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v7

    invoke-virtual {v1, v7, v3}, Lorg/apache/xpath/functions/Function;->setArg(Lorg/apache/xpath/Expression;I)V

    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Lorg/apache/xpath/functions/Function;->checkNumberArgs(I)V
    :try_end_0
    .catch Lorg/apache/xpath/functions/WrongNumberArgsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v6

    iget-object v7, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v7, v2}, Lorg/apache/xpath/compiler/FunctionTable;->getFunctionName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v8, Ljavax/xml/transform/TransformerException;

    const-string v9, "ER_ONLY_ALLOWS"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v6}, Lorg/apache/xpath/functions/WrongNumberArgsException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v8, v9, v10}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v7, v8}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_1

    :cond_2
    const-string v7, "ER_FUNCTION_TOKEN_NOT_FOUND"

    invoke-virtual {p0, v7, v1}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public countPredicates(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1d

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected div(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Div;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Div;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected equals(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Equals;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Equals;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v2, Ljavax/xml/transform/TransformerException;

    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v2, v0, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    :cond_0
    new-instance v2, Ljavax/xml/transform/TransformerException;

    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    check-cast v1, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v2, v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v2
.end method

.method public getCompiledPredicates(I)[Lorg/apache/xpath/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [Lorg/apache/xpath/Expression;

    invoke-direct {p0, p1, v1}, Lorg/apache/xpath/compiler/Compiler;->compilePredicates(I[Lorg/apache/xpath/Expression;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    return-object v0
.end method

.method public getLocationPathDepth()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    return v0
.end method

.method public getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    return-object v0
.end method

.method public getWhatToShow(I)I
    .locals 7

    const/16 v2, 0x1000

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v0

    add-int/lit8 v6, p1, 0x3

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v2, v4

    :goto_0
    :pswitch_0
    :sswitch_0
    return v2

    :sswitch_1
    const/16 v2, 0x80

    goto :goto_0

    :sswitch_2
    const/16 v2, 0xc

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x40

    goto :goto_0

    :sswitch_4
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_0

    const/16 v2, -0x503

    goto :goto_0

    :pswitch_2
    move v2, v3

    goto :goto_0

    :pswitch_3
    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, -0x3

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x500

    goto :goto_0

    :sswitch_6
    const/high16 v2, 0x1

    goto :goto_0

    :sswitch_7
    sparse-switch v0, :sswitch_data_1

    move v2, v5

    goto :goto_0

    :sswitch_8
    move v2, v3

    goto :goto_0

    :sswitch_9
    move v2, v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x23 -> :sswitch_5
        0x406 -> :sswitch_1
        0x407 -> :sswitch_2
        0x408 -> :sswitch_3
        0x409 -> :sswitch_4
        0x40a -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x27 -> :sswitch_8
        0x31 -> :sswitch_0
        0x33 -> :sswitch_8
        0x34 -> :sswitch_9
        0x35 -> :sswitch_9
    .end sparse-switch
.end method

.method protected group(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected gt(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Gt;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Gt;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected gte(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Gte;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Gte;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected literal(I)Lorg/apache/xpath/Expression;
    .locals 2

    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XString;

    return-object v0
.end method

.method public locationPath(I)Lorg/apache/xpath/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    :try_start_0
    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, p1, v1}, Lorg/apache/xpath/axes/WalkerFactory;->newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget v2, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    throw v1
.end method

.method public locationPathPattern(I)Lorg/apache/xpath/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xpath/compiler/Compiler;->stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v0

    return-object v0
.end method

.method protected lt(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Lt;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Lt;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected lte(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Lte;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Lte;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected matchPattern(I)Lorg/apache/xpath/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v5, 0x1f

    iget v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    move v1, p1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    iget v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    :goto_1
    return-object v3

    :cond_1
    :try_start_1
    new-instance v3, Lorg/apache/xpath/patterns/UnionPattern;

    invoke-direct {v3}, Lorg/apache/xpath/patterns/UnionPattern;-><init>()V

    new-array v2, v0, [Lorg/apache/xpath/patterns/StepPattern;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v4

    check-cast v4, Lorg/apache/xpath/patterns/StepPattern;

    aput-object v4, v2, v0

    move p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v2}, Lorg/apache/xpath/patterns/UnionPattern;->setPatterns([Lorg/apache/xpath/patterns/StepPattern;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    goto :goto_1

    :catchall_0
    move-exception v4

    iget v5, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    throw v4
.end method

.method protected minus(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Minus;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Minus;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected mod(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Mod;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Mod;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected mult(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Mult;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Mult;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected neg(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Neg;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Neg;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected notequals(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/NotEquals;

    invoke-direct {v0}, Lorg/apache/xpath/operations/NotEquals;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected number(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Number;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Number;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected numberlit(I)Lorg/apache/xpath/Expression;
    .locals 2

    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XNumber;

    return-object v0
.end method

.method protected or(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Or;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Or;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected plus(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/Plus;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Plus;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public predicate(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    return-void
.end method

.method protected stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move v11, p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v12

    const/4 v2, -0x1

    if-ne v2, v12, :cond_1

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v9

    sparse-switch v12, :sswitch_data_0

    const-string v2, "ER_UNKNOWN_MATCH_OPERATION"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x0

    goto :goto_0

    :sswitch_0
    const/4 v7, 0x0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v8

    new-instance v1, Lorg/apache/xpath/patterns/FunctionPattern;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileFunction(I)Lorg/apache/xpath/Expression;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xpath/patterns/FunctionPattern;-><init>(Lorg/apache/xpath/Expression;II)V

    :goto_1
    add-int v2, p1, v8

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    if-nez p3, :cond_3

    :goto_2
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v9, v2, v1}, Lorg/apache/xpath/compiler/Compiler;->stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v10

    if-nez v10, :cond_0

    move-object v10, v1

    goto :goto_0

    :sswitch_1
    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v8

    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    move-result p1

    new-instance v1, Lorg/apache/xpath/patterns/StepPattern;

    const/16 v2, 0x500

    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v8

    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    move-result p1

    new-instance v1, Lorg/apache/xpath/patterns/StepPattern;

    const/4 v2, 0x2

    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v8

    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    move-result p1

    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v13

    const/16 v2, 0x500

    if-ne v2, v13, :cond_2

    const/4 v7, 0x0

    :cond_2
    new-instance v1, Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v2

    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v8

    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    move-result p1

    new-instance v1, Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v2

    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v11}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x3

    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_4
    .end sparse-switch
.end method

.method protected string(I)Lorg/apache/xpath/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/operations/String;

    invoke-direct {v0}, Lorg/apache/xpath/operations/String;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected union(I)Lorg/apache/xpath/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xpath/axes/UnionPathIterator;->createUnionIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    return-object v0

    :catchall_0
    move-exception v0

    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    throw v0
.end method

.method protected variable(I)Lorg/apache/xpath/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v4, Lorg/apache/xpath/operations/Variable;

    invoke-direct {v4}, Lorg/apache/xpath/operations/Variable;-><init>()V

    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    const/4 v5, -0x2

    if-ne v5, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lorg/apache/xml/utils/QName;

    invoke-direct {v3, v1, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    return-object v4

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, v5

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v2, Ljavax/xml/transform/TransformerException;

    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v2, v0, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

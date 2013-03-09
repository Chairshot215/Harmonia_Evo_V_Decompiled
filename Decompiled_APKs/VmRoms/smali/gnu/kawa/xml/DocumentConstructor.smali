.class public Lgnu/kawa/xml/DocumentConstructor;
.super Lgnu/kawa/xml/NodeConstructor;
.source "DocumentConstructor.java"


# static fields
.field public static final documentConstructor:Lgnu/kawa/xml/DocumentConstructor;

.field static final endDocumentMethod:Lgnu/bytecode/Method;

.field static final startDocumentMethod:Lgnu/bytecode/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    new-instance v0, Lgnu/kawa/xml/DocumentConstructor;

    invoke-direct {v0}, Lgnu/kawa/xml/DocumentConstructor;-><init>()V

    sput-object v0, Lgnu/kawa/xml/DocumentConstructor;->documentConstructor:Lgnu/kawa/xml/DocumentConstructor;

    .line 57
    sget-object v0, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string v1, "startDocument"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/DocumentConstructor;->startDocumentMethod:Lgnu/bytecode/Method;

    .line 59
    sget-object v0, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string v1, "endDocument"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/DocumentConstructor;->endDocumentMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .parameter "ctx"

    .prologue
    .line 18
    iget-object v3, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 19
    .local v3, saved:Lgnu/lists/Consumer;
    invoke-static {p1}, Lgnu/kawa/xml/DocumentConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v2

    .line 22
    .local v2, out:Lgnu/lists/Consumer;
    :try_start_0
    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 23
    .local v1, endMarker:Ljava/lang/String;
    invoke-interface {v2}, Lgnu/lists/Consumer;->startDocument()V

    .line 26
    :goto_0
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, arg:Ljava/lang/Object;
    if-ne v0, v1, :cond_0

    .line 34
    invoke-interface {v2}, Lgnu/lists/Consumer;->endDocument()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {v3, p1}, Lgnu/kawa/xml/DocumentConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 40
    return-void

    .line 29
    :cond_0
    :try_start_1
    instance-of v4, v0, Lgnu/lists/Consumable;

    if-eqz v4, :cond_1

    .line 30
    check-cast v0, Lgnu/lists/Consumable;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-interface {v0, v2}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    .end local v1           #endMarker:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-static {v3, p1}, Lgnu/kawa/xml/DocumentConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v4

    .line 32
    .restart local v0       #arg:Ljava/lang/Object;
    .restart local v1       #endMarker:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-interface {v2, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 6
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 45
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v2

    .line 46
    .local v2, consumer:Lgnu/bytecode/Variable;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 47
    .local v0, args:[Lgnu/expr/Expression;
    array-length v4, v0

    .line 48
    .local v4, nargs:I
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 49
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 50
    sget-object v5, Lgnu/kawa/xml/DocumentConstructor;->startDocumentMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 51
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 52
    aget-object v5, v0, v3

    invoke-static {v5, p2, p3}, Lgnu/kawa/xml/DocumentConstructor;->compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 54
    sget-object v5, Lgnu/kawa/xml/DocumentConstructor;->endDocumentMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 55
    return-void
.end method

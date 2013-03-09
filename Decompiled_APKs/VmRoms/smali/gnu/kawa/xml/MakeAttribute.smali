.class public Lgnu/kawa/xml/MakeAttribute;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeAttribute.java"


# static fields
.field static final endAttributeMethod:Lgnu/bytecode/Method;

.field public static final makeAttribute:Lgnu/kawa/xml/MakeAttribute;

.field public static final makeAttributeExp:Lgnu/expr/QuoteExp;

.field static final startAttributeMethod:Lgnu/bytecode/Method;

.field static final typeMakeAttribute:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/xml/MakeAttribute;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeAttribute;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    .line 13
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    .line 66
    const-string v0, "gnu.kawa.xml.MakeAttribute"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->typeMakeAttribute:Lgnu/bytecode/ClassType;

    .line 68
    sget-object v0, Lgnu/kawa/xml/MakeAttribute;->typeMakeAttribute:Lgnu/bytecode/ClassType;

    const-string v1, "startAttribute"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->startAttributeMethod:Lgnu/bytecode/Method;

    .line 70
    sget-object v0, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string v1, "endAttribute"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->endAttributeMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method

.method public static startAttribute(Lgnu/lists/Consumer;Ljava/lang/Object;)V
    .locals 0
    .parameter "out"
    .parameter "type"

    .prologue
    .line 19
    invoke-interface {p0, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6
    .parameter "ctx"

    .prologue
    .line 24
    iget-object v3, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 25
    .local v3, saved:Lgnu/lists/Consumer;
    invoke-static {p1}, Lgnu/kawa/xml/MakeAttribute;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v2

    .line 28
    .local v2, out:Lgnu/lists/Consumer;
    :try_start_0
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v4

    .line 29
    .local v4, type:Ljava/lang/Object;
    invoke-static {v2, v4}, Lgnu/kawa/xml/MakeAttribute;->startAttribute(Lgnu/lists/Consumer;Ljava/lang/Object;)V

    .line 30
    sget-object v1, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    .line 33
    .local v1, endMarker:Lgnu/expr/Special;
    :goto_0
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, arg:Ljava/lang/Object;
    if-ne v0, v1, :cond_0

    .line 41
    invoke-interface {v2}, Lgnu/lists/Consumer;->endAttribute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {v3, p1}, Lgnu/kawa/xml/MakeAttribute;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 47
    return-void

    .line 36
    :cond_0
    :try_start_1
    instance-of v5, v0, Lgnu/lists/Consumable;

    if-eqz v5, :cond_1

    .line 37
    check-cast v0, Lgnu/lists/Consumable;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-interface {v0, v2}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    .end local v1           #endMarker:Lgnu/expr/Special;
    .end local v4           #type:Ljava/lang/Object;
    :catchall_0
    move-exception v5

    invoke-static {v3, p1}, Lgnu/kawa/xml/MakeAttribute;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v5

    .line 39
    .restart local v0       #arg:Ljava/lang/Object;
    .restart local v1       #endMarker:Lgnu/expr/Special;
    .restart local v4       #type:Ljava/lang/Object;
    :cond_1
    :try_start_2
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 7
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 52
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v2

    .line 53
    .local v2, consumer:Lgnu/bytecode/Variable;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 54
    .local v0, args:[Lgnu/expr/Expression;
    array-length v4, v0

    .line 55
    .local v4, nargs:I
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 56
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 57
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 58
    const/4 v5, 0x0

    aget-object v5, v0, v5

    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, p2, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 60
    sget-object v5, Lgnu/kawa/xml/MakeAttribute;->startAttributeMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 61
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 62
    aget-object v5, v0, v3

    invoke-static {v5, p2, p3}, Lgnu/kawa/xml/MakeAttribute;->compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_0
    sget-object v5, Lgnu/kawa/xml/MakeAttribute;->endAttributeMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 64
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 75
    sget-object v0, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 15
    const/16 v0, -0xfff

    return v0
.end method

.class public Lgnu/kawa/xml/SortNodes;
.super Lgnu/mapping/Procedure1;
.source "SortNodes.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final canonicalizeMethod:Lgnu/bytecode/Method;

.field public static final makeSortedNodesMethod:Lgnu/bytecode/Method;

.field public static final sortNodes:Lgnu/kawa/xml/SortNodes;

.field public static final typeSortedNodes:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lgnu/kawa/xml/SortNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortNodes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/SortNodes;->sortNodes:Lgnu/kawa/xml/SortNodes;

    .line 53
    const-string v0, "gnu.kawa.xml.SortedNodes"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->typeSortedNodes:Lgnu/bytecode/ClassType;

    .line 55
    sget-object v0, Lgnu/kawa/xml/SortNodes;->typeSortedNodes:Lgnu/bytecode/ClassType;

    const-string v1, "<init>"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->makeSortedNodesMethod:Lgnu/bytecode/Method;

    .line 57
    sget-object v0, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v1, "canonicalize"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->canonicalizeMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "values"

    .prologue
    .line 18
    new-instance v0, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 19
    .local v0, nodes:Lgnu/kawa/xml/SortedNodes;
    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 20
    iget v1, v0, Lgnu/kawa/xml/SortedNodes;->count:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    move-object v1, v0

    .line 25
    :goto_0
    return-object v1

    .line 22
    :cond_0
    iget v1, v0, Lgnu/kawa/xml/SortedNodes;->count:I

    if-nez v1, :cond_1

    .line 23
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/SortedNodes;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 30
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 31
    .local v0, args:[Lgnu/expr/Expression;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p2, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v2, :cond_1

    .line 32
    :cond_0
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 46
    :goto_0
    return-void

    .line 36
    :cond_1
    instance-of v2, p3, Lgnu/expr/ConsumerTarget;

    if-nez v2, :cond_2

    instance-of v2, p3, Lgnu/expr/StackTarget;

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    sget-object v3, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    :cond_2
    const/4 v1, 0x0

    .line 42
    .local v1, resultMethod:Lgnu/bytecode/Method;
    :goto_1
    const/4 v2, 0x0

    aget-object v2, v0, v2

    sget-object v3, Lgnu/kawa/xml/SortNodes;->makeSortedNodesMethod:Lgnu/bytecode/Method;

    invoke-static {v2, p2, p3, v3, v1}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 41
    .end local v1           #resultMethod:Lgnu/bytecode/Method;
    :cond_3
    sget-object v1, Lgnu/kawa/xml/SortNodes;->canonicalizeMethod:Lgnu/bytecode/Method;

    .restart local v1       #resultMethod:Lgnu/bytecode/Method;
    goto :goto_1
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 50
    sget-object v0, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object v0
.end method

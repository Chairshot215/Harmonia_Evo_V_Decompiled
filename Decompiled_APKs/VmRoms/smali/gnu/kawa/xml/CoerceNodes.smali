.class public Lgnu/kawa/xml/CoerceNodes;
.super Lgnu/mapping/Procedure1;
.source "CoerceNodes.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final coerceNodes:Lgnu/kawa/xml/CoerceNodes;

.field public static final makeNodesMethod:Lgnu/bytecode/Method;

.field public static final typeNodes:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lgnu/kawa/xml/CoerceNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/CoerceNodes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/CoerceNodes;->coerceNodes:Lgnu/kawa/xml/CoerceNodes;

    .line 38
    const-string v0, "gnu.kawa.xml.Nodes"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    .line 40
    sget-object v0, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    const-string v1, "<init>"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/CoerceNodes;->makeNodesMethod:Lgnu/bytecode/Method;

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
    .locals 1
    .parameter "values"

    .prologue
    .line 18
    new-instance v0, Lgnu/kawa/xml/Nodes;

    invoke-direct {v0}, Lgnu/kawa/xml/Nodes;-><init>()V

    .line 19
    .local v0, nodes:Lgnu/kawa/xml/Nodes;
    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 20
    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 25
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 26
    .local v0, args:[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 27
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sget-object v2, Lgnu/kawa/xml/CoerceNodes;->makeNodesMethod:Lgnu/bytecode/Method;

    const/4 v3, 0x0

    invoke-static {v1, p2, p3, v2, v3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 35
    sget-object v0, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    return-object v0
.end method

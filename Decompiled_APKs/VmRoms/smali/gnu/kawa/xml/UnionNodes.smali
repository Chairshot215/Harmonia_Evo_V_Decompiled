.class public Lgnu/kawa/xml/UnionNodes;
.super Lgnu/mapping/Procedure2;
.source "UnionNodes.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final unionNodes:Lgnu/kawa/xml/UnionNodes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lgnu/kawa/xml/UnionNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/UnionNodes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/UnionNodes;->unionNodes:Lgnu/kawa/xml/UnionNodes;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "vals1"
    .parameter "vals2"

    .prologue
    .line 20
    new-instance v0, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 21
    .local v0, nodes:Lgnu/kawa/xml/SortedNodes;
    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 22
    invoke-static {p2, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 23
    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 28
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 29
    .end local p1
    .local v0, exp:Lgnu/expr/ApplyExp;
    sget-object v1, Lgnu/kawa/xml/SortNodes;->makeSortedNodesMethod:Lgnu/bytecode/Method;

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    .line 31
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 35
    sget-object v0, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object v0
.end method

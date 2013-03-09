.class public Lgnu/kawa/xml/CompileXmlFunctions;
.super Ljava/lang/Object;
.source "CompileXmlFunctions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateApplyMakeUnescapedData(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 13
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 14
    .local v0, args:[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    instance-of v1, v1, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    .line 15
    new-instance v1, Lgnu/expr/QuoteExp;

    check-cast p3, Lgnu/kawa/xml/MakeUnescapedData;

    .end local p3
    aget-object p0, v0, v3

    .end local p0
    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Lgnu/kawa/xml/MakeUnescapedData;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 16
    :goto_0
    return-object v1

    .restart local p0
    .restart local p3
    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method public static validateApplyTreeScanner(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 23
    check-cast p3, Lgnu/kawa/xml/TreeScanner;

    .end local p3
    iget-object v0, p3, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    .line 24
    .local v0, type:Lgnu/lists/NodePredicate;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lgnu/bytecode/Type;

    if-eqz v1, :cond_0

    .line 25
    check-cast v0, Lgnu/bytecode/Type;

    .end local v0           #type:Lgnu/lists/NodePredicate;
    invoke-static {v0}, Lgnu/kawa/xml/NodeSetType;->getInstance(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 26
    :cond_0
    return-object p0
.end method

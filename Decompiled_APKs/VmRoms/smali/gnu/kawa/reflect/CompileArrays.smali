.class public Lgnu/kawa/reflect/CompileArrays;
.super Ljava/lang/Object;
.source "CompileArrays.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field public code:C

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;C)V
    .locals 0
    .parameter "proc"
    .parameter "code"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    .line 15
    iput-char p2, p0, Lgnu/kawa/reflect/CompileArrays;->code:C

    .line 16
    return-void
.end method

.method public static compileArrayGet(Lgnu/kawa/reflect/ArrayGet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5
    .parameter "proc"
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 60
    iget-object v2, p0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    .line 61
    .local v2, element_type:Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 62
    .local v0, args:[Lgnu/expr/Expression;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v2}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 63
    const/4 v3, 0x1

    aget-object v3, v0, v3

    sget-object v4, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 64
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 65
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    .line 66
    invoke-virtual {p3, p2, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 67
    return-void
.end method

.method public static compileArrayLength(Lgnu/kawa/reflect/ArrayLength;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .parameter "proc"
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 94
    iget-object v1, p0, Lgnu/kawa/reflect/ArrayLength;->element_type:Lgnu/bytecode/Type;

    .line 95
    .local v1, element_type:Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 96
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 97
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 98
    sget-object v2, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p3, p2, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 99
    return-void
.end method

.method public static compileArrayNew(Lgnu/kawa/reflect/ArrayNew;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .parameter "proc"
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 84
    iget-object v1, p0, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    .line 85
    .local v1, element_type:Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 86
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 87
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 88
    invoke-static {v1}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 89
    return-void
.end method

.method public static compileArraySet(Lgnu/kawa/reflect/ArraySet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .parameter "proc"
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 72
    iget-object v1, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    .line 73
    .local v1, element_type:Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 74
    .local v0, args:[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v1}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 75
    const/4 v2, 0x1

    aget-object v2, v0, v2

    sget-object v3, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 76
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v2, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 77
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 78
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p2, v2, p3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 79
    return-void
.end method

.method public static getForArrayGet(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 2
    .parameter "proc"

    .prologue
    .line 20
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    check-cast p0, Lgnu/mapping/Procedure;

    .end local p0
    const/16 v1, 0x47

    invoke-direct {v0, p0, v1}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static getForArrayLength(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 2
    .parameter "proc"

    .prologue
    .line 30
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    check-cast p0, Lgnu/mapping/Procedure;

    .end local p0
    const/16 v1, 0x4c

    invoke-direct {v0, p0, v1}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static getForArrayNew(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 2
    .parameter "proc"

    .prologue
    .line 35
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    check-cast p0, Lgnu/mapping/Procedure;

    .end local p0
    const/16 v1, 0x4e

    invoke-direct {v0, p0, v1}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static getForArraySet(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .locals 2
    .parameter "proc"

    .prologue
    .line 25
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    check-cast p0, Lgnu/mapping/Procedure;

    .end local p0
    const/16 v1, 0x53

    invoke-direct {v0, p0, v1}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static validateArrayGet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 121
    check-cast p3, Lgnu/kawa/reflect/ArrayGet;

    .end local p3
    iget-object v0, p3, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 122
    return-object p0
.end method

.method public static validateArrayLength(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 113
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 114
    return-object p0
.end method

.method public static validateArrayNew(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 105
    check-cast p3, Lgnu/kawa/reflect/ArrayNew;

    .end local p3
    iget-object v0, p3, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 106
    return-object p0
.end method

.method public static validateArraySet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 129
    sget-object v0, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 130
    return-object p0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 40
    iget-char v0, p0, Lgnu/kawa/reflect/CompileArrays;->code:C

    sparse-switch v0, :sswitch_data_0

    .line 52
    iget-object p0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    .end local p0
    check-cast p0, Lgnu/kawa/reflect/ArrayLength;

    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArrayLength(Lgnu/kawa/reflect/ArrayLength;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 53
    :goto_0
    return-void

    .line 43
    .restart local p0
    :sswitch_0
    iget-object p0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    .end local p0
    check-cast p0, Lgnu/kawa/reflect/ArrayNew;

    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArrayNew(Lgnu/kawa/reflect/ArrayNew;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 46
    .restart local p0
    :sswitch_1
    iget-object p0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    .end local p0
    check-cast p0, Lgnu/kawa/reflect/ArrayGet;

    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArrayGet(Lgnu/kawa/reflect/ArrayGet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 49
    .restart local p0
    :sswitch_2
    iget-object p0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    .end local p0
    check-cast p0, Lgnu/kawa/reflect/ArraySet;

    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArraySet(Lgnu/kawa/reflect/ArraySet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_1
        0x4e -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

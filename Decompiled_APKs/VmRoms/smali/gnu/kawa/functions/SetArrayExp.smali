.class Lgnu/kawa/functions/SetArrayExp;
.super Lgnu/expr/ApplyExp;
.source "CompilationHelpers.java"


# static fields
.field public static final typeSetArray:Lgnu/bytecode/ClassType;


# instance fields
.field elementType:Lgnu/bytecode/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-string v0, "gnu.kawa.functions.SetArray"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/SetArrayExp;->typeSetArray:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/bytecode/ArrayType;)V
    .locals 5
    .parameter "array"
    .parameter "arrayType"

    .prologue
    .line 177
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    const/4 v1, 0x2

    new-array v1, v1, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v4, Lgnu/kawa/functions/SetArrayExp;->typeSetArray:Lgnu/bytecode/ClassType;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 178
    invoke-virtual {p2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/functions/SetArrayExp;->elementType:Lgnu/bytecode/Type;

    .line 179
    return-void
.end method


# virtual methods
.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 8
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "decl"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 184
    invoke-virtual {p1, p2}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 185
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 186
    .local v0, args:[Lgnu/expr/Expression;
    array-length v4, v0

    if-ne v4, v7, :cond_0

    .line 188
    invoke-virtual {p0}, Lgnu/kawa/functions/SetArrayExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    aget-object v2, v4, v5

    .line 189
    .local v2, array:Lgnu/expr/Expression;
    const/4 v4, 0x3

    new-array v3, v4, [Lgnu/expr/Expression;

    .line 190
    .local v3, xargs:[Lgnu/expr/Expression;
    aput-object v2, v3, v6

    .line 191
    aget-object v4, v0, v6

    aput-object v4, v3, v5

    .line 192
    aget-object v4, v0, v5

    aput-object v4, v3, v7

    .line 193
    new-instance v1, Lgnu/kawa/reflect/ArraySet;

    iget-object v4, p0, Lgnu/kawa/functions/SetArrayExp;->elementType:Lgnu/bytecode/Type;

    invoke-direct {v1, v4}, Lgnu/kawa/reflect/ArraySet;-><init>(Lgnu/bytecode/Type;)V

    .line 194
    .local v1, arrSetter:Lgnu/kawa/reflect/ArraySet;
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, v1, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, v4, p3}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    .line 196
    .end local v1           #arrSetter:Lgnu/kawa/reflect/ArraySet;
    .end local v2           #array:Lgnu/expr/Expression;
    .end local v3           #xargs:[Lgnu/expr/Expression;
    :goto_0
    return-object v4

    :cond_0
    move-object v4, p1

    goto :goto_0
.end method

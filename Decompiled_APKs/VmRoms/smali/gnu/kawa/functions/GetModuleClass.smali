.class public Lgnu/kawa/functions/GetModuleClass;
.super Lgnu/mapping/ProcedureN;
.source "GetModuleClass.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

.field public static final getModuleClass:Lgnu/kawa/functions/GetModuleClass;

.field public static final getModuleUri:Lgnu/kawa/functions/GetModuleClass;

.field public static final getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

.field static final maker:Lgnu/bytecode/Method;

.field static final typeURLPath:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lgnu/kawa/functions/GetModuleClass;

    invoke-direct {v0}, Lgnu/kawa/functions/GetModuleClass;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleClass:Lgnu/kawa/functions/GetModuleClass;

    .line 22
    new-instance v0, Lgnu/kawa/functions/GetModuleClass;

    invoke-direct {v0}, Lgnu/kawa/functions/GetModuleClass;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleUri:Lgnu/kawa/functions/GetModuleClass;

    .line 29
    new-instance v0, Lgnu/kawa/functions/GetModuleClass;

    invoke-direct {v0}, Lgnu/kawa/functions/GetModuleClass;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    .line 32
    const-string v0, "gnu.text.URLPath"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->typeURLPath:Lgnu/bytecode/ClassType;

    .line 33
    sget-object v0, Lgnu/kawa/functions/GetModuleClass;->typeURLPath:Lgnu/bytecode/ClassType;

    const-string v1, "classResourcePath"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->maker:Lgnu/bytecode/Method;

    .line 73
    const-string v0, "$class_resource_URL$"

    invoke-static {v0}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static getModuleClassURI(Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 9
    .parameter "comp"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 82
    iget-object v5, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    sget-object v6, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

    invoke-virtual {v5, v6}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 83
    .local v1, decl:Lgnu/expr/Declaration;
    if-nez v1, :cond_2

    .line 85
    new-instance v1, Lgnu/expr/Declaration;

    .end local v1           #decl:Lgnu/expr/Declaration;
    sget-object v5, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

    sget-object v6, Lgnu/kawa/functions/GetModuleClass;->typeURLPath:Lgnu/bytecode/ClassType;

    invoke-direct {v1, v5, v6}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 86
    .restart local v1       #decl:Lgnu/expr/Declaration;
    const-wide/32 v5, 0x20004800

    invoke-virtual {v1, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 88
    iget-boolean v5, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v5, :cond_3

    .line 90
    iget-object v5, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->getSourceAbsPath()Lgnu/text/Path;

    move-result-object v2

    .line 91
    .local v2, path:Lgnu/text/Path;
    if-nez v2, :cond_0

    .line 92
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v2

    .line 93
    :cond_0
    instance-of v5, v2, Lgnu/text/URLPath;

    if-nez v5, :cond_1

    .line 94
    invoke-virtual {v2}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v2

    .line 95
    :cond_1
    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    .line 104
    .end local v2           #path:Lgnu/text/Path;
    .local v4, value:Lgnu/expr/Expression;
    :goto_0
    invoke-virtual {v1, v4}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 105
    iget-object v5, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Lgnu/expr/ModuleExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 107
    .end local v4           #value:Lgnu/expr/Expression;
    :cond_2
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 108
    .local v3, ref:Lgnu/expr/ReferenceExp;
    iget-boolean v5, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v5, :cond_4

    move-object v5, v3

    .line 111
    :goto_1
    return-object v5

    .line 99
    .end local v3           #ref:Lgnu/expr/ReferenceExp;
    :cond_3
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v5, Lgnu/kawa/functions/GetModuleClass;->getModuleClass:Lgnu/kawa/functions/GetModuleClass;

    sget-object v6, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v0, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 102
    .local v0, clas:Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    sget-object v5, Lgnu/kawa/functions/GetModuleClass;->maker:Lgnu/bytecode/Method;

    new-array v6, v7, [Lgnu/expr/Expression;

    aput-object v0, v6, v8

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .restart local v4       #value:Lgnu/expr/Expression;
    goto :goto_0

    .line 111
    .end local v0           #clas:Lgnu/expr/Expression;
    .end local v4           #value:Lgnu/expr/Expression;
    .restart local v3       #ref:Lgnu/expr/ReferenceExp;
    :cond_4
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v6, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    new-array v7, v7, [Lgnu/expr/Expression;

    aput-object v3, v7, v8

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_1
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "args"

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Error;

    const-string v1, "get-module-class must be inlined"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 47
    sget-object v3, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    if-ne p0, v3, :cond_1

    .line 49
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v3, v4

    check-cast v2, Lgnu/expr/ReferenceExp;

    .line 50
    .local v2, ref:Lgnu/expr/ReferenceExp;
    invoke-virtual {v2, p2, p3}, Lgnu/expr/ReferenceExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 51
    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 52
    .local v0, decl:Lgnu/expr/Declaration;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 53
    .local v1, init:Lgnu/expr/Expression;
    if-eqz v1, :cond_0

    .line 55
    invoke-static {v0, v1, p2}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 56
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 66
    .end local v0           #decl:Lgnu/expr/Declaration;
    .end local v1           #init:Lgnu/expr/Expression;
    .end local v2           #ref:Lgnu/expr/ReferenceExp;
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v3, p2, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, v3}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 62
    sget-object v3, Lgnu/kawa/functions/GetModuleClass;->getModuleUri:Lgnu/kawa/functions/GetModuleClass;

    if-ne p0, v3, :cond_2

    .line 63
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    sget-object v4, Lgnu/kawa/functions/GetModuleClass;->maker:Lgnu/bytecode/Method;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 64
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {p3, p2, v3}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 70
    sget-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleClass:Lgnu/kawa/functions/GetModuleClass;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/kawa/functions/GetModuleClass;->typeURLPath:Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    if-ne p0, v0, :cond_0

    const/16 v0, 0x1001

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

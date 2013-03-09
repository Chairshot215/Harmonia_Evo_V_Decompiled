.class public Lkawa/standard/module_extends;
.super Lkawa/lang/Syntax;
.source "module_extends.java"


# static fields
.field public static final module_extends:Lkawa/standard/module_extends;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/module_extends;

    invoke-direct {v0}, Lkawa/standard/module_extends;-><init>()V

    sput-object v0, Lkawa/standard/module_extends;->module_extends:Lkawa/standard/module_extends;

    .line 10
    sget-object v0, Lkawa/standard/module_extends;->module_extends:Lkawa/standard/module_extends;

    const-string v1, "module-extends"

    invoke-virtual {v0, v1}, Lkawa/standard/module_extends;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 3
    .parameter "form"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 14
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p3, p0}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 15
    .local v0, base:Lgnu/bytecode/Type;
    invoke-virtual {p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    .line 16
    .local v1, module:Lgnu/expr/ModuleExp;
    check-cast v0, Lgnu/bytecode/ClassType;

    .end local v0           #base:Lgnu/bytecode/Type;
    invoke-virtual {v1, v0}, Lgnu/expr/ModuleExp;->setSuperType(Lgnu/bytecode/ClassType;)V

    .line 17
    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 18
    return-void
.end method

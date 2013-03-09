.class public Lgnu/expr/ClassInitializer;
.super Lgnu/expr/Initializer;
.source "ClassInitializer.java"


# instance fields
.field cexp:Lgnu/expr/ClassExp;


# direct methods
.method public constructor <init>(Lgnu/expr/ClassExp;Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "cexp"
    .parameter "comp"

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/expr/Initializer;-><init>()V

    .line 15
    invoke-virtual {p1, p2}, Lgnu/expr/ClassExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    .line 16
    invoke-virtual {p1, p2}, Lgnu/expr/ClassExp;->compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    .line 17
    iput-object p1, p0, Lgnu/expr/ClassInitializer;->cexp:Lgnu/expr/ClassExp;

    .line 18
    iget-object v1, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object v1, p0, Lgnu/expr/ClassInitializer;->next:Lgnu/expr/Initializer;

    .line 21
    iput-object p0, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 29
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 26
    .local v0, heapLambda:Lgnu/expr/LambdaExp;
    iget-object v1, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    iput-object v1, p0, Lgnu/expr/ClassInitializer;->next:Lgnu/expr/Initializer;

    .line 27
    iput-object p0, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    goto :goto_0
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "comp"

    .prologue
    .line 33
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 34
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 36
    :cond_0
    iget-object v1, p0, Lgnu/expr/ClassInitializer;->cexp:Lgnu/expr/ClassExp;

    sget-object v2, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-static {v2}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lgnu/expr/ClassExp;->compilePushClass(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 37
    iget-object v1, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v1, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

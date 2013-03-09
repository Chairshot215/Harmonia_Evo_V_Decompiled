.class public Lgnu/kawa/functions/CallCC;
.super Lgnu/mapping/MethodProc;
.source "CallCC.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final callcc:Lgnu/kawa/functions/CallCC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lgnu/kawa/functions/CallCC;

    invoke-direct {v0}, Lgnu/kawa/functions/CallCC;-><init>()V

    sput-object v0, Lgnu/kawa/functions/CallCC;->callcc:Lgnu/kawa/functions/CallCC;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 19
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileMisc:validateApplyCallCC"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/CallCC;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v2, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    check-cast v2, Lgnu/mapping/Procedure;

    .line 35
    .local v2, proc:Lgnu/mapping/Procedure;
    new-instance v0, Lkawa/lang/Continuation;

    invoke-direct {v0, p1}, Lkawa/lang/Continuation;-><init>(Lgnu/mapping/CallContext;)V

    .line 36
    .local v0, cont:Lkawa/lang/Continuation;
    invoke-virtual {v2, v0, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 37
    iget-object v2, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 38
    const/4 v3, 0x0

    iput-object v3, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 41
    :try_start_0
    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/CallContext;)V

    .line 42
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 43
    const/4 v3, 0x1

    iput-boolean v3, v0, Lkawa/lang/Continuation;->invoked:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 47
    .local v1, ex:Ljava/lang/Throwable;
    invoke-static {v1, v0, p1}, Lkawa/lang/Continuation;->handleException$X(Ljava/lang/Throwable;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 63
    invoke-static {p1, p2, p3, p0}, Lgnu/kawa/functions/CompileMisc;->compileCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V

    .line 64
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 68
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "proc"
    .parameter "ctx"

    .prologue
    .line 27
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    .line 28
    const/high16 v0, -0xc

    .line 29
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x1001

    return v0
.end method

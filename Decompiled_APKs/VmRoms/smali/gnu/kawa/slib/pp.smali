.class public Lgnu/kawa/slib/pp;
.super Lgnu/expr/ModuleBody;
.source "pp.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/pp;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field public static final pretty$Mnprint:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "pretty-print"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/pp;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v0, 0x4f

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/pp;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lgnu/kawa/slib/pp;

    invoke-direct {v0}, Lgnu/kawa/slib/pp;-><init>()V

    sput-object v0, Lgnu/kawa/slib/pp;->$instance:Lgnu/kawa/slib/pp;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/pp;->$instance:Lgnu/kawa/slib/pp;

    const/4 v2, 0x2

    sget-object v3, Lgnu/kawa/slib/pp;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/pp;->pretty$Mnprint:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/pp;->$instance:Lgnu/kawa/slib/pp;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static prettyPrint(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkawa/lib/ports;->current$Mnoutput$Mnport:Lgnu/mapping/LocationProc;

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/kawa/slib/pp;->prettyPrint(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static prettyPrint(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .parameter "port"

    .prologue
    .line 8
    new-instance v0, Lgnu/kawa/slib/pp$frame;

    invoke-direct {v0}, Lgnu/kawa/slib/pp$frame;-><init>()V

    iput-object p1, v0, Lgnu/kawa/slib/pp$frame;->port:Ljava/lang/Object;

    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lgnu/kawa/slib/pp;->Lit0:Lgnu/math/IntNum;

    iget-object v0, v0, Lgnu/kawa/slib/pp$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-static {p0, v1, v2, v0}, Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8
    invoke-static {p2}, Lgnu/kawa/slib/pp;->prettyPrint(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8
    invoke-static {p2, p3}, Lgnu/kawa/slib/pp;->prettyPrint(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x1

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_0

    .line 8
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 3
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 8
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method

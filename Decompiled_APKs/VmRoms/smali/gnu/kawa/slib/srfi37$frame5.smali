.class public Lgnu/kawa/slib/srfi37$frame5;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37$frame4;->lambda19(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame5"
.end annotation


# instance fields
.field final lambda$Fn15:Lgnu/expr/ModuleMethod;

.field final lambda$Fn16:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/srfi37$frame4;

.field x:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame5;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    const/16 v2, 0x1001

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame5;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi37$frame5;->lambda20()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi37$frame5;->lambda21(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda20()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 168
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame5;->staticLink:Lgnu/kawa/slib/srfi37$frame4;

    iget-object v1, v1, Lgnu/kawa/slib/srfi37$frame4;->staticLink:Lgnu/kawa/slib/srfi37$frame3;

    iget-object v1, v1, Lgnu/kawa/slib/srfi37$frame3;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iget-object v2, p0, Lgnu/kawa/slib/srfi37$frame5;->staticLink:Lgnu/kawa/slib/srfi37$frame4;

    iget-object v2, v2, Lgnu/kawa/slib/srfi37$frame4;->x:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, x:Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame5;->staticLink:Lgnu/kawa/slib/srfi37$frame4;

    iget-object v1, v1, Lgnu/kawa/slib/srfi37$frame4;->x:Ljava/lang/Object;

    invoke-static {v1}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v4, p0, Lgnu/kawa/slib/srfi37$frame5;->staticLink:Lgnu/kawa/slib/srfi37$frame4;

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame4;->staticLink:Lgnu/kawa/slib/srfi37$frame3;

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame3;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object v1

    goto :goto_0
.end method

.method lambda21(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "x"

    .prologue
    new-instance v0, Lgnu/kawa/slib/srfi37$frame6;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37$frame6;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi37$frame6;->staticLink:Lgnu/kawa/slib/srfi37$frame5;

    iput-object p1, v0, Lgnu/kawa/slib/srfi37$frame6;->x:Ljava/lang/Object;

    .line 160
    iget-object v1, v0, Lgnu/kawa/slib/srfi37$frame6;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame6;->lambda$Fn18:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

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

.class public Lgnu/kawa/slib/srfi37$frame6;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37$frame5;->lambda21(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame6"
.end annotation


# instance fields
.field final lambda$Fn17:Lgnu/expr/ModuleMethod;

.field final lambda$Fn18:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/srfi37$frame5;

.field x:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame6;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc

    const/16 v2, -0x1000

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame6;->lambda$Fn18:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi37$frame6;->lambda22()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi37$frame6;->lambda23$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda22()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lgnu/kawa/slib/srfi37$frame6;->x:Ljava/lang/Object;

    :try_start_0
    check-cast v0, Lgnu/kawa/slib/option$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    .line 10000
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame6;->x:Ljava/lang/Object;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame6;->staticLink:Lgnu/kawa/slib/srfi37$frame5;

    iget-object v3, v3, Lgnu/kawa/slib/srfi37$frame5;->staticLink:Lgnu/kawa/slib/srfi37$frame4;

    iget-object v3, v3, Lgnu/kawa/slib/srfi37$frame4;->x:Ljava/lang/Object;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame6;->staticLink:Lgnu/kawa/slib/srfi37$frame5;

    iget-object v3, v3, Lgnu/kawa/slib/srfi37$frame5;->x:Ljava/lang/Object;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 178
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame6;->staticLink:Lgnu/kawa/slib/srfi37$frame5;

    iget-object v3, v3, Lgnu/kawa/slib/srfi37$frame5;->staticLink:Lgnu/kawa/slib/srfi37$frame4;

    iget-object v3, v3, Lgnu/kawa/slib/srfi37$frame4;->staticLink:Lgnu/kawa/slib/srfi37$frame3;

    iget-object v3, v3, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 139
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "option-processor"

    invoke-direct {v2, v1, v3, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method lambda23$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "argsArray"

    .prologue
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 160
    .local v0, x:Lgnu/lists/LList;
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame6;->staticLink:Lgnu/kawa/slib/srfi37$frame5;

    iget-object v1, v1, Lgnu/kawa/slib/srfi37$frame5;->staticLink:Lgnu/kawa/slib/srfi37$frame4;

    iget-object v1, v1, Lgnu/kawa/slib/srfi37$frame4;->staticLink:Lgnu/kawa/slib/srfi37$frame3;

    iget-object v1, v1, Lgnu/kawa/slib/srfi37$frame3;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iget-object v2, p0, Lgnu/kawa/slib/srfi37$frame6;->staticLink:Lgnu/kawa/slib/srfi37$frame5;

    iget-object v2, v2, Lgnu/kawa/slib/srfi37$frame5;->staticLink:Lgnu/kawa/slib/srfi37$frame4;

    iget-object v2, v2, Lgnu/kawa/slib/srfi37$frame4;->staticLink:Lgnu/kawa/slib/srfi37$frame3;

    iget-object v2, v2, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

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

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x5

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

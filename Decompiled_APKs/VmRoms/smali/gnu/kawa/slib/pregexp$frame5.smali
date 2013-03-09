.class public Lgnu/kawa/slib/pregexp$frame5;
.super Lgnu/expr/ModuleBody;
.source "pregexp.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/pregexp$frame4;->lambda24loupQ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame5"
.end annotation


# instance fields
.field fk:Lgnu/mapping/Procedure;

.field i:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field final lambda$Fn18:Lgnu/expr/ModuleMethod;

.field final lambda$Fn19:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/pregexp$frame4;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x1001

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x5

    sget-object v2, Lgnu/kawa/slib/pregexp;->Lit111:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "pregexp.scm:612"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame5;->fk:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, v5, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "pregexp.scm:617"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame5;->lambda$Fn18:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1, v5, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "pregexp.scm:628"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame5;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 612
    invoke-virtual {p0}, Lgnu/kawa/slib/pregexp$frame5;->lambda26fk()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 628
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 617
    :pswitch_0
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/pregexp$frame5;->lambda27(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 628
    :pswitch_1
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/pregexp$frame5;->lambda28(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public lambda26fk()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 612
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    iget-object v1, v1, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-object v1, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame5;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda27(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "i1"

    .prologue
    .line 617
    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    iget-object v1, v1, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-boolean v1, v1, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    if-eqz v1, :cond_1

    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 619
    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame5;->i:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    .line 620
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit110:Lgnu/mapping/SimpleSymbol;

    aput-object v3, v1, v2

    invoke-static {v1}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_0
    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame5;->k:Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lgnu/kawa/slib/pregexp$frame4;->lambda24loupQ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, x:Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_2

    move-object v1, v0

    :goto_1
    return-object v1

    .line 618
    .end local v0           #x:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    iget-object v1, v1, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-boolean v1, v1, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 623
    .restart local v0       #x:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lgnu/kawa/slib/pregexp$frame5;->lambda26fk()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method lambda28(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "i1"

    .prologue
    .line 628
    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame5;->k:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgnu/kawa/slib/pregexp$frame4;->lambda24loupQ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 612
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
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 617
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 628
    :goto_0
    return v0

    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 617
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

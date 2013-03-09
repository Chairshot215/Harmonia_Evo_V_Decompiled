.class public Lgnu/kawa/slib/pregexp$frame0;
.super Lgnu/expr/ModuleBody;
.source "pregexp.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field could$Mnloop$Mninfinitely$Qu:Z

.field fk:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field final lambda$Fn11:Lgnu/expr/ModuleMethod;

.field final lambda$Fn12:Lgnu/expr/ModuleMethod;

.field final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field final lambda$Fn4:Lgnu/expr/ModuleMethod;

.field final lambda$Fn5:Lgnu/expr/ModuleMethod;

.field maximal$Qu:Z

.field old:Ljava/lang/Object;

.field p:Ljava/lang/Object;

.field q:Ljava/lang/Object;

.field re:Ljava/lang/Object;

.field re$1:Ljava/lang/Object;

.field sk:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/pregexp$frame;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x1001

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "pregexp.scm:513"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "pregexp.scm:514"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "pregexp.scm:541"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "pregexp.scm:545"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "pregexp.scm:587"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "pregexp.scm:590"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda13()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 551
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static lambda14()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static lambda15()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 564
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static lambda16()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 573
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static lambda17()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 578
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 590
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 514
    :sswitch_0
    invoke-virtual {p0}, Lgnu/kawa/slib/pregexp$frame0;->lambda10()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 590
    :sswitch_1
    invoke-virtual {p0}, Lgnu/kawa/slib/pregexp$frame0;->lambda19()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line -1
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 587
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 513
    :pswitch_1
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/pregexp$frame0;->lambda9(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 541
    :pswitch_2
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/pregexp$frame0;->lambda11(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 545
    :pswitch_3
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/pregexp$frame0;->lambda12(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 587
    :pswitch_4
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/pregexp$frame0;->lambda18(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method lambda10()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 514
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda11(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "i"

    .prologue
    .line 541
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda12(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "i1"

    .prologue
    .line 545
    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    iget-object v1, v1, Lgnu/kawa/slib/pregexp$frame;->backrefs:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/lists;->assv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    check-cast v0, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 547
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 546
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-cdr!"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method lambda18(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "i1"

    .prologue
    .line 587
    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->old:Ljava/lang/Object;

    iput-object v1, v0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    .line 589
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda19()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->old:Ljava/lang/Object;

    iput-object v1, v0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    .line 592
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda5loupOneOfChars(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "chars"

    .prologue
    new-instance v0, Lgnu/kawa/slib/pregexp$frame1;

    invoke-direct {v0}, Lgnu/kawa/slib/pregexp$frame1;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/pregexp$frame1;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iput-object p1, v0, Lgnu/kawa/slib/pregexp$frame1;->chars:Ljava/lang/Object;

    .line 506
    iget-object v1, v0, Lgnu/kawa/slib/pregexp$frame1;->chars:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v3, v0, Lgnu/kawa/slib/pregexp$frame1;->chars:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame1;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    invoke-virtual {v1, v2, v3, v4, v0}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public lambda6loupSeq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "res"
    .parameter "i"

    .prologue
    new-instance v0, Lgnu/kawa/slib/pregexp$frame2;

    invoke-direct {v0}, Lgnu/kawa/slib/pregexp$frame2;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/pregexp$frame2;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iput-object p1, v0, Lgnu/kawa/slib/pregexp$frame2;->res:Ljava/lang/Object;

    .line 517
    iget-object v1, v0, Lgnu/kawa/slib/pregexp$frame2;->res:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 518
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v3, v0, Lgnu/kawa/slib/pregexp$frame2;->res:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame2;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2, v0, v3}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public lambda7loupOr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "res"

    .prologue
    new-instance v0, Lgnu/kawa/slib/pregexp$frame3;

    invoke-direct {v0}, Lgnu/kawa/slib/pregexp$frame3;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/pregexp$frame3;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iput-object p1, v0, Lgnu/kawa/slib/pregexp$frame3;->res:Ljava/lang/Object;

    .line 524
    iget-object v1, v0, Lgnu/kawa/slib/pregexp$frame3;->res:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v3, v0, Lgnu/kawa/slib/pregexp$frame3;->res:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v4, v0, Lgnu/kawa/slib/pregexp$frame3;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame3;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    invoke-virtual {v1, v2, v3, v4, v0}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public lambda8loupP(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "k"
    .parameter "i"

    .prologue
    new-instance v0, Lgnu/kawa/slib/pregexp$frame4;

    invoke-direct {v0}, Lgnu/kawa/slib/pregexp$frame4;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iput-object p1, v0, Lgnu/kawa/slib/pregexp$frame4;->k:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/pregexp$frame4;->i:Ljava/lang/Object;

    .line 600
    sget-object v1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v2, v0, Lgnu/kawa/slib/pregexp$frame4;->k:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame0;->p:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    .line 601
    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame0;->re:Ljava/lang/Object;

    iget-object v3, v0, Lgnu/kawa/slib/pregexp$frame4;->i:Ljava/lang/Object;

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame4;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    iget-object v4, p0, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    .line 610
    :cond_0
    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame0;->p:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lgnu/kawa/slib/pregexp$frame4;->q:Ljava/lang/Object;

    .line 611
    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    iget-object v2, v0, Lgnu/kawa/slib/pregexp$frame4;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/slib/pregexp$frame4;->lambda24loupQ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 610
    :cond_1
    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    goto :goto_1
.end method

.method lambda9(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "i1"

    .prologue
    .line 513
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 514
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 590
    :goto_0
    return v0

    :sswitch_0
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 514
    :sswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
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

    .line 513
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 587
    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 545
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 541
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 513
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

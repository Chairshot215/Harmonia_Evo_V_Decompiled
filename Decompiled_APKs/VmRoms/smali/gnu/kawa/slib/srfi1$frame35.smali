.class public Lgnu/kawa/slib/srfi1$frame35;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->lsetUnion$Ex$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame35"
.end annotation


# instance fields
.field $Eq:Lgnu/mapping/Procedure;

.field final lambda$Fn34:Lgnu/expr/ModuleMethod;

.field final lambda$Fn35:Lgnu/expr/ModuleMethod;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x2002

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x23

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "srfi1.scm:1488"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame35;->lambda$Fn35:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x24

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "srfi1.scm:1483"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame35;->lambda$Fn34:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 1483
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1488
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame35;->lambda52(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1483
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame35;->lambda51(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method lambda51(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "lis"
    .parameter "ans"

    .prologue
    .line 1483
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1488
    :goto_0
    return-object v0

    .line 1483
    :cond_0
    invoke-static {p2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1485
    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    move-object v0, p2

    .line 1486
    goto :goto_0

    .line 1488
    :cond_2
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame35;->lambda$Fn35:Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, p1, v1}, Lgnu/kawa/slib/srfi1;->pairFold$V(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda52(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "pair"
    .parameter "ans"

    .prologue
    .line 1488
    new-instance v1, Lgnu/kawa/slib/srfi1$frame36;

    invoke-direct {v1}, Lgnu/kawa/slib/srfi1$frame36;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/srfi1$frame36;->staticLink:Lgnu/kawa/slib/srfi1$frame35;

    .line 1489
    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/slib/srfi1$frame36;->elt:Ljava/lang/Object;

    .line 1490
    iget-object v1, v1, Lgnu/kawa/slib/srfi1$frame36;->lambda$Fn36:Lgnu/expr/ModuleMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lgnu/kawa/slib/srfi1;->any$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    move-object v1, p2

    .line 1492
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, p2}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-cdr!"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 1488
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

    .line 1483
    :pswitch_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 1488
    :pswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

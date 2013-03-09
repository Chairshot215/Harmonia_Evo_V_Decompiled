.class public Lgnu/kawa/slib/testing$frame1;
.super Lgnu/expr/ModuleBody;
.source "testing.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/testing;->testApply$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation


# instance fields
.field first:Ljava/lang/Object;

.field final lambda$Fn10:Lgnu/expr/ModuleMethod;

.field final lambda$Fn5:Lgnu/expr/ModuleMethod;

.field final lambda$Fn6:Lgnu/expr/ModuleMethod;

.field final lambda$Fn7:Lgnu/expr/ModuleMethod;

.field final lambda$Fn8:Lgnu/expr/ModuleMethod;

.field final lambda$Fn9:Lgnu/expr/ModuleMethod;

.field r:Ljava/lang/Object;

.field rest:Lgnu/lists/LList;

.field saved$Mnrunner:Ljava/lang/Object;

.field saved$Mnrunner$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/testing$frame1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/testing$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "testing.scm:897"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/testing$frame1;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/testing$frame1;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/testing$frame1;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "testing.scm:897"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/testing$frame1;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 897
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line -1
    :pswitch_0
    invoke-virtual {p0}, Lgnu/kawa/slib/testing$frame1;->lambda6()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lgnu/kawa/slib/testing$frame1;->lambda7()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 897
    :pswitch_2
    invoke-virtual {p0}, Lgnu/kawa/slib/testing$frame1;->lambda8()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lgnu/kawa/slib/testing$frame1;->lambda9()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lgnu/kawa/slib/testing$frame1;->lambda10()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lgnu/kawa/slib/testing$frame1;->lambda11()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method lambda10()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 887
    sget-object v0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v1, Lgnu/kawa/slib/testing;->test$Mnapply:Lgnu/expr/ModuleMethod;

    iget-object v2, p0, Lgnu/kawa/slib/testing$frame1;->first:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/testing$frame1;->rest:Lgnu/lists/LList;

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda11()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 897
    sget-object v0, Lgnu/kawa/slib/testing;->test$Mnrunner$Mncurrent:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Procedure;

    iget-object v1, p0, Lgnu/kawa/slib/testing$frame1;->saved$Mnrunner:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda6()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 873
    sget-object v0, Lgnu/kawa/slib/testing;->test$Mnrunner$Mncurrent:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Procedure;

    iget-object v1, p0, Lgnu/kawa/slib/testing$frame1;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda7()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 873
    sget-object v0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v1, Lgnu/kawa/slib/testing;->test$Mnapply:Lgnu/expr/ModuleMethod;

    iget-object v2, p0, Lgnu/kawa/slib/testing$frame1;->rest:Lgnu/lists/LList;

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda8()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 897
    sget-object v0, Lgnu/kawa/slib/testing;->test$Mnrunner$Mncurrent:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Procedure;

    iget-object v1, p0, Lgnu/kawa/slib/testing$frame1;->saved$Mnrunner$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda9()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 887
    sget-object v0, Lgnu/kawa/slib/testing;->test$Mnrunner$Mncurrent:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Procedure;

    iget-object v1, p0, Lgnu/kawa/slib/testing$frame1;->r:Ljava/lang/Object;

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

    packed-switch v0, :pswitch_data_0

    .line 897
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :pswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :pswitch_3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :pswitch_4
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :pswitch_5
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

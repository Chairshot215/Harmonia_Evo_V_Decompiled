.class public Lgnu/kawa/slib/srfi1$frame29;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1$frame28;->lambda41lp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame29"
.end annotation


# instance fields
.field heads:Ljava/lang/Object;

.field final lambda$Fn26:Lgnu/expr/ModuleMethod;

.field final lambda$Fn27:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/srfi1$frame28;

.field tails:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame29;->lambda$Fn26:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x19

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "srfi1.scm:1381"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame29;->lambda$Fn27:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi1$frame29;->lambda42()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

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

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 1381
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame29;->lambda43(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda42()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame29;->tails:Ljava/lang/Object;

    invoke-static {v0}, Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda43(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "next$Mnheads"
    .parameter "next$Mntails"

    .prologue
    .line 1381
    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1383
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v2, p0, Lgnu/kawa/slib/srfi1$frame29;->staticLink:Lgnu/kawa/slib/srfi1$frame28;

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame28;->staticLink:Lgnu/kawa/slib/srfi1$frame27;

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame27;->pred:Lgnu/mapping/Procedure;

    iget-object v3, p0, Lgnu/kawa/slib/srfi1$frame29;->heads:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, x:Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame29;->staticLink:Lgnu/kawa/slib/srfi1$frame28;

    invoke-virtual {v1, p1, p2}, Lgnu/kawa/slib/srfi1$frame28;->lambda41lp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1384
    .end local v0           #x:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v0       #x:Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    .line 1383
    goto :goto_0

    .line 1384
    .end local v0           #x:Ljava/lang/Object;
    :cond_1
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v2, p0, Lgnu/kawa/slib/srfi1$frame29;->staticLink:Lgnu/kawa/slib/srfi1$frame28;

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame28;->staticLink:Lgnu/kawa/slib/srfi1$frame27;

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame27;->pred:Lgnu/mapping/Procedure;

    iget-object v3, p0, Lgnu/kawa/slib/srfi1$frame29;->heads:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x18

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

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 1381
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x2

    iput v0, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

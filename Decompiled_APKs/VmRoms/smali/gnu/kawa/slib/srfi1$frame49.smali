.class public Lgnu/kawa/slib/srfi1$frame49;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1$frame48;->lambda66(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame49"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field final lambda$Fn50:Lgnu/expr/ModuleMethod;

.field final lambda$Fn51:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/srfi1$frame48;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame49;->lambda$Fn50:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x33

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "srfi1.scm:1565"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame49;->lambda$Fn51:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi1$frame49;->lambda67()Ljava/lang/Object;

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

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    .line 1565
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame49;->lambda68(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda67()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1565
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame49;->staticLink:Lgnu/kawa/slib/srfi1$frame48;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame48;->$Eq:Lgnu/mapping/Procedure;

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame49;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lgnu/kawa/slib/srfi1$frame49;->b:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi1;->lsetDiff$PlIntersection$Ex$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda68(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "a$Mnb"
    .parameter "aIntB"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1565
    new-instance v0, Lgnu/kawa/slib/srfi1$frame50;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame50;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame50;->staticLink:Lgnu/kawa/slib/srfi1$frame49;

    iput-object p2, v0, Lgnu/kawa/slib/srfi1$frame50;->a$Mnint$Mnb:Ljava/lang/Object;

    .line 1566
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame49;->staticLink:Lgnu/kawa/slib/srfi1$frame48;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame48;->$Eq:Lgnu/mapping/Procedure;

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame49;->b:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi1$frame49;->a:Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi1;->lsetDifference$Ex$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1568
    :goto_0
    return-object v0

    .line 1566
    :cond_0
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame50;->a$Mnint$Mnb:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1567
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame49;->b:Ljava/lang/Object;

    aput-object v1, v0, v4

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame49;->a:Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {v0}, Lgnu/kawa/slib/srfi1;->append$Ex$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1568
    :cond_1
    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame50;->lambda$Fn52:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame49;->b:Ljava/lang/Object;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lgnu/kawa/slib/srfi1;->pairFold$V(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x32

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

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    .line 1565
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

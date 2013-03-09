.class public Lgnu/kawa/slib/srfi13$frame;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringParseStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field args:Ljava/lang/Object;

.field final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field proc:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field slen:I

.field start:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x2

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "srfi13.scm:150"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame;->lambda1()Ljava/lang/Object;

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

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame;->lambda2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda1()Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame;->args:Ljava/lang/Object;

    invoke-static {v3}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame;->args:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame;->args:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, args:Ljava/lang/Object;
    .local v1, end:Ljava/lang/Object;
    invoke-static {v1}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v2

    .local v2, x:Z
    if-eqz v2, :cond_3

    invoke-static {v1}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v3, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    iget v4, p0, Lgnu/kawa/slib/srfi13$frame;->slen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_2

    .line 155
    :cond_0
    :goto_0
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    invoke-static {v3}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 157
    .end local v0           #args:Ljava/lang/Object;
    .end local v1           #end:Ljava/lang/Object;
    .end local v2           #x:Z
    :goto_1
    return-object v3

    .line 154
    .restart local v0       #args:Ljava/lang/Object;
    .restart local v1       #end:Ljava/lang/Object;
    .restart local v2       #x:Z
    :cond_1
    if-nez v2, :cond_0

    .line 156
    :cond_2
    const-string v3, "Illegal substring END spec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame;->proc:Ljava/lang/Object;

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame;->s:Ljava/lang/Object;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 154
    :cond_3
    if-eqz v2, :cond_2

    goto :goto_0

    .line 157
    .end local v0           #args:Ljava/lang/Object;
    .end local v1           #end:Ljava/lang/Object;
    .end local v2           #x:Z
    :cond_4
    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lgnu/kawa/slib/srfi13$frame;->slen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame;->args:Ljava/lang/Object;

    aput-object v4, v3, v7

    invoke-static {v3}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method

.method lambda2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "end"
    .parameter "args"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    sget-object v0, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame;->start:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p2, v0, v3

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame;->start:Ljava/lang/Object;

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    invoke-static {v0}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Illegal substring START/END spec"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame;->proc:Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame;->start:Ljava/lang/Object;

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame;->s:Ljava/lang/Object;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

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
    const/4 v1, 0x2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_0

    .line 150
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

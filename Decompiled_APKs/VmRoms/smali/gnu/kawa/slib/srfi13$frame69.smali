.class public Lgnu/kawa/slib/srfi13$frame69;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringTrimRight$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame69"
.end annotation


# instance fields
.field final lambda$Fn157:Lgnu/expr/ModuleMethod;

.field final lambda$Fn158:Lgnu/expr/ModuleMethod;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x86

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame69;->lambda$Fn157:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x87

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame69;->lambda$Fn158:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x86

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame69;->lambda157()Ljava/lang/Object;

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

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x87

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame69;->lambda158(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda157()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1030
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mntrim$Mnright:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame69;->s:Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$rest:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "srfi13.scm"

    const/16 v2, 0x406

    const/16 v3, 0x3b

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method lambda158(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1031
    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame69;->s:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/srfi13;->loc$criterion:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lgnu/kawa/slib/srfi13;->stringSkipRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, temp:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    .line 10000
    iget-object p0, p0, Lgnu/kawa/slib/srfi13$frame69;->s:Ljava/lang/Object;

    .end local p0
    :try_start_1
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v3, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_2
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    invoke-static {p0, v6, v2}, Lgnu/kawa/slib/srfi13;->$PcSubstring$SlShared(Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v2

    .line 1033
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    const-string v2, ""

    goto :goto_0

    .end local v1           #temp:Ljava/lang/Object;
    :catch_0
    move-exception v2

    const-string v3, "srfi13.scm"

    const/16 v4, 0x407

    const/16 v5, 0x23

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v2

    .line 1032
    .end local p0
    .restart local v1       #temp:Ljava/lang/Object;
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "%substring/shared"

    invoke-direct {v3, v2, v4, v6, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 11002
    :catch_2
    move-exception v2

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "%substring/shared"

    invoke-direct {v4, v2, v5, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x86

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

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x87

    if-ne v0, v1, :cond_0

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

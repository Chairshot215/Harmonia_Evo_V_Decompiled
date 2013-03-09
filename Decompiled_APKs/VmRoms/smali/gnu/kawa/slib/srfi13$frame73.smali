.class public Lgnu/kawa/slib/srfi13$frame73;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringDelete$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame73"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn167:Lgnu/expr/ModuleMethod;

.field final lambda$Fn168:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x91

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame73;->lambda$Fn167:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x92

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame73;->lambda$Fn168:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame73;->lambda167()Ljava/lang/Object;

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

    const/16 v1, 0x92

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame73;->lambda168(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda167()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1085
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mndelete:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame73;->s:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame73;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda168(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 12
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v5, Lgnu/kawa/slib/srfi13$frame74;

    invoke-direct {v5}, Lgnu/kawa/slib/srfi13$frame74;-><init>()V

    iput-object p0, v5, Lgnu/kawa/slib/srfi13$frame74;->staticLink:Lgnu/kawa/slib/srfi13$frame73;

    .line 1086
    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1087
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v4, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1088
    .local v3, slen:Ljava/lang/Object;
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    invoke-static {v4}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v5, Lgnu/kawa/slib/srfi13$frame74;->temp:Ljava/lang/CharSequence;

    .line 1087
    iget-object v4, v5, Lgnu/kawa/slib/srfi13$frame74;->lambda$Fn169:Lgnu/expr/ModuleMethod;

    sget-object v6, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame73;->s:Ljava/lang/Object;

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v10

    aput-object p2, v8, v9

    invoke-static {v4, v6, v7, v8}, Lgnu/kawa/slib/srfi13;->stringFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1094
    .local v1, ans$Mnlen:Ljava/lang/Object;
    sget-object v4, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v4, v1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v6, :cond_0

    iget-object v4, v5, Lgnu/kawa/slib/srfi13$frame74;->temp:Ljava/lang/CharSequence;

    .line 1109
    .end local v1           #ans$Mnlen:Ljava/lang/Object;
    .end local v3           #slen:Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 1094
    .restart local v1       #ans$Mnlen:Ljava/lang/Object;
    .restart local v3       #slen:Ljava/lang/Object;
    :cond_0
    iget-object v5, v5, Lgnu/kawa/slib/srfi13$frame74;->temp:Ljava/lang/CharSequence;

    :try_start_1
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    invoke-static {v5, v10, v4}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 1096
    .end local v1           #ans$Mnlen:Ljava/lang/Object;
    .end local v3           #slen:Ljava/lang/Object;
    :cond_1
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v6, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_2
    invoke-virtual {v6}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_2
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v6, :cond_2

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    .line 1098
    :goto_1
    iput-object v4, v5, Lgnu/kawa/slib/srfi13$frame74;->cset:Ljava/lang/Object;

    .line 1096
    iget-object v4, v5, Lgnu/kawa/slib/srfi13$frame74;->lambda$Fn170:Lgnu/expr/ModuleMethod;

    sget-object v6, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame73;->s:Ljava/lang/Object;

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v10

    aput-object p2, v8, v9

    invoke-static {v4, v6, v7, v8}, Lgnu/kawa/slib/srfi13;->stringFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, len:Ljava/lang/Object;
    :try_start_3
    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v4

    invoke-static {v4}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v5, Lgnu/kawa/slib/srfi13$frame74;->ans:Ljava/lang/CharSequence;

    .line 1104
    iget-object v4, v5, Lgnu/kawa/slib/srfi13$frame74;->lambda$Fn171:Lgnu/expr/ModuleMethod;

    sget-object v6, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame73;->s:Ljava/lang/Object;

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v10

    aput-object p2, v8, v9

    invoke-static {v4, v6, v7, v8}, Lgnu/kawa/slib/srfi13;->stringFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    iget-object v4, v5, Lgnu/kawa/slib/srfi13$frame74;->ans:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1096
    .end local v2           #len:Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1097
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v6, Lgnu/kawa/slib/srfi13;->loc$char$Mnset:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v6}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_4
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v6

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 1098
    :cond_3
    const-string v4, "string-delete criterion not predicate, char or char-set"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    aput-object v7, v6, v10

    invoke-static {v4, v6}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 1088
    .restart local v3       #slen:Ljava/lang/Object;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "make-string"

    invoke-direct {v5, v4, v6, v9, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 1094
    .restart local v1       #ans$Mnlen:Ljava/lang/Object;
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "substring"

    const/4 v7, 0x3

    invoke-direct {v5, v4, v6, v7, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .end local v1           #ans$Mnlen:Ljava/lang/Object;
    .end local v3           #slen:Ljava/lang/Object;
    :catch_2
    move-exception v4

    const-string v5, "srfi13.scm"

    const/16 v6, 0x448

    const/16 v7, 0x16

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v4

    :catch_3
    move-exception v4

    const-string v5, "srfi13.scm"

    const/16 v6, 0x449

    const/16 v7, 0x1a

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v4

    .line 1103
    .restart local v2       #len:Ljava/lang/Object;
    :catch_4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "make-string"

    invoke-direct {v5, v4, v6, v9, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x91

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

    const/16 v1, 0x92

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

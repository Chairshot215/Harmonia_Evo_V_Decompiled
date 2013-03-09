.class public Lgnu/kawa/slib/srfi13$frame93;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringTokenize$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame93"
.end annotation


# instance fields
.field final lambda$Fn208:Lgnu/expr/ModuleMethod;

.field final lambda$Fn209:Lgnu/expr/ModuleMethod;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb7

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame93;->lambda$Fn208:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb8

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame93;->lambda$Fn209:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame93;->lambda208()Ljava/lang/Object;

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

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame93;->lambda209(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda208()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1696
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mntokenize:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

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

    const/16 v2, 0x6a0

    const/16 v3, 0x39

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method lambda209(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1697
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v2, p2

    .local v2, i:Ljava/lang/Object;
    move-object v9, v6

    .line 1698
    :goto_0
    sget-object v6, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v6, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_0
    move-object v0, v7

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .local v5, x:Z
    if-eqz v5, :cond_0

    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/srfi13;->loc$token$Mnchars:Lgnu/mapping/Location;

    :try_start_1
    invoke-virtual {v7}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v12

    aput-object v2, v8, v10

    invoke-static {v6, v7, v8}, Lgnu/kawa/slib/srfi13;->stringIndexRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .local v3, temp:Ljava/lang/Object;
    :goto_1
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v6, :cond_3

    .line 10000
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1701
    .local v4, tend:Ljava/lang/Object;
    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/srfi13;->loc$token$Mnchars:Lgnu/mapping/Location;

    :try_start_2
    invoke-virtual {v7}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_2
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v12

    aput-object v3, v8, v10

    invoke-static {v6, v7, v8}, Lgnu/kawa/slib/srfi13;->stringSkipRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v6, :cond_2

    .line 1704
    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    :try_start_3
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    .line 10000
    invoke-virtual {v7, v8, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_4
    move-object v0, v8

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v8

    :try_start_5
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v7

    invoke-static {v6, v8, v7}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v9}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .local v1, ans:Lgnu/lists/Pair;
    move-object v2, v3

    move-object v9, v1

    goto :goto_0

    .line 1698
    .end local v1           #ans:Lgnu/lists/Pair;
    .end local v3           #temp:Ljava/lang/Object;
    .end local v4           #tend:Ljava/lang/Object;
    :cond_0
    if-eqz v5, :cond_1

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v6

    goto :goto_1

    :cond_1
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v3, v6

    goto :goto_1

    .line 1706
    .restart local v3       #temp:Ljava/lang/Object;
    .restart local v4       #tend:Ljava/lang/Object;
    :cond_2
    iget-object p0, p0, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    .end local p0
    :try_start_6
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v7

    :try_start_8
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v6

    invoke-static {p0, v7, v6}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v9}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    .line 1707
    .end local v4           #tend:Ljava/lang/Object;
    :goto_2
    return-object v6

    .restart local p0
    :cond_3
    move-object v6, v9

    goto :goto_2

    .line 1698
    .end local v3           #temp:Ljava/lang/Object;
    .end local v5           #x:Z
    :catch_0
    move-exception v6

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "x"

    const/4 v10, -0x2

    invoke-direct {v8, v6, v9, v10, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .restart local v5       #x:Z
    :catch_1
    move-exception v6

    const-string v7, "srfi13.scm"

    const/16 v8, 0x6a2

    const/16 v9, 0x30

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v6

    .restart local v3       #temp:Ljava/lang/Object;
    .restart local v4       #tend:Ljava/lang/Object;
    :catch_2
    move-exception v6

    const-string v7, "srfi13.scm"

    const/16 v8, 0x6a5

    const/16 v9, 0x22

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v6

    .line 1704
    :catch_3
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "substring"

    invoke-direct {v8, v7, v9, v10, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 11674
    :catch_4
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v9, "substring"

    invoke-direct {v7, v6, v9, v11, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_5
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v13, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 1706
    .end local p0
    :catch_6
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v10, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_7
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v11, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_8
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v13, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb7

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

    const/16 v1, 0xb8

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

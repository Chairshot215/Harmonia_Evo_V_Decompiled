.class public Lgnu/kawa/slib/srfi13$frame10;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringAny$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame10"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn25:Lgnu/expr/ModuleMethod;

.field final lambda$Fn26:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame10;->lambda$Fn25:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x17

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame10;->lambda$Fn26:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame10;->lambda25()Ljava/lang/Object;

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

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame10;->lambda26(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda25()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 508
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnany:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame10;->s:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame10;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda26(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v12, -0x2

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 509
    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    invoke-static {v5}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 510
    move-object v2, p1

    .line 511
    .local v2, i:Ljava/lang/Object;
    :goto_0
    sget-object v5, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v5, v2, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :try_start_0
    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, x:Z
    if-eqz v4, :cond_2

    .line 512
    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    :try_start_1
    check-cast v5, Lgnu/text/Char;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame10;->s:Ljava/lang/Object;

    :try_start_2
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    invoke-static {v6, v7}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v4, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 529
    .end local v2           #i:Ljava/lang/Object;
    .end local v4           #x:Z
    :goto_1
    return-object v5

    .line 512
    .restart local v2       #i:Ljava/lang/Object;
    .restart local v4       #x:Z
    :cond_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 513
    :cond_1
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v5, v2, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 511
    :cond_2
    if-eqz v4, :cond_3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .end local v2           #i:Ljava/lang/Object;
    .end local v4           #x:Z
    :cond_4
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 515
    sget-object v6, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v6}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_4
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v6

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_8

    .line 516
    move-object v2, p1

    .line 517
    .restart local v2       #i:Ljava/lang/Object;
    :goto_2
    sget-object v5, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v5, v2, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :try_start_5
    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v4

    .restart local v4       #x:Z
    if-eqz v4, :cond_6

    .line 518
    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v5, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Mncontains$Qu:Lgnu/mapping/Location;

    :try_start_6
    invoke-virtual {v5}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_6
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v8

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame10;->s:Ljava/lang/Object;

    :try_start_7
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v6

    invoke-static {v5, v6}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    invoke-virtual {v7, v8, v9, v5}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, x:Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_5

    move-object v5, v4

    .line 519
    goto :goto_1

    :cond_5
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v5, v2, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 517
    .local v4, x:Z
    :cond_6
    if-eqz v4, :cond_7

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_7
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .end local v2           #i:Ljava/lang/Object;
    .end local v4           #x:Z
    :cond_8
    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    invoke-static {v5}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 522
    sget-object v5, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v5, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :try_start_9
    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v4

    .restart local v4       #x:Z
    if-eqz v4, :cond_b

    .line 523
    move-object v2, p1

    .line 524
    .end local v4           #x:Z
    .restart local v2       #i:Ljava/lang/Object;
    :goto_3
    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame10;->s:Ljava/lang/Object;

    :try_start_a
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    :try_start_b
    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    move-result v6

    invoke-static {v5, v6}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v1

    .line 525
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v5, v2, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 526
    .local v1, c:C
    .local v3, i1:Ljava/lang/Object;
    sget-object v5, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v5, v3, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_9

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_1

    .line 527
    :cond_9
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, x:Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_a

    move-object v5, v4

    goto/16 :goto_1

    :cond_a
    move-object v2, v3

    goto :goto_3

    .line 522
    .end local v1           #c:C
    .end local v2           #i:Ljava/lang/Object;
    .end local v3           #i1:Ljava/lang/Object;
    .local v4, x:Z
    :cond_b
    if-eqz v4, :cond_c

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_c
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 529
    .end local v4           #x:Z
    :cond_d
    const-string v5, "Second param is neither char-set, char, or predicate procedure."

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/srfi13;->string$Mnany:Lgnu/expr/ModuleMethod;

    aput-object v8, v6, v7

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_1

    .line 511
    .restart local v2       #i:Ljava/lang/Object;
    :catch_0
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "x"

    invoke-direct {v7, v5, v8, v12, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 512
    .restart local v4       #x:Z
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "char=?"

    invoke-direct {v7, v6, v8, v10, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_2
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v5, v8, v10, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v7, v11, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .end local v2           #i:Ljava/lang/Object;
    .end local v4           #x:Z
    :catch_4
    move-exception v5

    const-string v6, "srfi13.scm"

    const/16 v7, 0x203

    const/4 v8, 0x5

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v5

    .line 517
    .restart local v2       #i:Ljava/lang/Object;
    :catch_5
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "x"

    invoke-direct {v7, v5, v8, v12, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .restart local v4       #x:Z
    :catch_6
    move-exception v5

    const-string v6, "srfi13.scm"

    const/16 v7, 0x206

    const/16 v8, 0x9

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v5

    .line 518
    :catch_7
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v6, v8, v10, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_8
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v7, v11, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 522
    .end local v2           #i:Ljava/lang/Object;
    .end local v4           #x:Z
    :catch_9
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "x"

    invoke-direct {v7, v5, v8, v12, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 524
    .restart local v2       #i:Ljava/lang/Object;
    :catch_a
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v6, v8, v10, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_b
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v7, v11, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

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

    const/16 v1, 0x17

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

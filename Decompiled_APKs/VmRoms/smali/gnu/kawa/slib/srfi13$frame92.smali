.class public Lgnu/kawa/slib/srfi13$frame92;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringReplace$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame92"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn206:Lgnu/expr/ModuleMethod;

.field final lambda$Fn207:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s1:Ljava/lang/Object;

.field s2:Ljava/lang/Object;

.field start1:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame92;->lambda$Fn206:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb6

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame92;->lambda$Fn207:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame92;->lambda206()Ljava/lang/Object;

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

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame92;->lambda207(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda206()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1676
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnreplace:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame92;->s2:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame92;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda207(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "start2"
    .parameter "end2"

    .prologue
    .line 1677
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1678
    .local v3, slen1:I
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v5, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1677
    .local v4, sublen2:Ljava/lang/Object;
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame92;->end1:Ljava/lang/Object;

    iget-object v10, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, alen:Ljava/lang/Object;
    :try_start_1
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    invoke-static {v5}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1681
    .local v2, ans:Ljava/lang/CharSequence;
    const/4 v7, 0x0

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    .end local v1           #alen:Ljava/lang/Object;
    :try_start_2
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x0

    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    :try_start_3
    move-object v0, v6

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    invoke-static {v2, v7, v1, v8, v5}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    .line 1682
    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    :try_start_4
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v6

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame92;->s2:Ljava/lang/Object;

    :try_start_5
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v7

    :try_start_7
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v5

    invoke-static {v2, v6, v1, v7, v5}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    .line 1683
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    invoke-virtual {v5, v6, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    :try_start_8
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object p1, v0

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v5

    iget-object p1, p0, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    :try_start_9
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    iget-object p2, p0, Lgnu/kawa/slib/srfi13$frame92;->end1:Ljava/lang/Object;

    :try_start_a
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    move-result v6

    invoke-static {v2, v5, p1, v6, v3}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    .line 1684
    return-object v2

    .line 1677
    .end local v2           #ans:Ljava/lang/CharSequence;
    .end local v3           #slen1:I
    .end local v4           #sublen2:Ljava/lang/Object;
    .restart local p0
    .restart local p1
    .restart local p2
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    const/4 v8, 0x1

    invoke-direct {v6, v5, v7, v8, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 1680
    .restart local v1       #alen:Ljava/lang/Object;
    .restart local v3       #slen1:I
    .restart local v4       #sublen2:Ljava/lang/Object;
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "make-string"

    const/4 v8, 0x1

    invoke-direct {v6, v5, v7, v8, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 1681
    .end local v1           #alen:Ljava/lang/Object;
    .restart local v2       #ans:Ljava/lang/CharSequence;
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "%string-copy!"

    const/4 v8, 0x2

    invoke-direct {v6, v5, v7, v8, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_3
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "%string-copy!"

    const/4 v9, 0x4

    invoke-direct {v7, v5, v8, v9, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 1682
    :catch_4
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "%string-copy!"

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v9, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_5
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "%string-copy!"

    const/4 v8, 0x2

    invoke-direct {v6, v5, v7, v8, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_6
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "%string-copy!"

    const/4 v8, 0x3

    invoke-direct {v6, v5, v7, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_7
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "%string-copy!"

    const/4 v8, 0x4

    invoke-direct {v6, v5, v7, v8, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 1683
    .end local p1
    .end local p2
    :catch_8
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "%string-copy!"

    const/4 v8, 0x1

    invoke-direct {v6, v5, v7, v8, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_9
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "%string-copy!"

    const/4 v8, 0x2

    invoke-direct {v6, v5, v7, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .end local p0
    :catch_a
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "%string-copy!"

    const/4 v8, 0x3

    invoke-direct {v6, v5, v7, v8, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb5

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

    const/16 v1, 0xb6

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

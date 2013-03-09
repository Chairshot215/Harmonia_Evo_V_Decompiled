.class public Lgnu/kawa/slib/srfi13$frame78;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringIndexRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame78"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn179:Lgnu/expr/ModuleMethod;

.field final lambda$Fn180:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field str:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9a

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame78;->lambda$Fn179:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9b

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame78;->lambda$Fn180:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9a

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame78;->lambda179()Ljava/lang/Object;

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

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame78;->lambda180(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda179()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1173
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnindex$Mnright:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame78;->str:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame78;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda180(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1174
    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame78;->criterion:Ljava/lang/Object;

    invoke-static {v3}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1175
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v3, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1176
    .local v1, i:Ljava/lang/Object;
    :goto_0
    sget-object v3, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v3, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, x:Z
    if-eqz v2, :cond_1

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame78;->criterion:Ljava/lang/Object;

    :try_start_1
    check-cast v3, Lgnu/text/Char;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame78;->str:Ljava/lang/Object;

    :try_start_2
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    invoke-static {v4, v5}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v3, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 1189
    .end local v1           #i:Ljava/lang/Object;
    .end local v2           #x:Z
    :goto_1
    return-object v3

    .line 1178
    .restart local v1       #i:Ljava/lang/Object;
    .restart local v2       #x:Z
    :cond_0
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v3, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 1176
    :cond_1
    if-eqz v2, :cond_2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .end local v1           #i:Ljava/lang/Object;
    .end local v2           #x:Z
    :cond_3
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1179
    sget-object v4, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v4}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_4
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame78;->criterion:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_7

    .line 1180
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v3, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1181
    .restart local v1       #i:Ljava/lang/Object;
    :goto_2
    sget-object v3, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v3, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_5
    move-object v0, v4

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v2

    .restart local v2       #x:Z
    if-eqz v2, :cond_5

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1182
    sget-object v3, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Mncontains$Qu:Lgnu/mapping/Location;

    :try_start_6
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_6
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v6

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame78;->criterion:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame78;->str:Ljava/lang/Object;

    :try_start_7
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v4

    invoke-static {v3, v4}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-virtual {v5, v6, v7, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_4

    move-object v3, v1

    .line 1183
    goto :goto_1

    :cond_4
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v3, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 1181
    :cond_5
    if-eqz v2, :cond_6

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .end local v1           #i:Ljava/lang/Object;
    .end local v2           #x:Z
    :cond_7
    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame78;->criterion:Ljava/lang/Object;

    invoke-static {v3}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1185
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v3, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1186
    .restart local v1       #i:Ljava/lang/Object;
    :goto_3
    sget-object v3, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v3, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_9
    move-object v0, v4

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v2

    .restart local v2       #x:Z
    if-eqz v2, :cond_9

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1187
    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame78;->criterion:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame78;->str:Ljava/lang/Object;

    :try_start_a
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    :try_start_b
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    move-result v4

    invoke-static {v3, v4}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_8

    move-object v3, v1

    .line 1188
    goto/16 :goto_1

    :cond_8
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v3, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 1186
    :cond_9
    if-eqz v2, :cond_a

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1189
    .end local v1           #i:Ljava/lang/Object;
    .end local v2           #x:Z
    :cond_b
    const-string v3, "Second param is neither char-set, char, or predicate procedure."

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lgnu/kawa/slib/srfi13;->string$Mnindex$Mnright:Lgnu/expr/ModuleMethod;

    aput-object v6, v4, v5

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame78;->criterion:Ljava/lang/Object;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 1176
    .restart local v1       #i:Ljava/lang/Object;
    :catch_0
    move-exception v3

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "x"

    invoke-direct {v5, v3, v6, v10, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 1177
    .restart local v2       #x:Z
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "char=?"

    invoke-direct {v5, v4, v6, v8, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_2
    move-exception v3

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v3, v6, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_3
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    invoke-direct {v4, v3, v5, v9, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .end local v1           #i:Ljava/lang/Object;
    .end local v2           #x:Z
    :catch_4
    move-exception v3

    const-string v4, "srfi13.scm"

    const/16 v5, 0x49b

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v3

    .line 1181
    .restart local v1       #i:Ljava/lang/Object;
    :catch_5
    move-exception v3

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "x"

    invoke-direct {v5, v3, v6, v10, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .restart local v2       #x:Z
    :catch_6
    move-exception v3

    const-string v4, "srfi13.scm"

    const/16 v5, 0x49e

    const/16 v6, 0x9

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v3

    .line 1182
    :catch_7
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v6, v8, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_8
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    invoke-direct {v4, v3, v5, v9, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 1186
    .end local v2           #x:Z
    :catch_9
    move-exception v3

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "x"

    invoke-direct {v5, v3, v6, v10, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 1187
    .restart local v2       #x:Z
    :catch_a
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v6, v8, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_b
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    invoke-direct {v4, v3, v5, v9, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9a

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

    const/16 v1, 0x9b

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

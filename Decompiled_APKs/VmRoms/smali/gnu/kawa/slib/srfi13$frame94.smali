.class public Lgnu/kawa/slib/srfi13$frame94;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->xsubstring$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame94"
.end annotation


# instance fields
.field from:Ljava/lang/Object;

.field final lambda$Fn211:Lgnu/expr/ModuleMethod;

.field final lambda$Fn212:Lgnu/expr/ModuleMethod;

.field final lambda$Fn213:Lgnu/expr/ModuleMethod;

.field final lambda$Fn214:Lgnu/expr/ModuleMethod;

.field final lambda$Fn215:Lgnu/expr/ModuleMethod;

.field maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb9

    invoke-direct {v0, p0, v1, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn212:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xba

    const/16 v2, 0x1001

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "srfi13.scm:1744"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn214:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xbb

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn213:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xbc

    invoke-direct {v0, p0, v1, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn211:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xbd

    const/16 v2, 0x3003

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "srfi13.scm:1740"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn215:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda210(Ljava/lang/Object;)Z
    .locals 2
    .parameter "val"

    .prologue
    .line 1738
    invoke-static {p0}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    .local v0, x:Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame94;->lambda212()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame94;->lambda211()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xba

    if-ne v0, v1, :cond_1

    .line 1744
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi13$frame94;->lambda214(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame94;->lambda213(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xbd

    if-ne v0, v1, :cond_0

    .line 1740
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/srfi13$frame94;->lambda215(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda211()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1741
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame94;->maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

    invoke-static {v1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1742
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn212:Lgnu/expr/ModuleMethod;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn213:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v1

    .line 1750
    :goto_0
    return-object v1

    .line 1749
    :cond_0
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    sget-object v3, Lkawa/lib/strings;->string$Qu:Lgnu/expr/ModuleMethod;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    invoke-virtual {v1, v2, v3, v4, v5}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_1
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1750
    .local v0, slen:I
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .end local v0           #slen:I
    :catch_0
    move-exception v1

    const-string v2, "srfi13.scm"

    const/16 v3, 0x6d5

    const/16 v4, 0x24

    invoke-virtual {v1, v2, v3, v4}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1

    .line 1749
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-length"

    invoke-direct {v3, v2, v4, v6, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method lambda212()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1742
    sget-object v0, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame94;->maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda213(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1743
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame94;->maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1744
    .local v0, to:Ljava/lang/Object;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn214:Lgnu/expr/ModuleMethod;

    .line 1747
    sget-object v4, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "srfi13.scm"

    const/16 v3, 0x6d0

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1
.end method

.method lambda214(Ljava/lang/Object;)Z
    .locals 3
    .parameter "val"

    .prologue
    .line 1744
    invoke-static {p1}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    .local v0, x:Z
    if-eqz v0, :cond_1

    .line 1745
    invoke-static {p1}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v0

    .line 1744
    if-eqz v0, :cond_0

    sget-object v1, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 1746
    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1744
    :goto_0
    return v1

    .restart local p0
    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method lambda215(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "to"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1740
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v2, p3, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1752
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1753
    .local v8, anslen:Ljava/lang/Object;
    .local v9, slen:Ljava/lang/Object;
    :try_start_0
    move-object v0, v8

    check-cast v0, Ljava/lang/Number;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v10}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 1768
    .end local p0
    :goto_0
    return-object v2

    .line 1753
    .restart local p0
    :cond_0
    :try_start_1
    move-object v0, v9

    check-cast v0, Ljava/lang/Number;

    move-object v10, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v10}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1754
    const-string v2, "Cannot replicate empty (sub)string"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    aput-object v5, v3, v4

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    aput-object v4, v3, v6

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    aput-object v4, v3, v7

    aput-object p1, v3, v11

    const/4 v4, 0x4

    aput-object p2, v3, v4

    const/4 v4, 0x5

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 1757
    sget-object v3, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2

    .line 1758
    :try_start_2
    move-object v0, v8

    check-cast v0, Ljava/lang/Number;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    iget-object p0, p0, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    .end local p0
    :try_start_3
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    invoke-static {p0, v2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-static {v3, v2}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .restart local p0
    :cond_2
    sget-object v2, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 1761
    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    invoke-virtual {v2, v3, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_5
    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sget-object v4, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    invoke-virtual {v4, p1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_6
    invoke-static {v4}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-nez v2, :cond_3

    .line 1762
    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    :try_start_7
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    invoke-virtual {v4, v5, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_8
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v4

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 1763
    sget-object v5, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    invoke-virtual {v5, p1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_9
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v3

    invoke-static {v2, v4, v3}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0

    .line 1766
    .restart local p0
    :cond_3
    :try_start_a
    move-object v0, v8

    check-cast v0, Ljava/lang/Number;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    move-result v2

    invoke-static {v2}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1767
    .local v1, ans:Ljava/lang/CharSequence;
    sget-object v2, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lgnu/kawa/slib/srfi13;->$PcMultispanRepcopy$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1768
    goto/16 :goto_0

    .line 1753
    .end local v1           #ans:Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "zero?"

    invoke-direct {v3, v2, v4, v6, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 1754
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "zero?"

    invoke-direct {v3, v2, v4, v6, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 1758
    :catch_2
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "make-string"

    invoke-direct {v3, v2, v4, v6, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .end local p0
    :catch_3
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-ref"

    invoke-direct {v3, v2, v4, v6, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_4
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-ref"

    invoke-direct {v3, v2, v4, v7, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 1761
    .restart local p0
    :catch_5
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "floor"

    invoke-direct {v4, v3, v5, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_6
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v5, "floor"

    invoke-direct {v3, v2, v5, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 1762
    :catch_7
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    invoke-direct {v4, v3, v5, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .end local p0
    :catch_8
    move-exception v2

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    invoke-direct {v4, v2, v5, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 1763
    :catch_9
    move-exception v2

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    invoke-direct {v4, v2, v5, v11, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 1766
    .restart local p0
    :catch_a
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "make-string"

    invoke-direct {v3, v2, v4, v6, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

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

    nop

    :pswitch_data_0
    .packed-switch 0xb9
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xba

    if-ne v0, v1, :cond_0

    .line 1744
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x1

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xbb

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

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xbd

    if-ne v0, v1, :cond_0

    .line 1740
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x3

    iput v0, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

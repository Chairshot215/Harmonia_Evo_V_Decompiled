.class public Lgnu/kawa/slib/srfi13$frame95;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringXcopy$Ex$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame95"
.end annotation


# instance fields
.field final lambda$Fn217:Lgnu/expr/ModuleMethod;

.field final lambda$Fn218:Lgnu/expr/ModuleMethod;

.field final lambda$Fn219:Lgnu/expr/ModuleMethod;

.field final lambda$Fn221:Lgnu/expr/ModuleMethod;

.field maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;

.field sfrom:Ljava/lang/Object;

.field target:Ljava/lang/Object;

.field tstart:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xbe

    invoke-direct {v0, p0, v1, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn218:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xbf

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn219:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc0

    invoke-direct {v0, p0, v1, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn217:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc1

    const/16 v2, 0x3003

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "srfi13.scm:1781"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn221:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda216(Ljava/lang/Object;)Z
    .locals 2
    .parameter "val"

    .prologue
    .line 1779
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

.method static lambda220(Ljava/lang/Object;)Z
    .locals 2
    .parameter "val"

    .prologue
    .line 1785
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
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame95;->lambda218()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame95;->lambda217()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame95;->lambda219(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_0

    .line 1781
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/srfi13$frame95;->lambda221(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda217()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1782
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame95;->maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

    invoke-static {v1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1783
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn218:Lgnu/expr/ModuleMethod;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn219:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v1

    .line 1789
    :goto_0
    return-object v1

    .line 1788
    :cond_0
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1789
    .local v0, slen:I
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

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

    .line 1788
    .end local v0           #slen:I
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-length"

    invoke-direct {v3, v2, v4, v6, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method lambda218()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1783
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame95;->maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda219(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1784
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame95;->maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1785
    .local v0, sto:Ljava/lang/Object;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    sget-object v3, Lgnu/kawa/slib/srfi13;->lambda$Fn220:Lgnu/expr/ModuleMethod;

    .line 1786
    sget-object v4, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
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

    const/16 v3, 0x6f9

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1
.end method

.method lambda221(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "sto"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1781
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1792
    .local v10, tocopy:Ljava/lang/Object;
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1791
    .local v9, tend:Ljava/lang/Object;
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v1, p3, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1794
    .local v8, slen:Ljava/lang/Object;
    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v9}, Lgnu/kawa/slib/srfi13;->checkSubstringSpec(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    :try_start_0
    check-cast v10, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #tocopy:Ljava/lang/Object;
    invoke-static {v10}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v11

    .local v11, x:Z
    if-eqz v11, :cond_1

    if-eqz v11, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1810
    .end local p0
    .end local p1
    .end local p3
    :goto_0
    return-object v1

    .line 1795
    .restart local p0
    .restart local p1
    .restart local p3
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    :try_start_1
    move-object v0, v8

    check-cast v0, Ljava/lang/Number;

    move-object v10, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v10}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1796
    const-string v1, "Cannot replicate empty (sub)string"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 v3, 0x6

    aput-object p2, v2, v3

    const/4 v3, 0x7

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 1800
    sget-object v2, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, v2, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3

    .line 1801
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    iget-object p1, p0, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    .end local p1
    :try_start_2
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object p3, v0

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    invoke-static {p1, v2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v9, v3, v4

    invoke-static {v1, v2, v3}, Lgnu/kawa/slib/srfi13;->stringFill$Ex$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .restart local p1
    .restart local p3
    :cond_3
    sget-object v1, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 1804
    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    invoke-virtual {v1, v2, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_4
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    sget-object v3, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    invoke-virtual {v3, p1, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_5
    invoke-static {v3}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-nez v1, :cond_4

    .line 1805
    iget-object p3, p0, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    .end local p3
    :try_start_6
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    :try_start_7
    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v3

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    :try_start_8
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 1806
    sget-object v4, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    invoke-virtual {v4, v5, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_9
    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v2

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 1807
    sget-object v5, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    invoke-virtual {v5, p1, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    :try_start_a
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    move-result v4

    invoke-static {p3, v3, v1, v2, v4}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 1810
    .restart local p0
    .restart local p1
    .restart local p3
    :cond_4
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lgnu/kawa/slib/srfi13;->$PcMultispanRepcopy$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 1795
    .end local v11           #x:Z
    .restart local v10       #tocopy:Ljava/lang/Object;
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "zero?"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 1796
    .end local v10           #tocopy:Ljava/lang/Object;
    .restart local v11       #x:Z
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "zero?"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 1801
    .end local p1
    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-ref"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .end local p3
    :catch_3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-ref"

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 1804
    .restart local p1
    .restart local p3
    :catch_4
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "floor"

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_5
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v4, "floor"

    const/4 v5, 0x1

    invoke-direct {v2, v1, v4, v5, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 1805
    .end local p3
    :catch_6
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "%string-copy!"

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_7
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "%string-copy!"

    const/4 v5, 0x1

    invoke-direct {v3, v1, v4, v5, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_8
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "%string-copy!"

    const/4 v5, 0x2

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 1806
    .end local p0
    :catch_9
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "%string-copy!"

    const/4 v5, 0x3

    invoke-direct {v3, v1, v4, v5, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 1807
    .end local p1
    :catch_a
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "%string-copy!"

    const/4 v4, 0x4

    invoke-direct {v2, v1, v3, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
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
    .packed-switch 0xbe
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xbf

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

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_0

    .line 1781
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

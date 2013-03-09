.class public Lgnu/kawa/slib/XStrings;
.super Lgnu/expr/ModuleBody;
.source "XStrings.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/XStrings;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static final string$Mnlength:Lgnu/expr/ModuleMethod;

.field public static final substring:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-length"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/XStrings;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "substring"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/XStrings;->Lit1:Lgnu/mapping/SimpleSymbol;

    const v0, 0x7fffffff

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/XStrings;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lgnu/kawa/slib/XStrings;

    invoke-direct {v0}, Lgnu/kawa/slib/XStrings;-><init>()V

    sput-object v0, Lgnu/kawa/slib/XStrings;->$instance:Lgnu/kawa/slib/XStrings;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/XStrings;->$instance:Lgnu/kawa/slib/XStrings;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/slib/XStrings;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/XStrings;->substring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lgnu/kawa/slib/XStrings;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/XStrings;->string$Mnlength:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/XStrings;->$instance:Lgnu/kawa/slib/XStrings;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static stringLength(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "string"

    .prologue
    .line 15
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 18
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lgnu/kawa/slib/XStrings;->Lit0:Lgnu/math/IntNum;

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "string"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v12, -0x2

    .line 1
    sget-object v9, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v9, :cond_1

    move v8, v10

    .local v8, x:Z
    :goto_0
    if-eqz v8, :cond_2

    if-eqz v8, :cond_3

    .line 2
    :cond_0
    :goto_1
    sget-object v9, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 13
    :goto_2
    return-object v9

    .end local v8           #x:Z
    :cond_1
    move v8, v11

    .line 1
    goto :goto_0

    .line 3
    .restart local v8       #x:Z
    :cond_2
    sget-object v9, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v9, :cond_4

    move v8, v10

    .line 2
    :goto_3
    if-eqz v8, :cond_5

    if-nez v8, :cond_0

    .line 6
    :cond_3
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 6
    .local v7, slen:I
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .local v6, sindex:I
    sub-int v2, v6, v10

    .local v2, index:I
    :try_start_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .local v3, len:I
    sub-int v1, v7, v2

    .local v1, avail:I
    if-le v3, v1, :cond_6

    move v4, v1

    .line 13
    .local v4, rlen:I
    :goto_4
    add-int v9, v2, v4

    invoke-virtual {v5, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .end local v1           #avail:I
    .end local v2           #index:I
    .end local v3           #len:I
    .end local v4           #rlen:I
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #sindex:I
    .end local v7           #slen:I
    :cond_4
    move v8, v11

    .line 3
    goto :goto_3

    .line 2
    :cond_5
    sget-object v9, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p2, v9, :cond_3

    goto :goto_1

    .restart local v1       #avail:I
    .restart local v2       #index:I
    .restart local v3       #len:I
    .restart local v5       #s:Ljava/lang/String;
    .restart local v6       #sindex:I
    .restart local v7       #slen:I
    :cond_6
    move v4, v3

    .line 6
    goto :goto_4

    .end local v1           #avail:I
    .end local v2           #index:I
    .end local v3           #len:I
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #sindex:I
    .end local v7           #slen:I
    :catch_0
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    const-string v11, "s"

    invoke-direct {v10, v9, v11, v12, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 8
    .restart local v5       #s:Ljava/lang/String;
    .restart local v7       #slen:I
    :catch_1
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    const-string v11, "sindex"

    invoke-direct {v10, v9, v11, v12, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 10
    .restart local v2       #index:I
    .restart local v6       #sindex:I
    :catch_2
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    const-string v11, "len"

    invoke-direct {v10, v9, v11, v12, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15
    invoke-static {p2}, Lgnu/kawa/slib/XStrings;->stringLength(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

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

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    invoke-static {p2, p3}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
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

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
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

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 15
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method

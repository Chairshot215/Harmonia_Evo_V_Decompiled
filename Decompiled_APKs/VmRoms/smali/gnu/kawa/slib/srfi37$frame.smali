.class public Lgnu/kawa/slib/srfi37$frame;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37;->argsFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field operand$Mnproc:Ljava/lang/Object;

.field options:Ljava/lang/Object;

.field unrecognized$Mnoption$Mnproc:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "l"
    .parameter "$Qu"

    .prologue
    .line 63
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_0
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 65
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/kawa/slib/srfi37$frame;->lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 69
    new-instance v0, Lgnu/kawa/slib/srfi37$frame0;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37$frame0;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi37$frame0;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v0, Lgnu/kawa/slib/srfi37$frame0;->name:Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame;->options:Ljava/lang/Object;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "index"
    .parameter "shorts"
    .parameter "args"
    .parameter "seeds"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 78
    new-instance v5, Lgnu/kawa/slib/srfi37$frame1;

    invoke-direct {v5}, Lgnu/kawa/slib/srfi37$frame1;-><init>()V

    iput-object p0, v5, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v5, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    iput-object p2, v5, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    iput-object p3, v5, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    iput-object p4, v5, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    .line 79
    sget-object v3, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v4, v5, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_0
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    .line 80
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    .end local p0
    :goto_0
    return-object v2

    .line 81
    .restart local p0
    :cond_0
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_1
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v4, v5, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    :try_start_2
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    invoke-static {v2, v3}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    iput-char v2, v5, Lgnu/kawa/slib/srfi37$frame1;->name:C

    .line 82
    iget-char v2, v5, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, x:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2

    move-object v2, v1

    :goto_1
    iput-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    .line 87
    sget-object v2, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v4, v5, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object p0, v5, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    .end local p0
    :try_start_3
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_4
    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v1

    .local v1, x:Z
    if-eqz v1, :cond_6

    .line 88
    iget-object p0, v5, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_5
    check-cast p0, Lgnu/kawa/slib/option$Mntype;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p0}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v1

    .local v1, x:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_4

    .line 90
    .end local v1           #x:Ljava/lang/Object;
    :cond_1
    :goto_2
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 82
    .restart local v1       #x:Ljava/lang/Object;
    .restart local p0
    :cond_2
    iget-char v2, v5, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-static {v2}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v6, p0, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v6}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object v2

    goto :goto_1

    .line 88
    .end local p0
    :cond_3
    iget-object p0, v5, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_6
    check-cast p0, Lgnu/kawa/slib/option$Mntype;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p0}, Lgnu/kawa/slib/srfi37;->isOptionOptionalArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    .line 100
    .end local v1           #x:Ljava/lang/Object;
    :cond_4
    iget-object p0, v5, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_7
    check-cast p0, Lgnu/kawa/slib/option$Mntype;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p0}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #x:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_7

    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-static {v2}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 102
    :cond_5
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 87
    .local v1, x:Z
    :cond_6
    if-eqz v1, :cond_4

    goto :goto_2

    .line 100
    .local v1, x:Ljava/lang/Object;
    :cond_7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_5

    .line 110
    :cond_8
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 79
    .end local v1           #x:Ljava/lang/Object;
    .restart local p0
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-length"

    invoke-direct {v4, v3, v5, v8, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 81
    :catch_1
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    invoke-direct {v4, v3, v5, v8, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_2
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    const/4 v6, 0x2

    invoke-direct {v3, v2, v5, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 87
    .end local p0
    .restart local v1       #x:Ljava/lang/Object;
    :catch_3
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-length"

    invoke-direct {v3, v2, v4, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_4
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "x"

    const/4 v6, -0x2

    invoke-direct {v4, v3, v5, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 88
    .local v1, x:Z
    :catch_5
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "option-required-arg?"

    invoke-direct {v3, v2, v4, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 89
    .local v1, x:Ljava/lang/Object;
    :catch_6
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "option-optional-arg?"

    invoke-direct {v3, v2, v4, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 100
    .end local v1           #x:Ljava/lang/Object;
    :catch_7
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "option-required-arg?"

    invoke-direct {v3, v2, v4, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public lambda4scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "operands"
    .parameter "seeds"

    .prologue
    .line 122
    new-instance v0, Lgnu/kawa/slib/srfi37$frame2;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37$frame2;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi37$frame2;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v0, Lgnu/kawa/slib/srfi37$frame2;->operands:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/srfi37$frame2;->seeds:Ljava/lang/Object;

    .line 123
    iget-object v1, v0, Lgnu/kawa/slib/srfi37$frame2;->operands:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v2, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame2;->seeds:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lgnu/kawa/slib/srfi37$frame2;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame2;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "args"
    .parameter "seeds"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 130
    new-instance v6, Lgnu/kawa/slib/srfi37$frame3;

    invoke-direct {v6}, Lgnu/kawa/slib/srfi37$frame3;-><init>()V

    iput-object p0, v6, Lgnu/kawa/slib/srfi37$frame3;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p2, v6, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    sget-object v4, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v5, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 215
    .end local p0
    :goto_0
    return-object v4

    .line 133
    .restart local p0
    :cond_0
    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 134
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v6, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iput-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    .line 137
    const-string v4, "--"

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    invoke-static {v4, v5}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lgnu/kawa/slib/srfi37$frame;->lambda4scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 142
    :cond_1
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_0
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    move v3, v8

    .local v3, x:Z
    :goto_1
    if-eqz v3, :cond_b

    .line 148
    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_1
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v4, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    .line 147
    if-eqz v3, :cond_9

    .line 149
    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_2
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v4, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    .line 147
    if-eqz v3, :cond_7

    .line 150
    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_3
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v4, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v4, 0x1

    .line 147
    if-eqz v3, :cond_5

    .line 151
    sget-object v1, Lgnu/kawa/slib/srfi37;->Lit3:Lgnu/math/IntNum;

    .line 152
    :goto_2
    sget-object v5, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_4
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 147
    :goto_3
    iput-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->temp:Ljava/lang/Object;

    .line 137
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->temp:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_d

    .line 10000
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .end local v3           #x:Z
    :cond_2
    move v3, v9

    .line 142
    goto :goto_1

    .line 152
    .restart local v3       #x:Z
    :cond_3
    sget-object v7, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_5
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v5

    invoke-static {v4, v5}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v7, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v1

    .line 155
    goto :goto_3

    .line 157
    :cond_4
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v4, v5, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, index:Ljava/lang/Object;
    goto :goto_2

    .line 147
    .end local v1           #index:Ljava/lang/Object;
    :cond_5
    if-eqz v3, :cond_6

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_8
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_a

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_a
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_b
    if-eqz v3, :cond_c

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_c
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 181
    :cond_d
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_7
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_10

    move v3, v8

    :goto_4
    if-eqz v3, :cond_14

    .line 182
    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_8
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    invoke-static {v4, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    .line 181
    if-eqz v3, :cond_11

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_9
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {v4, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 185
    :cond_e
    :goto_5
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_a
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_b
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v4, v10, v5}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    .line 186
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, x:Ljava/lang/Object;
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_15

    move-object v4, v3

    :goto_6
    iput-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->option:Ljava/lang/Object;

    .line 192
    iget-object p0, v6, Lgnu/kawa/slib/srfi37$frame3;->option:Ljava/lang/Object;

    .end local p0
    :try_start_c
    check-cast p0, Lgnu/kawa/slib/option$Mntype;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    invoke-static {p0}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_16

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 194
    :cond_f
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn20:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .local v3, x:Z
    .restart local p0
    :cond_10
    move v3, v9

    .line 181
    goto :goto_4

    :cond_11
    if-nez v3, :cond_e

    .line 209
    :cond_12
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_d
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-le v4, v8, :cond_18

    move v3, v8

    :goto_7
    if-eqz v3, :cond_19

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_e
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_e

    invoke-static {v4, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 212
    :cond_13
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_f
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_f

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_10
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_10

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v4, v8, v5}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 213
    .local v2, shorts:Ljava/lang/CharSequence;
    sget-object v4, Lgnu/kawa/slib/srfi37;->Lit4:Lgnu/math/IntNum;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, v4, v2, v5, v6}, Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 181
    .end local v2           #shorts:Ljava/lang/CharSequence;
    :cond_14
    if-eqz v3, :cond_12

    goto :goto_5

    .line 186
    .local v3, x:Ljava/lang/Object;
    :cond_15
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    invoke-static {v4}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v8, p0, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {v4, v5, v7, v8}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object v4

    goto :goto_6

    .line 192
    .end local p0
    :cond_16
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_f

    .line 201
    :cond_17
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn21:Lgnu/expr/ModuleMethod;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn22:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .local v3, x:Z
    .restart local p0
    :cond_18
    move v3, v9

    .line 209
    goto :goto_7

    :cond_19
    if-nez v3, :cond_13

    .line 215
    :cond_1a
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn23:Lgnu/expr/ModuleMethod;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn24:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 147
    .end local v3           #x:Z
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 148
    .restart local v3       #x:Z
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 149
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 150
    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 152
    :catch_4
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 154
    :catch_5
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_6
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v6, v10, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 181
    :catch_7
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 182
    :catch_8
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 183
    :catch_9
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 185
    :catch_a
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_b
    move-exception v4

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v4, v7, v8, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 192
    .end local p0
    .local v3, x:Ljava/lang/Object;
    :catch_c
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "option-required-arg?"

    invoke-direct {v5, v4, v6, v9, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 209
    .local v3, x:Z
    .restart local p0
    :catch_d
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 210
    :catch_e
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 212
    :catch_f
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_10
    move-exception v4

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v4, v7, v8, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

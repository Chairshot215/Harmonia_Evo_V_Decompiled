.class public Lgnu/kawa/slib/printf$frame3;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf$frame2;->lambda10(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame3"
.end annotation


# instance fields
.field final lambda$Fn7:Lgnu/expr/ModuleMethod;

.field sgn:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/printf$frame2;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "printf.scm:84"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame3;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/printf$frame3;->lambda11(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda11(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "i"
    .parameter "idigs"

    .prologue
    .line 84
    new-instance v2, Lgnu/kawa/slib/printf$frame4;

    invoke-direct {v2}, Lgnu/kawa/slib/printf$frame4;-><init>()V

    iput-object p0, v2, Lgnu/kawa/slib/printf$frame4;->staticLink:Lgnu/kawa/slib/printf$frame3;

    iput-object p2, v2, Lgnu/kawa/slib/printf$frame4;->idigs:Ljava/lang/Object;

    .line 87
    iget-object v4, v2, Lgnu/kawa/slib/printf$frame4;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    .line 58
    sget-object v2, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame3;->staticLink:Lgnu/kawa/slib/printf$frame2;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    iget v3, v3, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, x:Z
    if-eqz v1, :cond_1

    sget-object v3, Lgnu/kawa/slib/printf;->Lit11:Lgnu/text/Char;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame3;->staticLink:Lgnu/kawa/slib/printf$frame2;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    iget-object p0, v2, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    .end local p0
    :try_start_1
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    invoke-static {p0, v2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-static {v3, v2}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    :cond_0
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v3, p1, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 61
    :goto_0
    return-object v2

    .line 58
    .restart local p0
    :cond_1
    if-nez v1, :cond_0

    .line 61
    .end local p0
    :cond_2
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v2, v4, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 58
    .end local v1           #x:Z
    .restart local p0
    :catch_0
    move-exception v2

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "x"

    const/4 v6, -0x2

    invoke-direct {v4, v2, v5, v6, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 59
    .end local p0
    .restart local v1       #x:Z
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-ref"

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_2
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-ref"

    const/4 v5, 0x2

    invoke-direct {v3, v2, v4, v5, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 84
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

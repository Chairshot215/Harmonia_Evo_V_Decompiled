.class public Lgnu/kawa/slib/srfi13$frame18;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13$frame17;->lambda41(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame18"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn42:Lgnu/expr/ModuleMethod;

.field final lambda$Fn43:Lgnu/expr/ModuleMethod;

.field rest:Ljava/lang/Object;

.field start1:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi13$frame17;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame18;->lambda$Fn42:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x25

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame18;->lambda$Fn43:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame18;->lambda42()Ljava/lang/Object;

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

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame18;->lambda43(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda42()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 629
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnsuffix$Mnlength$Mnci:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame18;->staticLink:Lgnu/kawa/slib/srfi13$frame17;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame17;->s2:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame18;->rest:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda43(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter "start2"
    .parameter "end2"

    .prologue
    .line 631
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame18;->staticLink:Lgnu/kawa/slib/srfi13$frame17;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame17;->s1:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame18;->start1:Ljava/lang/Object;

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame18;->end1:Ljava/lang/Object;

    :try_start_1
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame18;->staticLink:Lgnu/kawa/slib/srfi13$frame17;

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame17;->s2:Ljava/lang/Object;

    :try_start_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    :try_start_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    invoke-static/range {v1 .. v6}, Lgnu/kawa/slib/srfi13;->$PcStringSuffixLengthCi(Ljava/lang/Object;IILjava/lang/Object;II)I

    move-result v1

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v4, "%string-suffix-length-ci"

    const/4 v5, 0x1

    invoke-direct {v2, v1, v4, v5, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "%string-suffix-length-ci"

    const/4 v5, 0x2

    invoke-direct {v2, v1, v3, v5, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "%string-suffix-length-ci"

    const/4 v4, 0x4

    invoke-direct {v2, v1, v3, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "%string-suffix-length-ci"

    const/4 v4, 0x5

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x24

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

    const/16 v1, 0x25

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

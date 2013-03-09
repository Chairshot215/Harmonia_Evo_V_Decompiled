.class public Lgnu/kawa/slib/srfi13$frame52;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13$frame51;->lambda125(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame52"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn126:Lgnu/expr/ModuleMethod;

.field final lambda$Fn127:Lgnu/expr/ModuleMethod;

.field rest:Ljava/lang/Object;

.field start1:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi13$frame51;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame52;->lambda$Fn126:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x69

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame52;->lambda$Fn127:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda128(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .parameter "i"

    .prologue
    .line 865
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame52;->lambda126()Ljava/lang/Object;

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

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame52;->lambda127(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda126()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 857
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnci$Ls$Eq:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame52;->staticLink:Lgnu/kawa/slib/srfi13$frame51;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame51;->s2:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame52;->rest:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda127(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "start2"
    .parameter "end2"

    .prologue
    .line 859
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame52;->staticLink:Lgnu/kawa/slib/srfi13$frame51;

    iget-object v0, v0, Lgnu/kawa/slib/srfi13$frame51;->s1:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame52;->staticLink:Lgnu/kawa/slib/srfi13$frame51;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame51;->s2:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    move v9, v0

    .local v9, x:Z
    :goto_0
    if-eqz v9, :cond_2

    sget-object v0, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame52;->start1:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_3

    .line 860
    :cond_0
    sget-object v0, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame52;->end1:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 862
    :goto_1
    return-object v0

    .line 859
    .end local v9           #x:Z
    :cond_1
    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    .restart local v9       #x:Z
    :cond_2
    if-nez v9, :cond_0

    .line 862
    :cond_3
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame52;->staticLink:Lgnu/kawa/slib/srfi13$frame51;

    iget-object v0, v0, Lgnu/kawa/slib/srfi13$frame51;->s1:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame52;->start1:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame52;->end1:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame52;->staticLink:Lgnu/kawa/slib/srfi13$frame51;

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame51;->s2:Ljava/lang/Object;

    sget-object v6, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    sget-object v7, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    sget-object v8, Lgnu/kawa/slib/srfi13;->lambda$Fn128:Lgnu/expr/ModuleMethod;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v8}, Lgnu/kawa/slib/srfi13;->$PcStringCompareCi(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x68

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

    const/16 v1, 0x69

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

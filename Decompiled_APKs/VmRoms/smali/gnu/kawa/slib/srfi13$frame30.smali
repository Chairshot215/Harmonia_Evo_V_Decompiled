.class public Lgnu/kawa/slib/srfi13$frame30;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13$frame29;->lambda65(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame30"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn66:Lgnu/expr/ModuleMethod;

.field final lambda$Fn67:Lgnu/expr/ModuleMethod;

.field rest:Ljava/lang/Object;

.field start1:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi13$frame29;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x3c

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame30;->lambda$Fn66:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x3d

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame30;->lambda$Fn67:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame30;->lambda66()Ljava/lang/Object;

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

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame30;->lambda67(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda66()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 737
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mncompare$Mnci:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame30;->staticLink:Lgnu/kawa/slib/srfi13$frame29;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame29;->s2:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame30;->rest:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda67(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "start2"
    .parameter "end2"

    .prologue
    .line 739
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame30;->staticLink:Lgnu/kawa/slib/srfi13$frame29;

    iget-object v0, v0, Lgnu/kawa/slib/srfi13$frame29;->s1:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame30;->start1:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame30;->end1:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame30;->staticLink:Lgnu/kawa/slib/srfi13$frame29;

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame29;->s2:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame30;->staticLink:Lgnu/kawa/slib/srfi13$frame29;

    iget-object v6, v4, Lgnu/kawa/slib/srfi13$frame29;->proc$Ls:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame30;->staticLink:Lgnu/kawa/slib/srfi13$frame29;

    iget-object v7, v4, Lgnu/kawa/slib/srfi13$frame29;->proc$Eq:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame30;->staticLink:Lgnu/kawa/slib/srfi13$frame29;

    iget-object v8, v4, Lgnu/kawa/slib/srfi13$frame29;->proc$Gr:Ljava/lang/Object;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v8}, Lgnu/kawa/slib/srfi13;->$PcStringCompareCi(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x3c

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

    const/16 v1, 0x3d

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

.class public Lgnu/kawa/slib/srfi1$frame10;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->pairFoldRight$V(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame10"
.end annotation


# instance fields
.field f:Lgnu/mapping/Procedure;

.field zero:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda19recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "lists"

    .prologue
    .line 884
    invoke-static {p1}, Lgnu/kawa/slib/srfi1;->$PcCdrs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 885
    .local v0, cdrs:Ljava/lang/Object;
    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame10;->zero:Ljava/lang/Object;

    .line 886
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v2, p0, Lgnu/kawa/slib/srfi1$frame10;->f:Lgnu/mapping/Procedure;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v0}, Lgnu/kawa/slib/srfi1$frame10;->lambda19recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lgnu/kawa/slib/srfi1;->append$Ex$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public lambda20recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "lis"

    .prologue
    .line 889
    invoke-static {p1}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame10;->zero:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame10;->f:Lgnu/mapping/Procedure;

    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/slib/srfi1$frame10;->lambda20recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

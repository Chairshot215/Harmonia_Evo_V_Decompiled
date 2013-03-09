.class public Lgnu/kawa/slib/srfi1$frame9;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->foldRight$V(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame9"
.end annotation


# instance fields
.field knil:Ljava/lang/Object;

.field kons:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda17recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "lists"

    .prologue
    .line 871
    invoke-static {p1}, Lgnu/kawa/slib/srfi1;->$PcCdrs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 872
    .local v0, cdrs:Ljava/lang/Object;
    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame9;->knil:Ljava/lang/Object;

    .line 873
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v2, p0, Lgnu/kawa/slib/srfi1$frame9;->kons:Lgnu/mapping/Procedure;

    invoke-virtual {p0, v0}, Lgnu/kawa/slib/srfi1$frame9;->lambda17recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lgnu/kawa/slib/srfi1;->$PcCars$Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public lambda18recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "lis"

    .prologue
    .line 876
    invoke-static {p1}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame9;->knil:Ljava/lang/Object;

    .line 878
    :goto_0
    return-object v1

    .line 877
    :cond_0
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 878
    .local v0, head:Ljava/lang/Object;
    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame9;->kons:Lgnu/mapping/Procedure;

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/kawa/slib/srfi1$frame9;->lambda18recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

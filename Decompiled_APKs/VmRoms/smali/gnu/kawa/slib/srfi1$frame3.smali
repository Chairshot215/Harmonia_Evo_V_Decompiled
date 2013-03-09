.class public Lgnu/kawa/slib/srfi1$frame3;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->unzip4(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame3"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda8recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "lis"

    .prologue
    new-instance v0, Lgnu/kawa/slib/srfi1$frame4;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame4;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    .line 642
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    invoke-static {v1}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v1}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 644
    :goto_0
    return-object v0

    .line 643
    :cond_0
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v2, v0, Lgnu/kawa/slib/srfi1$frame4;->lis:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgnu/kawa/slib/srfi1$frame4;->elt:Ljava/lang/Object;

    .line 644
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame4;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame4;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

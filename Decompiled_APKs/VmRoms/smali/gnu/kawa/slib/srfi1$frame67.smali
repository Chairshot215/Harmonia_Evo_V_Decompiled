.class public Lgnu/kawa/slib/srfi1$frame67;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs$SlNoTest(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame67"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda92recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "lists"

    .prologue
    new-instance v0, Lgnu/kawa/slib/srfi1$frame68;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame68;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame68;->lists:Ljava/lang/Object;

    .line 793
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame68;->lists:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame68;->lambda$Fn71:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame68;->lambda$Fn72:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    .line 798
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.class public Lgnu/kawa/slib/srfi1$frame30;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->listIndex$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame30"
.end annotation


# instance fields
.field pred:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda44lp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "lists"
    .parameter "n"

    .prologue
    new-instance v0, Lgnu/kawa/slib/srfi1$frame31;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame31;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame31;->staticLink:Lgnu/kawa/slib/srfi1$frame30;

    iput-object p1, v0, Lgnu/kawa/slib/srfi1$frame31;->lists:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/srfi1$frame31;->n:Ljava/lang/Object;

    .line 1404
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame31;->lambda$Fn28:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame31;->lambda$Fn29:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

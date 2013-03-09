.class public Lgnu/kawa/slib/srfi1$frame7;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->fold$V(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame7"
.end annotation


# instance fields
.field kons:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda14lp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "lists"
    .parameter "ans"

    .prologue
    new-instance v0, Lgnu/kawa/slib/srfi1$frame8;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame8;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame8;->staticLink:Lgnu/kawa/slib/srfi1$frame7;

    iput-object p1, v0, Lgnu/kawa/slib/srfi1$frame8;->lists:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/srfi1$frame8;->ans:Ljava/lang/Object;

    .line 859
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame8;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame8;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

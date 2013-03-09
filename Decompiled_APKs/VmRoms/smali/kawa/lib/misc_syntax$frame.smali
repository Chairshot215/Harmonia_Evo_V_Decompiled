.class public Lkawa/lib/misc_syntax$frame;
.super Lgnu/expr/ModuleBody;
.source "misc_syntax.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/misc_syntax;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field k:Ljava/lang/Object;

.field p:Lgnu/mapping/InPort;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda4f()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 59
    iget-object v1, p0, Lkawa/lib/misc_syntax$frame;->p:Lgnu/mapping/InPort;

    invoke-static {v1}, Lkawa/lib/ports;->read(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, x:Ljava/lang/Object;
    invoke-static {v0}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lkawa/lib/misc_syntax$frame;->p:Lgnu/mapping/InPort;

    invoke-static {v1}, Lkawa/lib/ports;->closeInputPort(Lgnu/mapping/InPort;)Ljava/lang/Object;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 62
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lgnu/lists/Pair;

    iget-object v2, p0, Lkawa/lib/misc_syntax$frame;->k:Ljava/lang/Object;

    invoke-static {v2, v0}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lkawa/lib/misc_syntax$frame;->lambda4f()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

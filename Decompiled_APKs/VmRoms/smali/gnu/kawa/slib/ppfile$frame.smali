.class public Lgnu/kawa/slib/ppfile$frame;
.super Lgnu/expr/ModuleBody;
.source "ppfile.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/ppfile;->pprintFilterFile$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field filter:Ljava/lang/Object;

.field final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field optarg:Lgnu/lists/LList;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "ppfile.scm:27"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/ppfile$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 27
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/ppfile$frame;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "port"

    .prologue
    .line 27
    new-instance v2, Lgnu/kawa/slib/ppfile$frame0;

    invoke-direct {v2}, Lgnu/kawa/slib/ppfile$frame0;-><init>()V

    iput-object p0, v2, Lgnu/kawa/slib/ppfile$frame0;->staticLink:Lgnu/kawa/slib/ppfile$frame;

    iput-object p1, v2, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    .line 34
    iget-object v0, v2, Lgnu/kawa/slib/ppfile$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    .line 29
    .local v0, fun:Lgnu/mapping/Procedure;
    iget-object v3, p0, Lgnu/kawa/slib/ppfile$frame;->optarg:Lgnu/lists/LList;

    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lkawa/lib/ports;->current$Mnoutput$Mnport:Lgnu/mapping/LocationProc;

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 31
    .local v1, outport:Ljava/lang/Object;
    :goto_0
    invoke-static {v1}, Lkawa/lib/ports;->isOutputPort(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-virtual {v2, v1}, Lgnu/kawa/slib/ppfile$frame0;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 33
    :goto_1
    return-object v2

    .line 29
    .end local v1           #outport:Ljava/lang/Object;
    :cond_0
    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v4, p0, Lgnu/kawa/slib/ppfile$frame;->optarg:Lgnu/lists/LList;

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 33
    .restart local v1       #outport:Ljava/lang/Object;
    :cond_1
    :try_start_0
    invoke-static {v1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {v2, v0}, Lkawa/lib/ports;->callWithOutputFile(Lgnu/text/Path;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "call-with-output-file"

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 27
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x1

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

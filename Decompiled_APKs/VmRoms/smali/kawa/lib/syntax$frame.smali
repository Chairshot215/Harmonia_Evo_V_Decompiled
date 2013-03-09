.class public Lkawa/lib/syntax$frame;
.super Lgnu/expr/ModuleBody;
.source "syntax.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/syntax;->importMapper(Ljava/lang/Object;)Lgnu/mapping/Procedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field list:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "syntax.scm:83"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lkawa/lib/syntax$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0, p2}, Lkawa/lib/syntax$frame;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "name"

    .prologue
    .line 83
    iget-object v0, p0, Lkawa/lib/syntax$frame;->list:Ljava/lang/Object;

    .local v0, l:Ljava/lang/Object;
    move-object v4, p1

    move-object v1, v0

    .line 85
    .end local v0           #l:Ljava/lang/Object;
    .local v1, l:Ljava/lang/Object;
    :goto_0
    if-nez v4, :cond_1

    const/4 v5, 0x1

    move v3, v5

    .local v3, x:Z
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v3, :cond_3

    .line 87
    :cond_0
    return-object v4

    .line 85
    .end local v3           #x:Z
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    goto :goto_1

    .restart local v3       #x:Z
    :cond_2
    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    :cond_3
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v6, Lkawa/lib/lists;->caar:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkawa/lib/lists;->cdar:Lgnu/expr/GenericProc;

    invoke-virtual {v7, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v4, v7}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v1           #l:Ljava/lang/Object;
    .restart local v0       #l:Ljava/lang/Object;
    .local v2, n:Ljava/lang/Object;
    move-object v4, v2

    move-object v1, v0

    .end local v0           #l:Ljava/lang/Object;
    .restart local v1       #l:Ljava/lang/Object;
    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_0

    .line 83
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

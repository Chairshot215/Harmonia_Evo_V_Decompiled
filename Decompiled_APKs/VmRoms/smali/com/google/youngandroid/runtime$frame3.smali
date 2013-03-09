.class public Lcom/google/youngandroid/runtime$frame3;
.super Lgnu/expr/ModuleBody;
.source "runtime6404997055479569743.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->inUi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame3"
.end annotation


# instance fields
.field final lambda$Fn10:Lgnu/expr/ModuleMethod;

.field promise:Ljava/lang/Object;

.field return$Mntag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/tmp/runtime6404997055479569743.scm:2203"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame3;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2203
    invoke-virtual {p0}, Lcom/google/youngandroid/runtime$frame3;->lambda12()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda12()Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2203
    iget-object v1, p0, Lcom/google/youngandroid/runtime$frame3;->return$Mntag:Ljava/lang/Object;

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    check-cast v1, [Ljava/lang/Object;

    :goto_0
    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    invoke-static {v1}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)V

    .line 2205
    iget-object v2, p0, Lcom/google/youngandroid/runtime$frame3;->return$Mntag:Ljava/lang/Object;

    .line 2207
    const/4 v1, 0x3

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v4, Lcom/google/youngandroid/runtime;->$Stsuccess$St:Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    sget-object v4, Lcom/google/youngandroid/runtime;->$Stresult$Mnindicator$St:Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v4, 0x2

    sget-object v1, Lcom/google/youngandroid/runtime;->get$Mndisplay$Mnrepresentation:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Procedure;

    .line 2210
    iget-object v5, p0, Lcom/google/youngandroid/runtime$frame3;->promise:Ljava/lang/Object;

    invoke-static {v5}, Lkawa/lib/misc;->force(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v3}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2220
    :goto_1
    invoke-static {v2, v1}, Lcom/google/youngandroid/runtime;->sendToBlock(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 2203
    :cond_0
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v6

    move-object v1, v2

    goto :goto_0

    .line 2210
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2212
    .local v0, exception:Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    :try_start_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)V

    .line 2213
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/youngandroid/runtime;->$Stfailure$St:Ljava/lang/Object;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/youngandroid/runtime;->$Stresult$Mnindicator$St:Ljava/lang/Object;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    .end local v0           #exception:Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 2218
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)V

    .line 2219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2220
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/google/youngandroid/runtime;->$Stfailure$St:Ljava/lang/Object;

    aput-object v3, v1, v6

    sget-object v3, Lcom/google/youngandroid/runtime;->$Stresult$Mnindicator$St:Ljava/lang/Object;

    aput-object v3, v1, v7

    const-string v3, "An internal system error occurred: "

    aput-object v3, v1, v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    goto :goto_1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2203
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

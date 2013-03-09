.class public Lcom/google/youngandroid/runtime$frame;
.super Lgnu/expr/ModuleBody;
.source "runtime6404997055479569743.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->addComponentWithinRepl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field component$Mnname:Ljava/lang/Object;

.field component$Mnto$Mnadd:Ljava/lang/Object;

.field existing$Mncomponent:Ljava/lang/Object;

.field init$Mnprops$Mnthunk:Ljava/lang/Object;

.field final lambda$Fn1:Lgnu/expr/ModuleMethod;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/tmp/runtime6404997055479569743.scm:89"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/youngandroid/runtime$frame;->lambda1()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda1()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame;->init$Mnprops$Mnthunk:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lcom/google/youngandroid/runtime$frame;->init$Mnprops$Mnthunk:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame;->existing$Mncomponent:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    .line 92
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Copying component properties for ~A"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/youngandroid/runtime$frame;->component$Mnname:Ljava/lang/Object;

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame;->existing$Mncomponent:Ljava/lang/Object;

    :try_start_0
    check-cast v0, Lcom/google/appinventor/components/runtime/Component;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/google/youngandroid/runtime$frame;->component$Mnto$Mnadd:Ljava/lang/Object;

    .end local p0
    :try_start_1
    check-cast p0, Lcom/google/appinventor/components/runtime/Component;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/PropertyUtil;->copyComponentProperties(Lcom/google/appinventor/components/runtime/Component;Lcom/google/appinventor/components/runtime/Component;)Lcom/google/appinventor/components/runtime/Component;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "com.google.appinventor.components.runtime.util.PropertyUtil.copyComponentProperties(com.google.appinventor.components.runtime.Component,com.google.appinventor.components.runtime.Component)"

    invoke-direct {v2, v1, v3, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .end local p0
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "com.google.appinventor.components.runtime.util.PropertyUtil.copyComponentProperties(com.google.appinventor.components.runtime.Component,com.google.appinventor.components.runtime.Component)"

    invoke-direct {v1, v0, v2, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
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

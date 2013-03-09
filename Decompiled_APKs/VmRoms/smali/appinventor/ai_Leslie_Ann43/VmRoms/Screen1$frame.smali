.class public Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;
.super Lgnu/expr/ModuleBody;
.source "Screen1.yail"


# instance fields
.field $main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 444
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    .line 540
    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda2()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    invoke-virtual {v0}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->$define()V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda3()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda4()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda5()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda6()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lambda7()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 374
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    invoke-virtual {v0, p2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->androidLogForm(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_3
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0, p2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 363
    :pswitch_4
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    invoke-virtual {v0, p2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 374
    :pswitch_5
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    invoke-virtual {v0, p2}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->processException(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 308
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "is-bound-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 436
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 316
    :pswitch_3
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    :try_start_2
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 337
    :pswitch_4
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 353
    :pswitch_5
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 436
    :pswitch_6
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "add-to-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 302
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 316
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "add-to-global-var-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 400
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 344
    :sswitch_0
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    invoke-virtual {v0, p2, p3, p4, p5}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 400
    :sswitch_1
    iget-object v0, p0, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1$frame;->$main:Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    :try_start_0
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast p3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast p4, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    check-cast p5, [Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual {v0, p2, p3, p4, p5}, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 401
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 402
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 403
    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    const/4 v3, 0x4

    invoke-direct {v1, v0, v2, v3, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 540
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

    .line -1
    :pswitch_0
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :pswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :pswitch_3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :pswitch_4
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 444
    :pswitch_5
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 540
    :pswitch_6
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, -0xbffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 289
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 374
    :goto_0
    return v0

    :pswitch_1
    instance-of v0, p2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 363
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 308
    :pswitch_3
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 302
    :pswitch_4
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 289
    :pswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, -0xbffff

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 298
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 436
    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 353
    :pswitch_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 337
    :pswitch_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 316
    :pswitch_4
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 302
    :pswitch_5
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 298
    :pswitch_6
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 344
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 400
    :goto_0
    return v0

    :sswitch_0
    instance-of v0, p2, Lappinventor/ai_Leslie_Ann43/VmRoms/Screen1;

    if-nez v0, :cond_0

    const v0, -0xbffff

    goto :goto_0

    :cond_0
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez v0, :cond_1

    const v0, -0xbfffe

    goto :goto_0

    :cond_1
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Ljava/lang/String;

    if-nez v0, :cond_2

    const v0, -0xbfffd

    goto :goto_0

    :cond_2
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of v0, p5, Ljava/lang/String;

    if-nez v0, :cond_3

    const v0, -0xbfffc

    goto :goto_0

    :cond_3
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 344
    :sswitch_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

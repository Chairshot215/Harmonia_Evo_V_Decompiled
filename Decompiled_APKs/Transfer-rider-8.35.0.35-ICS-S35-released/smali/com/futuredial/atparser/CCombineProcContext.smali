.class public Lcom/futuredial/atparser/CCombineProcContext;
.super Ljava/lang/Object;
.source "CCombineProcContext.java"


# instance fields
.field private m_pCombineProc:Lcom/futuredial/atparser/CCmobineProcType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/futuredial/atparser/CCombineProcContext;->m_pCombineProc:Lcom/futuredial/atparser/CCmobineProcType;

    .line 18
    if-eqz p1, :cond_0

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, clazzName:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.futuredial.atparser."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 25
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/atparser/CCmobineProcType;

    iput-object v4, p0, Lcom/futuredial/atparser/CCombineProcContext;->m_pCombineProc:Lcom/futuredial/atparser/CCmobineProcType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #clazzName:Ljava/lang/String;
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :goto_0
    return-void

    .line 27
    .restart local v1       #clazzName:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 29
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public get_result(Ljava/util/ArrayList;)Lcom/futuredial/atparser/FieldValue;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/futuredial/atparser/FieldValue;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v0}, Lcom/futuredial/atparser/FieldValue;-><init>()V

    .line 37
    .local v0, res:Lcom/futuredial/atparser/FieldValue;
    iget-object v2, p0, Lcom/futuredial/atparser/CCombineProcContext;->m_pCombineProc:Lcom/futuredial/atparser/CCmobineProcType;

    if-nez v2, :cond_1

    .line 51
    .end local v0           #res:Lcom/futuredial/atparser/FieldValue;
    :cond_0
    :goto_0
    return-object v0

    .line 41
    .restart local v0       #res:Lcom/futuredial/atparser/FieldValue;
    :cond_1
    iget-object v2, p0, Lcom/futuredial/atparser/CCombineProcContext;->m_pCombineProc:Lcom/futuredial/atparser/CCmobineProcType;

    invoke-virtual {v2, p1}, Lcom/futuredial/atparser/CCmobineProcType;->procValue(Ljava/util/ArrayList;)Z

    move-result v1

    .line 42
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 47
    iget-object v2, p0, Lcom/futuredial/atparser/CCombineProcContext;->m_pCombineProc:Lcom/futuredial/atparser/CCmobineProcType;

    iget-object v2, v2, Lcom/futuredial/atparser/CCmobineProcType;->m_result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/futuredial/atparser/CCombineProcContext;->m_pCombineProc:Lcom/futuredial/atparser/CCmobineProcType;

    iget-object v2, v2, Lcom/futuredial/atparser/CCmobineProcType;->m_result:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/atparser/FieldValue;

    move-object v0, v2

    goto :goto_0
.end method

.method public get_results(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/atparser/FieldValue;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, argsIn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, argsOut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/atparser/FieldValue;>;"
    iget-object v1, p0, Lcom/futuredial/atparser/CCombineProcContext;->m_pCombineProc:Lcom/futuredial/atparser/CCmobineProcType;

    if-nez v1, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/futuredial/atparser/CCombineProcContext;->m_pCombineProc:Lcom/futuredial/atparser/CCmobineProcType;

    iget-object v1, v1, Lcom/futuredial/atparser/CCmobineProcType;->m_result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 61
    iget-object v1, p0, Lcom/futuredial/atparser/CCombineProcContext;->m_pCombineProc:Lcom/futuredial/atparser/CCmobineProcType;

    invoke-virtual {v1, p1}, Lcom/futuredial/atparser/CCmobineProcType;->procValue(Ljava/util/ArrayList;)Z

    move-result v0

    .line 62
    .local v0, result:Z
    if-eqz p2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/futuredial/atparser/CCombineProcContext;->m_pCombineProc:Lcom/futuredial/atparser/CCmobineProcType;

    iget-object v1, v1, Lcom/futuredial/atparser/CCmobineProcType;->m_result:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

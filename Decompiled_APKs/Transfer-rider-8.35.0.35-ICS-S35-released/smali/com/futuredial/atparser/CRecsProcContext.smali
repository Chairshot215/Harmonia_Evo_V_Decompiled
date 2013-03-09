.class public Lcom/futuredial/atparser/CRecsProcContext;
.super Ljava/lang/Object;
.source "CRecsProcContext.java"


# instance fields
.field private m_pRecsProc:Lcom/futuredial/atparser/CIRecsProcType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/futuredial/atparser/CRecsProcContext;->m_pRecsProc:Lcom/futuredial/atparser/CIRecsProcType;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
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

    .line 21
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 22
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/atparser/CIRecsProcType;

    iput-object v4, p0, Lcom/futuredial/atparser/CRecsProcContext;->m_pRecsProc:Lcom/futuredial/atparser/CIRecsProcType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #clazzName:Ljava/lang/String;
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :goto_0
    return-void

    .line 24
    .restart local v1       #clazzName:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 26
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public proc_records(Lcom/futuredial/publicobj/ItemArray;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 33
    move-object v0, p1

    .line 34
    .local v0, smss:Lcom/futuredial/publicobj/ItemArray;
    iget-object v1, p0, Lcom/futuredial/atparser/CRecsProcContext;->m_pRecsProc:Lcom/futuredial/atparser/CIRecsProcType;

    if-nez v1, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 38
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/futuredial/atparser/CRecsProcContext;->m_pRecsProc:Lcom/futuredial/atparser/CIRecsProcType;

    invoke-interface {v1, v0}, Lcom/futuredial/atparser/CIRecsProcType;->proc_records(Lcom/futuredial/publicobj/ItemArray;)Z

    move-result v1

    goto :goto_0
.end method

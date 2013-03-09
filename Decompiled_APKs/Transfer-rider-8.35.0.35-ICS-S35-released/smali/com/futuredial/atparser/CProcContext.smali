.class public Lcom/futuredial/atparser/CProcContext;
.super Ljava/lang/Object;
.source "CProcContext.java"


# instance fields
.field private m_pProc:Lcom/futuredial/atparser/CProcType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/futuredial/atparser/CProcContext;->m_pProc:Lcom/futuredial/atparser/CProcType;

    .line 19
    if-eqz p1, :cond_0

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
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

    .line 25
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 26
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/atparser/CProcType;

    iput-object v4, p0, Lcom/futuredial/atparser/CProcContext;->m_pProc:Lcom/futuredial/atparser/CProcType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #clazzName:Ljava/lang/String;
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :goto_0
    return-void

    .line 28
    .restart local v1       #clazzName:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 30
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public get_properties()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/futuredial/atparser/CProcContext;->m_pProc:Lcom/futuredial/atparser/CProcType;

    iget-object v0, v0, Lcom/futuredial/atparser/CProcType;->m_properties:Ljava/util/ArrayList;

    return-object v0
.end method

.method public get_result(Ljava/lang/StringBuffer;)Z
    .locals 4
    .parameter "sb"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/futuredial/atparser/CProcContext;->m_pProc:Lcom/futuredial/atparser/CProcType;

    if-nez v3, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v2

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/futuredial/atparser/CProcContext;->m_pProc:Lcom/futuredial/atparser/CProcType;

    invoke-virtual {v3, v0}, Lcom/futuredial/atparser/CProcType;->proc_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, temp:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    if-eqz v1, :cond_0

    .line 47
    const/4 v2, 0x1

    goto :goto_0
.end method

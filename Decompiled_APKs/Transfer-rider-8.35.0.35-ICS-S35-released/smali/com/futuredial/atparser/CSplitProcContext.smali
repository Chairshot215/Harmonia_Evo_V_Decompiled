.class public Lcom/futuredial/atparser/CSplitProcContext;
.super Ljava/lang/Object;
.source "CSplitProcContext.java"


# instance fields
.field private m_pSpliter:Lcom/futuredial/atparser/CISpliter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "spliter_type"
    .parameter "para"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/futuredial/atparser/CSplitProcContext;->m_pSpliter:Lcom/futuredial/atparser/CISpliter;

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, clazzName:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.futuredial.atparser."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 21
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/atparser/CISpliter;

    iput-object v5, p0, Lcom/futuredial/atparser/CSplitProcContext;->m_pSpliter:Lcom/futuredial/atparser/CISpliter;

    .line 22
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .local v4, sb:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/futuredial/atparser/CSplitProcContext;->m_pSpliter:Lcom/futuredial/atparser/CISpliter;

    if-eqz v5, :cond_0

    .line 25
    iget-object v5, p0, Lcom/futuredial/atparser/CSplitProcContext;->m_pSpliter:Lcom/futuredial/atparser/CISpliter;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/futuredial/atparser/CISpliter;->set_para(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v3

    .line 31
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 46
    new-instance v0, Lcom/futuredial/atparser/CSplitProcContext;

    const-string v1, "CRegexSpliter"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/futuredial/atparser/CSplitProcContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 48
    return-void
.end method


# virtual methods
.method public split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "data"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, saveto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/futuredial/atparser/CSplitProcContext;->m_pSpliter:Lcom/futuredial/atparser/CISpliter;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/futuredial/atparser/CSplitProcContext;->m_pSpliter:Lcom/futuredial/atparser/CISpliter;

    invoke-interface {v0, p1, p2}, Lcom/futuredial/atparser/CISpliter;->do_split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z

    move-result v0

    goto :goto_0
.end method

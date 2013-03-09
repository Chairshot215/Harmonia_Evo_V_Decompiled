.class public Lcom/futuredial/service/HideAPIRunner;
.super Ljava/lang/Object;
.source "HideAPIRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/service/HideAPIRunner$RetObject;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field m_invokeTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "[BTHideAPIRunner]"

    iput-object v0, p0, Lcom/futuredial/service/HideAPIRunner;->TAG:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/service/HideAPIRunner;->m_invokeTarget:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/futuredial/service/HideAPIRunner;->m_invokeTarget:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public varargs RunBTHideApi(Ljava/lang/String;Lcom/futuredial/service/HideAPIRunner$RetObject;[Ljava/lang/Object;)Z
    .locals 7
    .parameter "api"
    .parameter "ret"
    .parameter "arg"

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, bSuccess:Z
    const/4 v1, 0x0

    .line 29
    .local v1, classMethods:[Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lcom/futuredial/service/HideAPIRunner;->m_invokeTarget:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 34
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 36
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 38
    iget-object v4, p0, Lcom/futuredial/service/HideAPIRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found api: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_start_1
    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/futuredial/service/HideAPIRunner;->m_invokeTarget:Ljava/lang/Object;

    invoke-virtual {v4, v5, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p2, Lcom/futuredial/service/HideAPIRunner$RetObject;->m_ret:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    const/4 v0, 0x1

    :cond_0
    :goto_1
    move v4, v0

    .line 48
    .end local v3           #i:I
    :goto_2
    return v4

    .line 30
    :catch_0
    move-exception v2

    .line 31
    .local v2, e:Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/futuredial/service/HideAPIRunner;->TAG:Ljava/lang/String;

    const-string v5, "getDeclaredMethods failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v4, 0x0

    goto :goto_2

    .line 42
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v3       #i:I
    :catch_1
    move-exception v2

    .line 43
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 34
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

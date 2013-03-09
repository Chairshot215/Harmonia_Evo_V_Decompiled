.class public Lcom/sprint/dsa/ProxySettings;
.super Ljava/lang/Object;
.source "ProxySettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 70
    .local v0, f:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, out:Ljava/lang/Object;
    return-object v1
.end method

.method public static getRequestQueue(Landroid/content/Context;)Ljava/lang/Object;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, ret:Ljava/lang/Object;
    const-string v3, "android.webkit.Network"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, networkClass:Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 57
    const-string v3, "getInstance"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v7

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/sprint/dsa/ProxySettings;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, networkObj:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 59
    const-string v3, "mRequestQueue"

    invoke-static {v1, v3}, Lcom/sprint/dsa/ProxySettings;->getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .end local v1           #networkObj:Ljava/lang/Object;
    .end local v2           #ret:Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method private static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .parameter "object"
    .parameter "methodName"
    .parameter "params"
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, out:Ljava/lang/Object;
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v3, p0

    check-cast v3, Ljava/lang/Class;

    move-object v0, v3

    .line 89
    .local v0, c:Ljava/lang/Class;
    :goto_0
    if-eqz p3, :cond_1

    .line 90
    invoke-virtual {v0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 91
    .local v1, method:Ljava/lang/reflect/Method;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 97
    :goto_1
    return-object v2

    .line 88
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 93
    .restart local v0       #c:Ljava/lang/Class;
    :cond_1
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 94
    .restart local v1       #method:Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method public static resetProxy(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0}, Lcom/sprint/dsa/ProxySettings;->getRequestQueue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, requestQueueObject:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 48
    const-string v1, "mProxyHost"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/ProxySettings;->setDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    :cond_0
    return-void
.end method

.method private static setDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 81
    .local v0, f:Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public static setProxy(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .parameter "ctx"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 29
    const/4 v3, 0x0

    .line 31
    .local v3, ret:Z
    :try_start_0
    invoke-static {p0}, Lcom/sprint/dsa/ProxySettings;->getRequestQueue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    .local v2, requestQueueObject:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 34
    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v4, "http"

    invoke-direct {v1, p1, p2, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .local v1, httpHost:Lorg/apache/http/HttpHost;
    const-string v4, "mProxyHost"

    invoke-static {v2, v4, v1}, Lcom/sprint/dsa/ProxySettings;->setDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/4 v3, 0x1

    .line 41
    .end local v1           #httpHost:Lorg/apache/http/HttpHost;
    .end local v2           #requestQueueObject:Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/htc/android/htcime/packageloader/InvocationProxy;
.super Ljava/lang/Object;
.source "InvocationProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "engine_name"
    .parameter "input_method"

    .prologue
    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, p:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/android/htcime/packageloader/PackageContainer;->getPackageClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 49
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    const-string v4, "getInputPackageName"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 52
    .local v2, m:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v2           #m:Ljava/lang/reflect/Method;
    .restart local v3       #p:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 53
    .end local v3           #p:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const/4 v3, 0x0

    .restart local v3       #p:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSupportMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "engine_name"

    .prologue
    .line 31
    const-string v4, ""

    .line 33
    .local v4, s:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/android/htcime/packageloader/PackageContainer;->getPackageClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 34
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 36
    :try_start_0
    const-string v5, "getSupportMethod"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 37
    .local v3, m:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v3           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v4

    .line 38
    :catch_0
    move-exception v2

    .line 39
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onPackageUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "engineName"
    .parameter "action"
    .parameter "packageName"

    .prologue
    .line 65
    invoke-static {p1}, Lcom/htc/android/htcime/packageloader/PackageContainer;->getPackageClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 66
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    const-string v3, "onPackageUpdate"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 70
    .local v2, m:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

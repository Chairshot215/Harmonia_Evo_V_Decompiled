.class public Lcom/htc/opensense/plugin/TabPluginWrapper;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginWrapper.java"


# instance fields
.field protected mPlugin:Lcom/htc/opensense/plugin/TabPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 9
    .parameter "context"
    .parameter "cName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 26
    .local v5, pkgContext:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 27
    .local v4, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/plugin/TabPlugin;>;"
    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 32
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/plugin/TabPlugin;>;"
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/plugin/TabPlugin;

    iput-object v6, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    .line 33
    iget-object v6, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-static {p2}, Lcom/htc/opensense/plugin/TabPluginHelper;->getTabTag(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/opensense/plugin/TabPlugin;->mTag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 34
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/plugin/TabPlugin;>;"
    :catch_0
    move-exception v2

    .line 37
    .local v2, e:Ljava/lang/Exception;
    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 38
    .restart local v1       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/plugin/TabPlugin;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/plugin/TabPlugin;

    iput-object v6, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    .line 39
    iget-object v6, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-static {p2}, Lcom/htc/opensense/plugin/TabPluginHelper;->getTabTag(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/opensense/plugin/TabPlugin;->mTag:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 40
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/plugin/TabPlugin;>;"
    :catch_1
    move-exception v3

    .line 41
    .local v3, ex:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/ClassNotFoundException;

    const-string v7, "Can not load plugin class"

    invoke-direct {v6, v7, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableResSet()[I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    return-object v0
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getHostContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

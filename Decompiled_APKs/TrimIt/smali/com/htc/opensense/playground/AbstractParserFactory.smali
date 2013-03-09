.class public abstract Lcom/htc/opensense/playground/AbstractParserFactory;
.super Ljava/lang/Object;
.source "AbstractParserFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AbstractParserFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/opensense/playground/AbstractParserFactory;
    .locals 2
    .parameter "context"
    .parameter "component"

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/playground/AbstractParserFactory;->getFactory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense/playground/AbstractParserFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getFactory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense/playground/AbstractParserFactory;
    .locals 9
    .parameter "context"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    const/4 v6, 0x0

    .line 22
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move-object v3, v6

    .line 37
    :goto_0
    return-object v3

    .line 27
    :cond_1
    const/4 v7, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 29
    .local v5, pkgContext:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 30
    .local v4, loader:Ljava/lang/ClassLoader;
    invoke-virtual {v4, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/opensense/playground/AbstractParserFactory;>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 32
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/opensense/playground/AbstractParserFactory;>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/playground/AbstractParserFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .local v3, factory:Lcom/htc/opensense/playground/AbstractParserFactory;
    goto :goto_0

    .line 34
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/opensense/playground/AbstractParserFactory;>;"
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/opensense/playground/AbstractParserFactory;>;"
    .end local v3           #factory:Lcom/htc/opensense/playground/AbstractParserFactory;
    .end local v4           #loader:Ljava/lang/ClassLoader;
    .end local v5           #pkgContext:Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 35
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "AbstractParserFactory"

    const-string v8, "getFactory failed!"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 37
    goto :goto_0
.end method


# virtual methods
.method public varargs abstract createParser(Landroid/content/Context;[Ljava/lang/Object;)Lcom/htc/opensense/playground/AbstractParser;
.end method

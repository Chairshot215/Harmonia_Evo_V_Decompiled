.class public Lcom/htc/weather/videoview/WeatherVideoUtility;
.super Ljava/lang/Object;
.source "WeatherVideoUtility.java"


# static fields
.field private static final BASE_CLASS_NAME:Ljava/lang/String; = "com.htc.weathervideo.base.WeatherVideoBaseView"

.field private static final BASE_PACKAG_NAME:Ljava/lang/String; = "com.htc.weathervideo.base"

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherVideo"

.field private static final PREFIX:Ljava/lang/String; = "[WeatherVideoUtility]: "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    const-string v3, "com.htc.weathervideo.base"

    invoke-static {p0, v3}, Lcom/htc/weather/videoview/WeatherVideoUtility;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 36
    .local v2, resourceContext:Landroid/content/Context;
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 39
    .local v0, classLoader:Ldalvik/system/PathClassLoader;
    :try_start_0
    const-string v3, "com.htc.weathervideo.base.WeatherVideoBaseView"

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 45
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    const-string v3, "WeatherVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WeatherVideoUtility]: getWeatherVideoInstance() - class not found = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 21
    .local v1, result:Landroid/content/Context;
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 30
    :goto_0
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 26
    const-string v2, "WeatherVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WeatherVideoUtility]: getPackageContext() - Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWeatherVideoInstance(Landroid/content/Context;)Lcom/htc/weather/videoview/WeatherVideoView;
    .locals 9
    .parameter "context"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/htc/weather/videoview/WeatherVideoUtility;->getClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v4

    .line 51
    .local v4, videoClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    :try_start_0
    new-array v2, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v2, v6

    .line 52
    .local v2, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    check-cast v2, [Ljava/lang/Class;

    .end local v2           #paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 54
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v3, v6

    .line 55
    .local v3, params:[Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 56
    .local v5, videoview:Ljava/lang/Object;
    check-cast v5, Lcom/htc/weather/videoview/WeatherVideoView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #params:[Ljava/lang/Object;
    .end local v5           #videoview:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "WeatherVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WeatherVideoUtility]: getWeatherVideoInstance() - other exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getWeatherVideoInstance(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/htc/weather/videoview/WeatherVideoView;
    .locals 9
    .parameter "context"
    .parameter "attri"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/htc/weather/videoview/WeatherVideoUtility;->getClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v4

    .line 69
    .local v4, videoClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v6, 0x2

    :try_start_0
    new-array v2, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-class v7, Landroid/util/AttributeSet;

    aput-object v7, v2, v6

    .line 71
    .local v2, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    check-cast v2, [Ljava/lang/Class;

    .end local v2           #paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 73
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v3, v6

    .line 74
    .local v3, params:[Ljava/lang/Object;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 75
    .local v5, videoview:Ljava/lang/Object;
    check-cast v5, Lcom/htc/weather/videoview/WeatherVideoView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #params:[Ljava/lang/Object;
    .end local v5           #videoview:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "WeatherVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WeatherVideoUtility]: getWeatherVideoInstance() - other exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    const/4 v5, 0x0

    goto :goto_0
.end method

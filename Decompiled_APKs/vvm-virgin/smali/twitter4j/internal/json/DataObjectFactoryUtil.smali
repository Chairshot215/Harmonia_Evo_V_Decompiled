.class public Ltwitter4j/internal/json/DataObjectFactoryUtil;
.super Ljava/lang/Object;
.source "DataObjectFactoryUtil.java"


# static fields
.field private static final CLEAR_THREAD_LOCAL_MAP:Ljava/lang/reflect/Method;

.field private static final REGISTER_JSON_OBJECT:Ljava/lang/reflect/Method;

.field static class$twitter4j$json$DataObjectFactory:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 40
    sget-object v7, Ltwitter4j/internal/json/DataObjectFactoryUtil;->class$twitter4j$json$DataObjectFactory:Ljava/lang/Class;

    if-nez v7, :cond_1

    const-string v7, "twitter4j.json.DataObjectFactory"

    invoke-static {v7}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Ltwitter4j/internal/json/DataObjectFactoryUtil;->class$twitter4j$json$DataObjectFactory:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 41
    .local v5, methods:[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 42
    .local v1, clearThreadLocalMap:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 43
    .local v6, registerJSONObject:Ljava/lang/reflect/Method;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 44
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "clearThreadLocalMap"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 45
    move-object v1, v4

    .line 46
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 43
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 40
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v1           #clearThreadLocalMap:Ljava/lang/reflect/Method;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .end local v6           #registerJSONObject:Ljava/lang/reflect/Method;
    :cond_1
    sget-object v7, Ltwitter4j/internal/json/DataObjectFactoryUtil;->class$twitter4j$json$DataObjectFactory:Ljava/lang/Class;

    goto :goto_0

    .line 47
    .restart local v0       #arr$:[Ljava/lang/reflect/Method;
    .restart local v1       #clearThreadLocalMap:Ljava/lang/reflect/Method;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #registerJSONObject:Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "registerJSONObject"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 48
    move-object v6, v4

    .line 49
    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_2

    .line 52
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_3
    if-eqz v1, :cond_4

    if-nez v6, :cond_5

    .line 53
    :cond_4
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 55
    :cond_5
    sput-object v1, Ltwitter4j/internal/json/DataObjectFactoryUtil;->CLEAR_THREAD_LOCAL_MAP:Ljava/lang/reflect/Method;

    .line 56
    sput-object v6, Ltwitter4j/internal/json/DataObjectFactoryUtil;->REGISTER_JSON_OBJECT:Ljava/lang/reflect/Method;

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not intended to be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static clearThreadLocalMap()V
    .locals 4

    .prologue
    .line 64
    :try_start_0
    sget-object v1, Ltwitter4j/internal/json/DataObjectFactoryUtil;->CLEAR_THREAD_LOCAL_MAP:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 67
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, key:Ljava/lang/Object;,"TT;"
    :try_start_0
    sget-object v1, Ltwitter4j/internal/json/DataObjectFactoryUtil;->REGISTER_JSON_OBJECT:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 80
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

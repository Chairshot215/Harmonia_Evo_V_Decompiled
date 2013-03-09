.class public final Ltwitter4j/internal/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static final HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

.field static class$twitter4j$internal$http$HttpClientConfiguration:Ljava/lang/Class;

.field static class$twitter4j$internal$http$HttpClientFactory:Ljava/lang/Class;

.field private static final logger:Ltwitter4j/internal/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 30
    sget-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientFactory:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "twitter4j.internal.http.HttpClientFactory"

    invoke-static {v3}, Ltwitter4j/internal/http/HttpClientFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientFactory:Ljava/lang/Class;

    :goto_0
    invoke-static {v3}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v3

    sput-object v3, Ltwitter4j/internal/http/HttpClientFactory;->logger:Ltwitter4j/internal/logging/Logger;

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, clazz:Ljava/lang/Class;
    :try_start_0
    const-string v3, "twitter4j.internal.http.alternative.HttpClientImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 38
    :goto_1
    if-nez v0, :cond_0

    .line 40
    :try_start_1
    const-string v3, "twitter4j.internal.http.HttpClientImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 45
    :cond_0
    sget-object v3, Ltwitter4j/internal/http/HttpClientFactory;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Will use "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " as HttpClient implementation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    :try_start_2
    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientConfiguration:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v3, "twitter4j.internal.http.HttpClientConfiguration"

    invoke-static {v3}, Ltwitter4j/internal/http/HttpClientFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientConfiguration:Ljava/lang/Class;

    :goto_2
    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Ltwitter4j/internal/http/HttpClientFactory;->HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    return-void

    .line 30
    .end local v0           #clazz:Ljava/lang/Class;
    :cond_1
    sget-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientFactory:Ljava/lang/Class;

    goto :goto_0

    .line 41
    .restart local v0       #clazz:Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 42
    .local v1, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 47
    .end local v1           #cnfe:Ljava/lang/ClassNotFoundException;
    :cond_2
    :try_start_3
    sget-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientConfiguration:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 48
    :catch_1
    move-exception v2

    .line 49
    .local v2, nsme:Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 36
    .end local v2           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
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

.method public static getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;
    .locals 4
    .parameter "conf"

    .prologue
    .line 55
    :try_start_0
    sget-object v1, Ltwitter4j/internal/http/HttpClientFactory;->HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/internal/http/HttpClient;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 58
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 60
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

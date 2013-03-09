.class Lcom/google/android/partnersetup/RlzPingService$PingCommunicator;
.super Ljava/lang/Object;
.source "RlzPingService.java"

# interfaces
.implements Lcom/google/android/partnersetup/RlzPingService$RlzPingCommunicatorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PingCommunicator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/partnersetup/RlzPingService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPingService$PingCommunicator;-><init>()V

    return-void
.end method


# virtual methods
.method public sendPingForResult(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "ping"

    .prologue
    const/4 v6, 0x0

    .line 90
    const-string v7, "Mozilla/4.0 (compatible; Win32)"

    invoke-static {v7}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 92
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, getRequest:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 95
    .local v4, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 96
    .local v5, statusCode:I
    const/16 v7, 0xc8

    if-eq v5, v7, :cond_0

    .line 97
    invoke-static {}, Lcom/google/android/partnersetup/RlzPingService;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " while sending ping."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 131
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #statusCode:I
    :goto_0
    return-object v6

    .line 101
    .restart local v4       #resp:Lorg/apache/http/HttpResponse;
    .restart local v5       #statusCode:I
    :cond_0
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 102
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-nez v2, :cond_1

    .line 103
    invoke-static {}, Lcom/google/android/partnersetup/RlzPingService;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v9, "Null entity in response"

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 112
    :cond_1
    :try_start_2
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 120
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 129
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v6, v7

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 122
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #statusCode:I
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 124
    invoke-static {}, Lcom/google/android/partnersetup/RlzPingService;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "I/O error while sending ping: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 129
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 125
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 126
    .local v1, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 127
    invoke-static {}, Lcom/google/android/partnersetup/RlzPingService;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while sending ping: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 129
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v6
.end method

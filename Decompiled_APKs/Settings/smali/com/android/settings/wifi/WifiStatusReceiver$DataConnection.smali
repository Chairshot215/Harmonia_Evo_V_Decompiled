.class Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;
.super Landroid/os/AsyncTask;
.source "WifiStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusReceiver;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiStatusReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "urls"

    .prologue
    .line 105
    const-string v12, "Android-Wifi/0.1"

    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 106
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    const-string v12, "http://www.google.com"

    invoke-direct {v8, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 109
    .local v8, request:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-virtual {v0, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 110
    .local v9, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 111
    .local v10, statusCode:I
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "statusCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 114
    .local v3, headers:[Lorg/apache/http/Header;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v12, v3

    if-ge v5, v12, :cond_0

    .line 115
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "header_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v3, v5

    invoke-interface {v14}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "header_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " value:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v3, v5

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const/16 v12, 0x12d

    if-eq v10, v12, :cond_1

    const/16 v12, 0x12e

    if-eq v10, v12, :cond_1

    const/16 v12, 0x12f

    if-eq v10, v12, :cond_1

    const/16 v12, 0x133

    if-ne v10, v12, :cond_4

    .line 121
    :cond_1
    const-string v12, "Location"

    invoke-interface {v9, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 122
    .local v2, header:Lorg/apache/http/Header;
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "header="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz v2, :cond_4

    .line 124
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, redirectTo:Ljava/lang/String;
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "redirectTo="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v4, 0x0

    .line 127
    .local v4, host:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 128
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 129
    .local v11, uri:Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 130
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "host="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v11           #uri:Landroid/net/Uri;
    :cond_2
    if-eqz v7, :cond_4

    const-string v12, "http://www.google.com"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    if-eqz v4, :cond_3

    const-string v12, "google"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 133
    :cond_3
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v6, intent:Landroid/content/Intent;
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$100(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/android/settings/wifi/RedirectDialog;

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    const/high16 v12, 0x1000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    const-string v12, "redirectTo"

    invoke-virtual {v6, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$100(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 175
    .end local v2           #header:Lorg/apache/http/Header;
    .end local v3           #headers:[Lorg/apache/http/Header;
    .end local v4           #host:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #redirectTo:Ljava/lang/String;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #statusCode:I
    :goto_1
    return-object v7

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 175
    const/4 v7, 0x0

    goto :goto_1

    .line 172
    :catchall_0
    move-exception v12

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v12
.end method

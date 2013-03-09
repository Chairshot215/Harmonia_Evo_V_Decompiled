.class Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;
.super Ljava/lang/Object;
.source "PrivacyPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/feedback/PrivacyPageActivity$Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParsingVersionRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/feedback/PrivacyPageActivity$Client;


# direct methods
.method constructor <init>(Lcom/htc/feedback/PrivacyPageActivity$Client;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;->this$1:Lcom/htc/feedback/PrivacyPageActivity$Client;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadHttpsContent(Ljava/lang/String;)Z
    .locals 16
    .parameter "url"

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, conn:Ljavax/net/ssl/HttpsURLConnection;
    const/4 v5, 0x0

    .line 127
    .local v5, in:Ljava/io/Reader;
    const/4 v8, 0x0

    .line 128
    .local v8, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 130
    .local v3, hasResult:Z
    :try_start_0
    const-string v12, "TLS"

    invoke-static {v12}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v11

    .line 131
    .local v11, sc:Ljavax/net/ssl/SSLContext;
    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljavax/net/ssl/TrustManager;

    const/4 v14, 0x0

    new-instance v15, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable$1;

    invoke-direct/range {v15 .. v16}, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable$1;-><init>(Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;)V

    aput-object v15, v13, v14

    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v11, v12, v13, v14}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 139
    invoke-virtual {v11}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    invoke-static {v12}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 140
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    .line 141
    new-instance v12, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v12}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v1, v12}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 142
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 143
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 144
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v10, sb:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 146
    .end local v5           #in:Ljava/io/Reader;
    .local v6, in:Ljava/io/Reader;
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 148
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v9, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 149
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 152
    .end local v7           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    move-object v5, v6

    .line 153
    .end local v6           #in:Ljava/io/Reader;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    .end local v11           #sc:Ljavax/net/ssl/SSLContext;
    .local v2, e:Ljava/lang/Exception;
    .restart local v5       #in:Ljava/io/Reader;
    :goto_1
    :try_start_3
    const-string v12, "PrivacyPageActivity"

    const-string v13, "failed to load https content"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    if-eqz v8, :cond_0

    .line 157
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 162
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1
    move v4, v3

    .line 164
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #hasResult:Z
    .local v4, hasResult:I
    :goto_3
    return v4

    .line 151
    .end local v4           #hasResult:I
    .end local v5           #in:Ljava/io/Reader;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v3       #hasResult:Z
    .restart local v6       #in:Ljava/io/Reader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    .restart local v11       #sc:Ljavax/net/ssl/SSLContext;
    :cond_2
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;->parseVersionInContext(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v3

    .line 155
    if-eqz v9, :cond_3

    .line 157
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 162
    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    .line 163
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_4
    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/Reader;
    .restart local v5       #in:Ljava/io/Reader;
    move v4, v3

    .line 164
    .restart local v4       #hasResult:I
    goto :goto_3

    .line 158
    .end local v4           #hasResult:I
    .end local v5           #in:Ljava/io/Reader;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/Reader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 159
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v12, "PrivacyPageActivity"

    const-string v13, "failed to close BufferedReader"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 158
    .end local v6           #in:Ljava/io/Reader;
    .end local v7           #line:Ljava/lang/String;
    .end local v9           #reader:Ljava/io/BufferedReader;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    .end local v11           #sc:Ljavax/net/ssl/SSLContext;
    .restart local v5       #in:Ljava/io/Reader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 159
    const-string v12, "PrivacyPageActivity"

    const-string v13, "failed to close BufferedReader"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 155
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v8, :cond_5

    .line 157
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 162
    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    .line 163
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    move v4, v3

    .line 164
    .restart local v4       #hasResult:I
    goto :goto_3

    .line 158
    .end local v4           #hasResult:I
    :catch_3
    move-exception v2

    .line 159
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v12, "PrivacyPageActivity"

    const-string v13, "failed to close BufferedReader"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 155
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #in:Ljava/io/Reader;
    .restart local v6       #in:Ljava/io/Reader;
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    .restart local v11       #sc:Ljavax/net/ssl/SSLContext;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6           #in:Ljava/io/Reader;
    .restart local v5       #in:Ljava/io/Reader;
    goto :goto_5

    .end local v5           #in:Ljava/io/Reader;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/Reader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/Reader;
    .restart local v5       #in:Ljava/io/Reader;
    goto :goto_5

    .line 152
    .end local v10           #sb:Ljava/lang/StringBuilder;
    .end local v11           #sc:Ljavax/net/ssl/SSLContext;
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v5           #in:Ljava/io/Reader;
    .restart local v6       #in:Ljava/io/Reader;
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    .restart local v11       #sc:Ljavax/net/ssl/SSLContext;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6           #in:Ljava/io/Reader;
    .restart local v5       #in:Ljava/io/Reader;
    goto :goto_1
.end method

.method private parseVersionInContext(Ljava/lang/String;)Z
    .locals 4
    .parameter "rawData"

    .prologue
    const/4 v1, 0x1

    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-static {}, Lcom/htc/feedback/PrivacyPageActivity;->access$400()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 171
    .local v0, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;->this$1:Lcom/htc/feedback/PrivacyPageActivity$Client;

    iget-object v2, v2, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/feedback/PrivacyPageActivity;->mVersion:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/feedback/PrivacyPageActivity;->access$502(Lcom/htc/feedback/PrivacyPageActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 175
    .end local v0           #m:Ljava/util/regex/Matcher;
    :cond_0
    iget-object v2, p0, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;->this$1:Lcom/htc/feedback/PrivacyPageActivity$Client;

    iget-object v2, v2, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->mVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/feedback/PrivacyPageActivity;->access$500(Lcom/htc/feedback/PrivacyPageActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, hasParsingResult:Z
    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;->this$1:Lcom/htc/feedback/PrivacyPageActivity$Client;

    iget-object v1, v1, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->mURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/feedback/PrivacyPageActivity;->access$200(Lcom/htc/feedback/PrivacyPageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;->loadHttpsContent(Ljava/lang/String;)Z

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;->this$1:Lcom/htc/feedback/PrivacyPageActivity$Client;

    iget-object v1, v1, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/feedback/PrivacyPageActivity;->access$300(Lcom/htc/feedback/PrivacyPageActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;->this$1:Lcom/htc/feedback/PrivacyPageActivity$Client;

    iget-object v2, v2, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/feedback/PrivacyPageActivity;->access$300(Lcom/htc/feedback/PrivacyPageActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

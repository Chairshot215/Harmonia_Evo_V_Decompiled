.class public Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestServerUtil"
.end annotation


# instance fields
.field private bStopTest:Z

.field private mContext:Landroid/content/Context;

.field mHttpClient:Landroid/net/http/AndroidHttpClient;

.field testSrvHttpOpt:Lorg/apache/http/client/methods/HttpOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1725
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->bStopTest:Z

    .line 1726
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mContext:Landroid/content/Context;

    .line 1727
    return-void
.end method


# virtual methods
.method public StopTestServer()V
    .locals 2

    .prologue
    .line 1904
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->testSrvHttpOpt:Lorg/apache/http/client/methods/HttpOptions;

    if-eqz v1, :cond_0

    .line 1905
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->bStopTest:Z

    .line 1907
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->testSrvHttpOpt:Lorg/apache/http/client/methods/HttpOptions;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpOptions;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->testSrvHttpOpt:Lorg/apache/http/client/methods/HttpOptions;

    .line 1913
    :cond_0
    return-void

    .line 1908
    :catch_0
    move-exception v0

    .line 1909
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public testServer(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)I
    .locals 24
    .parameter "exAccount"

    .prologue
    .line 1730
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "EAS_SyncManager"

    const-string v21, "> testServer()"

    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->bStopTest:Z

    .line 1732
    const/4 v3, 0x2

    .line 1733
    .local v3, RETRY_COUNT:I
    const/4 v9, 0x0

    .line 1735
    .local v9, inputStream:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "UTF-8"

    invoke-static/range {v20 .. v21}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    :goto_0
    const/4 v13, 0x0

    .line 1741
    .local v13, retryCount:I
    const/16 v8, 0xc8

    .line 1744
    .local v8, httpStatusCode:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1745
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1757
    .local v10, loginCredential:Ljava/lang/String;
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v10

    .line 1758
    const/4 v7, 0x0

    .line 1761
    .local v7, httpClient:Landroid/net/http/AndroidHttpClient;
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 1762
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->createHttpClient(Landroid/content/Context;J)Landroid/net/http/AndroidHttpClient;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 1767
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v20

    const-string v21, "http.connection.timeout"

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x4e20

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v20 .. v22}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v20

    const-string v21, "http.socket.timeout"

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x4e20

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v20 .. v22}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1775
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const-string v20, "https"

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Microsoft-Server-ActiveSync?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "User="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "DeviceId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "DeviceType="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1781
    .local v19, targetURL:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v20

    if-eqz v20, :cond_3

    const-string v20, "EAS_SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")connect to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    :cond_3
    const/16 v18, 0x0

    .line 1784
    .local v18, targetHost:Lorg/apache/http/HttpHost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v20

    const-string v21, "http.route.default-proxy"

    invoke-interface/range {v20 .. v21}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 1785
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    const/16 v11, 0x1bb

    .line 1786
    .local v11, port:I
    :goto_4
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    const-string v14, "https"

    .line 1787
    .local v14, scheme:Ljava/lang/String;
    :goto_5
    new-instance v18, Lorg/apache/http/HttpHost;

    .end local v18           #targetHost:Lorg/apache/http/HttpHost;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11, v14}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1790
    .end local v11           #port:I
    .end local v14           #scheme:Ljava/lang/String;
    .restart local v18       #targetHost:Lorg/apache/http/HttpHost;
    :cond_4
    new-instance v20, Lorg/apache/http/client/methods/HttpOptions;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->testSrvHttpOpt:Lorg/apache/http/client/methods/HttpOptions;

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->testSrvHttpOpt:Lorg/apache/http/client/methods/HttpOptions;

    move-object/from16 v20, v0

    const-string v21, "Cache-Control"

    const-string v22, "no-cache"

    invoke-virtual/range {v20 .. v22}, Lorg/apache/http/client/methods/HttpOptions;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->testSrvHttpOpt:Lorg/apache/http/client/methods/HttpOptions;

    move-object/from16 v20, v0

    const-string v21, "MS-ASProtocolVersion"

    const-string v22, "2.5"

    invoke-virtual/range {v20 .. v22}, Lorg/apache/http/client/methods/HttpOptions;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->testSrvHttpOpt:Lorg/apache/http/client/methods/HttpOptions;

    move-object/from16 v20, v0

    const-string v21, "Authorization"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Basic "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lorg/apache/http/client/methods/HttpOptions;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    if-eqz v18, :cond_b

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->testSrvHttpOpt:Lorg/apache/http/client/methods/HttpOptions;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 1800
    .local v12, resp:Lorg/apache/http/HttpResponse;
    :goto_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->testSrvHttpOpt:Lorg/apache/http/client/methods/HttpOptions;

    .line 1801
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    .line 1802
    .local v15, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 1803
    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 1806
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-eq v8, v0, :cond_e

    const/16 v20, 0x1f5

    move/from16 v0, v20

    if-eq v8, v0, :cond_e

    .line 1807
    const-string v20, "EAS_SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "testServer(), httpStatus = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 1808
    const/16 v20, 0x193

    move/from16 v0, v20

    if-ne v8, v0, :cond_c

    .line 1809
    const/16 v20, -0x5

    .line 1884
    if-eqz v9, :cond_5

    .line 1885
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_20

    .line 1887
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_21

    if-eqz v21, :cond_6

    .line 1888
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_22

    :try_start_5
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_23

    .line 1889
    const/16 v21, 0x0

    :try_start_6
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_24

    .line 1898
    .end local v12           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #statusLine:Lorg/apache/http/StatusLine;
    .end local v18           #targetHost:Lorg/apache/http/HttpHost;
    .end local v19           #targetURL:Ljava/lang/String;
    :cond_6
    :goto_7
    return v20

    .line 1736
    .end local v7           #httpClient:Landroid/net/http/AndroidHttpClient;
    .end local v8           #httpStatusCode:I
    .end local v10           #loginCredential:Ljava/lang/String;
    .end local v13           #retryCount:I
    :catch_0
    move-exception v5

    .line 1737
    .local v5, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 1747
    .end local v5           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v8       #httpStatusCode:I
    .restart local v13       #retryCount:I
    :cond_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5c

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #loginCredential:Ljava/lang/String;
    goto/16 :goto_1

    .line 1775
    .restart local v7       #httpClient:Landroid/net/http/AndroidHttpClient;
    :cond_8
    :try_start_7
    const-string v20, "http"

    goto/16 :goto_3

    .line 1785
    .restart local v18       #targetHost:Lorg/apache/http/HttpHost;
    .restart local v19       #targetURL:Ljava/lang/String;
    :cond_9
    const/16 v11, 0x50

    goto/16 :goto_4

    .line 1786
    .restart local v11       #port:I
    :cond_a
    const-string v14, "http"

    goto/16 :goto_5

    .line 1798
    .end local v11           #port:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->testSrvHttpOpt:Lorg/apache/http/client/methods/HttpOptions;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move-result-object v12

    .restart local v12       #resp:Lorg/apache/http/HttpResponse;
    goto/16 :goto_6

    .line 1811
    .restart local v15       #statusLine:Lorg/apache/http/StatusLine;
    :cond_c
    const/16 v20, -0x2

    .line 1884
    if-eqz v9, :cond_d

    .line 1885
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1c

    .line 1887
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1d

    if-eqz v21, :cond_6

    .line 1888
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1e

    :try_start_b
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1f

    .line 1889
    const/16 v21, 0x0

    :try_start_c
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_7

    .line 1891
    :catch_1
    move-exception v4

    .line 1892
    .end local v12           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #statusLine:Lorg/apache/http/StatusLine;
    .end local v18           #targetHost:Lorg/apache/http/HttpHost;
    .end local v19           #targetURL:Ljava/lang/String;
    .local v4, e:Ljava/lang/Exception;
    :goto_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1814
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v12       #resp:Lorg/apache/http/HttpResponse;
    .restart local v15       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v18       #targetHost:Lorg/apache/http/HttpHost;
    .restart local v19       #targetURL:Ljava/lang/String;
    :cond_e
    :try_start_d
    const-string v20, "MS-ASProtocolVersions"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 1815
    .local v17, svrEASVersHdr:Lorg/apache/http/Header;
    const-string v20, "MS-ASProtocolCommands"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v16

    .line 1817
    .local v16, svrEASCmdsHdr:Lorg/apache/http/Header;
    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_10

    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    move-result v20

    if-lez v20, :cond_10

    .line 1819
    const/16 v20, 0x0

    .line 1884
    if-eqz v9, :cond_f

    .line 1885
    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_18

    .line 1887
    :cond_f
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_19

    if-eqz v21, :cond_6

    .line 1888
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1a

    :try_start_11
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1b

    .line 1889
    const/16 v21, 0x0

    :try_start_12
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_7

    .line 1891
    :catch_2
    move-exception v4

    goto :goto_8

    .line 1821
    :cond_10
    const/16 v20, -0x2

    .line 1884
    if-eqz v9, :cond_11

    .line 1885
    :try_start_13
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_14

    .line 1887
    :cond_11
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_15

    if-eqz v21, :cond_6

    .line 1888
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_16

    :try_start_16
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_17

    .line 1889
    const/16 v21, 0x0

    :try_start_17
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    goto/16 :goto_7

    .line 1891
    :catch_3
    move-exception v4

    goto :goto_8

    .line 1823
    .end local v12           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #statusLine:Lorg/apache/http/StatusLine;
    .end local v16           #svrEASCmdsHdr:Lorg/apache/http/Header;
    .end local v17           #svrEASVersHdr:Lorg/apache/http/Header;
    .end local v18           #targetHost:Lorg/apache/http/HttpHost;
    .end local v19           #targetURL:Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 1824
    .local v4, e:Ljavax/net/ssl/SSLException;
    :try_start_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->bStopTest:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 1825
    const-string v20, "EAS_SyncManager"

    const-string v21, "testServer cancel by user"

    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1826
    const/16 v20, -0xb

    .line 1884
    if-eqz v9, :cond_12

    .line 1885
    :try_start_19
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1887
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1889
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    goto/16 :goto_7

    .line 1891
    :catch_5
    move-exception v4

    goto/16 :goto_8

    .line 1828
    :cond_13
    const v20, 0xf42a4

    :try_start_1a
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "testServer fail: (SSLException) "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1829
    const-string v20, "EAS_SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "testServer(), SSLException("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v6

    .line 1831
    .local v6, errorCode:I
    const/16 v20, 0x204

    move/from16 v0, v20

    if-eq v6, v0, :cond_14

    const/16 v20, 0x205

    move/from16 v0, v20

    if-eq v6, v0, :cond_14

    const/16 v20, 0x207

    move/from16 v0, v20

    if-eq v6, v0, :cond_14

    const/16 v20, 0x206

    move/from16 v0, v20

    if-ne v6, v0, :cond_16

    .line 1835
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v6, v4}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->saveCertificateError(Landroid/net/http/AndroidHttpClient;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1837
    const/16 v20, -0x6

    .line 1884
    if-eqz v9, :cond_15

    .line 1885
    :try_start_1b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_44

    .line 1887
    :cond_15
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_45

    if-eqz v21, :cond_6

    .line 1888
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_46

    :try_start_1e
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_47

    .line 1889
    const/16 v21, 0x0

    :try_start_1f
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6

    goto/16 :goto_7

    .line 1891
    :catch_6
    move-exception v4

    goto/16 :goto_8

    .line 1839
    :cond_16
    const/16 v20, 0x2

    move/from16 v0, v20

    if-lt v13, v0, :cond_2a

    .line 1840
    const/16 v20, -0x3

    .line 1884
    if-eqz v9, :cond_17

    .line 1885
    :try_start_20
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_40

    .line 1887
    :cond_17
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_41

    if-eqz v21, :cond_6

    .line 1888
    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_42

    :try_start_23
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_43

    .line 1889
    const/16 v21, 0x0

    :try_start_24
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_7

    goto/16 :goto_7

    .line 1891
    :catch_7
    move-exception v4

    goto/16 :goto_8

    .line 1842
    .end local v4           #e:Ljavax/net/ssl/SSLException;
    .end local v6           #errorCode:I
    :catch_8
    move-exception v4

    .line 1843
    .local v4, e:Ljava/lang/Exception;
    :try_start_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->bStopTest:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    .line 1844
    const-string v20, "EAS_SyncManager"

    const-string v21, "testServer cancel by user"

    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 1845
    const/16 v20, -0xb

    .line 1884
    if-eqz v9, :cond_18

    .line 1885
    :try_start_26
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_3c

    .line 1887
    :cond_18
    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3d

    if-eqz v21, :cond_6

    .line 1888
    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_3e

    :try_start_29
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3f

    .line 1889
    const/16 v21, 0x0

    :try_start_2a
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_9

    goto/16 :goto_7

    .line 1891
    :catch_9
    move-exception v4

    goto/16 :goto_8

    .line 1847
    :cond_19
    const v20, 0xf42a4

    :try_start_2b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "testServer fail: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1848
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1849
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v6

    .line 1850
    .restart local v6       #errorCode:I
    const-string v20, "EAS_SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "testServer(), IOException("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    const/16 v20, 0x2

    move/from16 v0, v20

    if-lt v13, v0, :cond_2c

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isDeviceSetProxy(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isUseProxy(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_1c

    .line 1855
    invoke-static {v6}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 1856
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v20

    if-eqz v20, :cond_1a

    const-string v20, "EAS_SyncManager"

    const-string v21, "TestServer cannot connect to server, try to use proxy"

    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setUseProxy(Landroid/content/Context;Z)V

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1859
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 1860
    const/4 v13, 0x0

    .line 1884
    if-eqz v9, :cond_1b

    .line 1885
    :try_start_2c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1887
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1889
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_a

    goto/16 :goto_2

    .line 1891
    :catch_a
    move-exception v4

    .line 1892
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1864
    :cond_1c
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isUseProxy(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setUseProxy(Landroid/content/Context;Z)V

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1867
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 1869
    :cond_1d
    instance-of v0, v4, Ljava/io/IOException;

    move/from16 v20, v0

    if-eqz v20, :cond_25

    .line 1870
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    move-result-object v20

    if-nez v20, :cond_1f

    .line 1871
    const/16 v20, -0x4

    .line 1884
    if-eqz v9, :cond_1e

    .line 1885
    :try_start_2e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_38

    .line 1887
    :cond_1e
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_39

    if-eqz v21, :cond_6

    .line 1888
    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_3a

    :try_start_31
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_3b

    .line 1889
    const/16 v21, 0x0

    :try_start_32
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_b

    goto/16 :goto_7

    .line 1891
    :catch_b
    move-exception v4

    goto/16 :goto_8

    .line 1872
    :cond_1f
    :try_start_33
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    const-string v21, "abort"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    move-result v20

    if-lez v20, :cond_21

    .line 1873
    const/16 v20, -0x4

    .line 1884
    if-eqz v9, :cond_20

    .line 1885
    :try_start_34
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_34

    .line 1887
    :cond_20
    :try_start_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_35

    if-eqz v21, :cond_6

    .line 1888
    :try_start_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_36

    :try_start_37
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_37

    .line 1889
    const/16 v21, 0x0

    :try_start_38
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_c

    goto/16 :goto_7

    .line 1891
    :catch_c
    move-exception v4

    goto/16 :goto_8

    .line 1874
    :cond_21
    :try_start_39
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    const-string v21, "unresolved"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    move-result v20

    if-lez v20, :cond_23

    .line 1875
    const/16 v20, -0x1

    .line 1884
    if-eqz v9, :cond_22

    .line 1885
    :try_start_3a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_30

    .line 1887
    :cond_22
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_31

    if-eqz v21, :cond_6

    .line 1888
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_32

    :try_start_3d
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_33

    .line 1889
    const/16 v21, 0x0

    :try_start_3e
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_d

    goto/16 :goto_7

    .line 1891
    :catch_d
    move-exception v4

    goto/16 :goto_8

    .line 1877
    :cond_23
    const/16 v20, -0x3

    .line 1884
    if-eqz v9, :cond_24

    .line 1885
    :try_start_3f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_2c

    .line 1887
    :cond_24
    :try_start_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_2d

    if-eqz v21, :cond_6

    .line 1888
    :try_start_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_2e

    :try_start_42
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_2f

    .line 1889
    const/16 v21, 0x0

    :try_start_43
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_e

    goto/16 :goto_7

    .line 1891
    :catch_e
    move-exception v4

    goto/16 :goto_8

    .line 1879
    :cond_25
    const/16 v20, -0x3

    .line 1884
    if-eqz v9, :cond_26

    .line 1885
    :try_start_44
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_28

    .line 1887
    :cond_26
    :try_start_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_29

    if-eqz v21, :cond_6

    .line 1888
    :try_start_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_2a

    :try_start_47
    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_2b

    .line 1889
    const/16 v21, 0x0

    :try_start_48
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_f

    goto/16 :goto_7

    .line 1891
    :catch_f
    move-exception v4

    goto/16 :goto_8

    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #errorCode:I
    :catch_10
    move-exception v4

    .line 1892
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1883
    .end local v4           #e:Ljava/lang/Exception;
    :cond_27
    :goto_9
    throw v20

    .line 1891
    .restart local v4       #e:Ljava/lang/Exception;
    .restart local v6       #errorCode:I
    :catch_11
    move-exception v4

    .line 1892
    :goto_a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1896
    .end local v4           #e:Ljava/lang/Exception;
    :cond_28
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->bStopTest:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1897
    const-string v20, "EAS_SyncManager"

    const-string v21, "testServer cancel by user"

    invoke-static/range {v20 .. v21}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    const/16 v20, -0xb

    goto/16 :goto_7

    .line 1883
    .end local v6           #errorCode:I
    :catchall_0
    move-exception v20

    .line 1884
    if-eqz v9, :cond_29

    .line 1885
    :try_start_49
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1887
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0

    if-eqz v21, :cond_27

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1889
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_10

    goto :goto_9

    .line 1884
    .local v4, e:Ljavax/net/ssl/SSLException;
    .restart local v6       #errorCode:I
    :cond_2a
    if-eqz v9, :cond_2b

    .line 1885
    :try_start_4a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1887
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    if-eqz v20, :cond_28

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1889
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_12

    goto :goto_b

    .line 1891
    :catch_12
    move-exception v4

    goto :goto_a

    .line 1884
    .local v4, e:Ljava/lang/Exception;
    :cond_2c
    if-eqz v9, :cond_2d

    .line 1885
    :try_start_4b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_11

    .line 1887
    :cond_2d
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_25

    if-eqz v20, :cond_28

    .line 1888
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_26

    :try_start_4e
    invoke-virtual/range {v20 .. v20}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_27

    .line 1889
    const/16 v20, 0x0

    :try_start_4f
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_13

    goto :goto_b

    .line 1891
    :catch_13
    move-exception v4

    goto :goto_a

    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #errorCode:I
    .restart local v12       #resp:Lorg/apache/http/HttpResponse;
    .restart local v15       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v16       #svrEASCmdsHdr:Lorg/apache/http/Header;
    .restart local v17       #svrEASVersHdr:Lorg/apache/http/Header;
    .restart local v18       #targetHost:Lorg/apache/http/HttpHost;
    .restart local v19       #targetURL:Ljava/lang/String;
    :catch_14
    move-exception v4

    goto/16 :goto_8

    :catch_15
    move-exception v4

    goto/16 :goto_8

    :catch_16
    move-exception v4

    goto/16 :goto_8

    :catch_17
    move-exception v4

    goto/16 :goto_8

    :catch_18
    move-exception v4

    goto/16 :goto_8

    :catch_19
    move-exception v4

    goto/16 :goto_8

    :catch_1a
    move-exception v4

    goto/16 :goto_8

    :catch_1b
    move-exception v4

    goto/16 :goto_8

    .end local v16           #svrEASCmdsHdr:Lorg/apache/http/Header;
    .end local v17           #svrEASVersHdr:Lorg/apache/http/Header;
    :catch_1c
    move-exception v4

    goto/16 :goto_8

    :catch_1d
    move-exception v4

    goto/16 :goto_8

    :catch_1e
    move-exception v4

    goto/16 :goto_8

    :catch_1f
    move-exception v4

    goto/16 :goto_8

    :catch_20
    move-exception v4

    goto/16 :goto_8

    :catch_21
    move-exception v4

    goto/16 :goto_8

    :catch_22
    move-exception v4

    goto/16 :goto_8

    :catch_23
    move-exception v4

    goto/16 :goto_8

    :catch_24
    move-exception v4

    goto/16 :goto_8

    .end local v12           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #statusLine:Lorg/apache/http/StatusLine;
    .end local v18           #targetHost:Lorg/apache/http/HttpHost;
    .end local v19           #targetURL:Ljava/lang/String;
    .restart local v4       #e:Ljava/lang/Exception;
    .restart local v6       #errorCode:I
    :catch_25
    move-exception v4

    goto/16 :goto_a

    :catch_26
    move-exception v4

    goto/16 :goto_a

    :catch_27
    move-exception v4

    goto/16 :goto_a

    :catch_28
    move-exception v4

    goto/16 :goto_8

    :catch_29
    move-exception v4

    goto/16 :goto_8

    :catch_2a
    move-exception v4

    goto/16 :goto_8

    :catch_2b
    move-exception v4

    goto/16 :goto_8

    :catch_2c
    move-exception v4

    goto/16 :goto_8

    :catch_2d
    move-exception v4

    goto/16 :goto_8

    :catch_2e
    move-exception v4

    goto/16 :goto_8

    :catch_2f
    move-exception v4

    goto/16 :goto_8

    :catch_30
    move-exception v4

    goto/16 :goto_8

    :catch_31
    move-exception v4

    goto/16 :goto_8

    :catch_32
    move-exception v4

    goto/16 :goto_8

    :catch_33
    move-exception v4

    goto/16 :goto_8

    :catch_34
    move-exception v4

    goto/16 :goto_8

    :catch_35
    move-exception v4

    goto/16 :goto_8

    :catch_36
    move-exception v4

    goto/16 :goto_8

    :catch_37
    move-exception v4

    goto/16 :goto_8

    :catch_38
    move-exception v4

    goto/16 :goto_8

    :catch_39
    move-exception v4

    goto/16 :goto_8

    :catch_3a
    move-exception v4

    goto/16 :goto_8

    :catch_3b
    move-exception v4

    goto/16 :goto_8

    .end local v6           #errorCode:I
    :catch_3c
    move-exception v4

    goto/16 :goto_8

    :catch_3d
    move-exception v4

    goto/16 :goto_8

    :catch_3e
    move-exception v4

    goto/16 :goto_8

    :catch_3f
    move-exception v4

    goto/16 :goto_8

    .local v4, e:Ljavax/net/ssl/SSLException;
    .restart local v6       #errorCode:I
    :catch_40
    move-exception v4

    goto/16 :goto_8

    :catch_41
    move-exception v4

    goto/16 :goto_8

    :catch_42
    move-exception v4

    goto/16 :goto_8

    :catch_43
    move-exception v4

    goto/16 :goto_8

    :catch_44
    move-exception v4

    goto/16 :goto_8

    :catch_45
    move-exception v4

    goto/16 :goto_8

    :catch_46
    move-exception v4

    goto/16 :goto_8

    :catch_47
    move-exception v4

    goto/16 :goto_8
.end method

.class public Lcom/sprint/dsa/DsaHttpClient;
.super Ljava/lang/Object;
.source "DsaHttpClient.java"


# static fields
.field public static final ALLOW_RETRY:Z = true

.field public static final TAG:Ljava/lang/String; = "DSS"

.field public static final TIMEOUT_SLOT0:I = 0x15f90

.field public static final TIMEOUT_SLOT1:I = 0x7530

.field public static lastLoadUrl:Ljava/lang/String;


# instance fields
.field private dsaClient:Lcom/sprint/dsa/DsaClient;

.field private errorMessage:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public httpConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private httpGet:Lorg/apache/http/client/methods/HttpGet;

.field private imagesToLoad:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keepAliveTimer:Ljava/util/Timer;

.field private loadingRes:Z

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I

.field private retryLoadCount:I

.field public runInUIThread:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v5, p0, Lcom/sprint/dsa/DsaHttpClient;->loadingRes:Z

    .line 49
    iput-object v4, p0, Lcom/sprint/dsa/DsaHttpClient;->runInUIThread:Ljava/lang/Runnable;

    .line 50
    iput-object v4, p0, Lcom/sprint/dsa/DsaHttpClient;->proxyHost:Ljava/lang/String;

    .line 51
    iput v5, p0, Lcom/sprint/dsa/DsaHttpClient;->proxyPort:I

    .line 54
    iput-object v4, p0, Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;

    .line 55
    iput-object v4, p0, Lcom/sprint/dsa/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 59
    iput v5, p0, Lcom/sprint/dsa/DsaHttpClient;->retryLoadCount:I

    .line 64
    if-eqz p1, :cond_0

    .line 65
    check-cast p1, Lcom/sprint/dsa/DsaClient;

    .end local p1
    iput-object p1, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    .line 68
    :cond_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v4, p0, Lcom/sprint/dsa/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 69
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/sprint/dsa/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    .line 72
    :try_start_0
    iget-object v4, p0, Lcom/sprint/dsa/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/dsa/DsaHttpClient;->httpConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 73
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    .line 74
    .local v3, ssl:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v0, Lcom/sprint/dsa/DsaAllowAllHostnameVerifier;

    invoke-direct {v0}, Lcom/sprint/dsa/DsaAllowAllHostnameVerifier;-><init>()V

    .line 75
    .local v0, dsaAAHV:Lcom/sprint/dsa/DsaAllowAllHostnameVerifier;
    invoke-virtual {v3, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 76
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v2, v4, v3, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 77
    .local v2, sch:Lorg/apache/http/conn/scheme/Scheme;
    iget-object v4, p0, Lcom/sprint/dsa/DsaHttpClient;->httpConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0           #dsaAAHV:Lcom/sprint/dsa/DsaAllowAllHostnameVerifier;
    .end local v2           #sch:Lorg/apache/http/conn/scheme/Scheme;
    .end local v3           #ssl:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DSS"

    const-string v5, "DsaHttpClient: error setting up SSL..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/sprint/dsa/DsaHttpClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprint/dsa/DsaHttpClient;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/sprint/dsa/DsaHttpClient;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/sprint/dsa/DsaHttpClient;->proxyPort:I

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/dsa/DsaHttpClient;)Lcom/sprint/dsa/DsaClient;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sprint/dsa/DsaHttpClient;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sprint/dsa/DsaHttpClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/sprint/dsa/DsaHttpClient;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/sprint/dsa/DsaHttpClient;->retryLoadCount:I

    return v0
.end method

.method static synthetic access$6(Lcom/sprint/dsa/DsaHttpClient;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .parameter "is"

    .prologue
    .line 211
    iget-object v4, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v4, v4, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "DSS"

    const-string v5, "DsaHttpClient.convertStreamToString()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 214
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    .line 218
    .local v1, line:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 225
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 230
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 219
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "DSS"

    const-string v5, "DsaHttpClient.converStreamToString()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 226
    :catch_1
    move-exception v0

    .line 227
    .local v0, e:Ljava/io/IOException;
    const-string v4, "DSS"

    const-string v5, "DsaHttpClient.converStreamToString()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 223
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 225
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 229
    :goto_2
    throw v4

    .line 226
    :catch_2
    move-exception v0

    .line 227
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "DSS"

    const-string v6, "DsaHttpClient.converStreamToString()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 226
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 227
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "DSS"

    const-string v5, "DsaHttpClient.converStreamToString()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public execute(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 241
    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_LOADING_URL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/StateManager;->setBGState(Lcom/sprint/dsa/StateManager$dsaBackgroundState;)V

    .line 242
    new-instance v0, Lcom/sprint/dsa/DsaHttpClient$1;

    invoke-direct {v0, p0, p1}, Lcom/sprint/dsa/DsaHttpClient$1;-><init>(Lcom/sprint/dsa/DsaHttpClient;Ljava/lang/String;)V

    .line 296
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    return-void
.end method

.method public getResource(Ljava/lang/String;)V
    .locals 25
    .parameter "url"

    .prologue
    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 374
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaHttpClient;->loadingRes:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 431
    :goto_0
    return-void

    .line 379
    :cond_0
    :try_start_0
    const-string v21, "android.os.StrictMode"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 380
    .local v18, strictModeClass:Ljava/lang/Class;
    const-string v21, "android.os.StrictMode$ThreadPolicy"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    .line 381
    .local v19, strictModeThreadPolicyClass:Ljava/lang/Class;
    const-string v21, "LAX"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 382
    .local v14, laxPolicy:Ljava/lang/Object;
    const-string v21, "setThreadPolicy"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v19, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 383
    .local v15, method_setThreadPolicy:Ljava/lang/reflect/Method;
    const/16 v21, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    .end local v14           #laxPolicy:Ljava/lang/Object;
    .end local v15           #method_setThreadPolicy:Ljava/lang/reflect/Method;
    .end local v18           #strictModeClass:Ljava/lang/Class;
    .end local v19           #strictModeThreadPolicyClass:Ljava/lang/Class;
    :goto_1
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/dsa/DsaHttpClient;->loadingRes:Z

    .line 386
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 430
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/dsa/DsaHttpClient;->loadingRes:Z

    goto :goto_0

    .line 388
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 389
    .local v6, curURL:Ljava/lang/String;
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v12, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 391
    .local v12, get:Lorg/apache/http/client/methods/HttpGet;
    const/16 v21, 0x2f

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 392
    .local v13, lastIndex:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_2

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 425
    .end local v6           #curURL:Ljava/lang/String;
    .end local v12           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #lastIndex:I
    :catch_0
    move-exception v8

    .line 426
    .local v8, e:Ljava/lang/Exception;
    const-string v21, "DSS"

    const-string v22, "getResource"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    .end local v8           #e:Ljava/lang/Exception;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 397
    .restart local v6       #curURL:Ljava/lang/String;
    .restart local v12       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #lastIndex:I
    :cond_2
    add-int/lit8 v21, v13, 0x1

    :try_start_2
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 398
    .local v16, resName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    const-string v22, "images"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/sprint/dsa/DsaClient;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    .line 399
    .local v7, dir:Ljava/io/File;
    new-instance v20, Ljava/io/File;

    const-string v21, "images"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    .local v20, subDir:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 401
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 407
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 409
    .local v17, resp:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 410
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 411
    .local v9, entity:Lorg/apache/http/HttpEntity;
    const-string v21, "DSS"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Response content length: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 411
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v9           #entity:Lorg/apache/http/HttpEntity;
    :cond_4
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 416
    .local v5, content:Ljava/io/InputStream;
    const/16 v21, 0x1000

    move/from16 v0, v21

    new-array v3, v0, [B

    .line 419
    .local v3, buffer:[B
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 420
    .local v11, fos:Ljava/io/FileOutputStream;
    :goto_4
    const/16 v21, -0x1

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, c:I
    move/from16 v0, v21

    if-ne v0, v4, :cond_5

    .line 423
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 424
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_3

    .line 421
    :cond_5
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v3, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 384
    .end local v3           #buffer:[B
    .end local v4           #c:I
    .end local v5           #content:Ljava/io/InputStream;
    .end local v6           #curURL:Ljava/lang/String;
    .end local v7           #dir:Ljava/io/File;
    .end local v10           #f:Ljava/io/File;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v12           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #lastIndex:I
    .end local v16           #resName:Ljava/lang/String;
    .end local v17           #resp:Lorg/apache/http/HttpResponse;
    .end local v20           #subDir:Ljava/io/File;
    :catch_1
    move-exception v21

    goto/16 :goto_1
.end method

.method protected handleResult(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 307
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v0}, Lcom/sprint/dsa/StateManager;->getUIState()Lcom/sprint/dsa/StateManager$dsaUIState;

    move-result-object v0

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/DsaClient;->close(I)V

    .line 359
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    if-eqz v0, :cond_6

    .line 316
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 317
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    const-string v1, "dm_cifumo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 319
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    const-string v1, "dm_cidc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 321
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto :goto_0

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    const-string v1, "dm_ciprl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 323
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto :goto_0

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    const-string v1, "icq_report"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 325
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto :goto_0

    .line 327
    :cond_5
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto :goto_0

    .line 333
    :cond_6
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    .line 338
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/DsaWebViewClient;

    invoke-virtual {v0, p1}, Lcom/sprint/dsa/DsaWebViewClient;->loadData(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_7
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v1, Lcom/sprint/dsa/DsaHttpClient$2;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/DsaHttpClient$2;-><init>(Lcom/sprint/dsa/DsaHttpClient;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public loadURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 25
    .parameter "url"

    .prologue
    .line 84
    const-string v21, "/dsa/"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    sput-object p1, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v22, v0

    const v23, 0x7f040009

    invoke-virtual/range {v22 .. v23}, Lcom/sprint/dsa/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/dsa/DsaClient;->setBusyText(Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 97
    new-instance v13, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->proxyHost:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/dsa/DsaHttpClient;->proxyPort:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v13, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 99
    .local v13, proxy:Lorg/apache/http/HttpHost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    const-string v22, "http.route.default-proxy"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 103
    .end local v13           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    const/4 v9, 0x0

    .line 104
    .local v9, is:Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 105
    .local v17, retString:Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;

    .line 107
    const/16 v19, 0x0

    .line 108
    .local v19, timeout:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 109
    const/16 v19, 0x64

    .line 113
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    const-string v22, "http.connection.timeout"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 118
    const/4 v10, 0x0

    .line 120
    .local v10, localUrl:Ljava/net/URL;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v10           #localUrl:Ljava/net/URL;
    .local v11, localUrl:Ljava/net/URL;
    new-instance v18, Lorg/apache/http/HttpHost;

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v11}, Ljava/net/URL;->getPort()I

    move-result v22

    .line 128
    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v23

    .line 127
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    .local v18, targetHost:Lorg/apache/http/HttpHost;
    invoke-virtual {v11}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v14

    .line 130
    .local v14, query:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 131
    .local v12, path:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, Protocol:Ljava/lang/String;
    const-string v21, "443"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 133
    .local v8, index:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v8, v0, :cond_3

    const-string v21, "https"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "http"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "80"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v8, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sprint/dsa/DsaClient;->baseURL:Ljava/lang/String;

    .line 138
    :goto_1
    const/16 v20, 0x0

    .line 139
    .local v20, urlStr:Ljava/lang/String;
    if-nez v14, :cond_4

    .line 140
    move-object/from16 v20, v12

    .line 144
    :goto_2
    new-instance v21, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    const-string v22, "http.socket.timeout"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 152
    const/4 v15, 0x0

    .line 155
    .local v15, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 178
    const-string v21, "DSS"

    const-string v22, "DsaHttpClient.loadURL(): returning because of exit action..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/16 v21, 0x0

    move-object v10, v11

    .line 206
    .end local v4           #Protocol:Ljava/lang/String;
    .end local v8           #index:I
    .end local v11           #localUrl:Ljava/net/URL;
    .end local v12           #path:Ljava/lang/String;
    .end local v14           #query:Ljava/lang/String;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v18           #targetHost:Lorg/apache/http/HttpHost;
    .end local v20           #urlStr:Ljava/lang/String;
    .restart local v10       #localUrl:Ljava/net/URL;
    :goto_3
    return-object v21

    .line 111
    .end local v10           #localUrl:Ljava/net/URL;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    const v19, 0x15f90

    :goto_4
    goto/16 :goto_0

    :cond_2
    const/16 v19, 0x7530

    goto :goto_4

    .line 121
    .restart local v10       #localUrl:Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 122
    .local v5, e:Ljava/lang/Exception;
    const-string v21, "DSS"

    const-string v22, "DsaHttpClient.loadUrl(): error: "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/16 v21, 0x0

    goto :goto_3

    .line 136
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #localUrl:Ljava/net/URL;
    .restart local v4       #Protocol:Ljava/lang/String;
    .restart local v8       #index:I
    .restart local v11       #localUrl:Ljava/net/URL;
    .restart local v12       #path:Ljava/lang/String;
    .restart local v14       #query:Ljava/lang/String;
    .restart local v18       #targetHost:Lorg/apache/http/HttpHost;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sprint/dsa/DsaClient;->baseURL:Ljava/lang/String;

    goto/16 :goto_1

    .line 142
    .restart local v20       #urlStr:Ljava/lang/String;
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 156
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v5

    .line 157
    .restart local v5       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 158
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, errMsg:Ljava/lang/String;
    if-nez v7, :cond_5

    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 161
    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 163
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x3c

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 164
    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    const/16 v23, 0x3c

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 166
    :cond_6
    const-string v21, "Network Error"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;

    .line 167
    const-string v21, "DSS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v7           #errMsg:Ljava/lang/String;
    :goto_5
    const-string v21, "DSS"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "DsaHttpClient.loadURL(): returning prematurely because of error: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/16 v21, 0x0

    move-object v10, v11

    .end local v11           #localUrl:Ljava/net/URL;
    .restart local v10       #localUrl:Ljava/net/URL;
    goto/16 :goto_3

    .line 169
    .end local v10           #localUrl:Ljava/net/URL;
    .restart local v11       #localUrl:Ljava/net/URL;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v22, v0

    const v23, 0x7f04000b

    invoke-virtual/range {v22 .. v23}, Lcom/sprint/dsa/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/dsa/DsaClient;->setBusyText(Ljava/lang/String;)V

    .line 170
    const-string v21, "DSS"

    const-string v22, "DsaHttpClient.loadURL(): Exit Action"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 182
    .end local v5           #e:Ljava/lang/Exception;
    :cond_8
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 183
    .local v16, retCode:I
    const/16 v21, 0xc8

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 184
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 186
    .local v6, entity:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 187
    const-string v21, "DSS"

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_9
    if-eqz v6, :cond_a

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 190
    const-string v21, "DSS"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Response content length: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 190
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_a
    if-eqz v6, :cond_b

    .line 195
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 200
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sprint/dsa/DsaHttpClient;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v17

    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    :goto_7
    move-object v10, v11

    .end local v11           #localUrl:Ljava/net/URL;
    .restart local v10       #localUrl:Ljava/net/URL;
    move-object/from16 v21, v17

    .line 206
    goto/16 :goto_3

    .line 196
    .end local v10           #localUrl:Ljava/net/URL;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v11       #localUrl:Ljava/net/URL;
    :catch_2
    move-exception v5

    .line 197
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v21, "DSS"

    const-string v22, "DsaHttpClient.loadURL(): error"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 202
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    :cond_c
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Server Error:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;

    .line 203
    const-string v21, "DSS"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "DsaHttpClient.loadURL(): "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public retryLastUrl()Z
    .locals 2

    .prologue
    .line 362
    iget v0, p0, Lcom/sprint/dsa/DsaHttpClient;->retryLoadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sprint/dsa/DsaHttpClient;->retryLoadCount:I

    .line 363
    sget-object v0, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 364
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaSystem:Lcom/sprint/dsa/DsaSystem;

    invoke-virtual {v0}, Lcom/sprint/dsa/DsaSystem;->getURL()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    .line 365
    sget-object v0, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const-string v1, "Network Error"

    invoke-static {v0, v1}, Lcom/sprint/dsa/DsaDialogs;->closeDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V

    .line 367
    :cond_0
    sget-object v0, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/DsaHttpClient;->execute(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x1

    return v0
.end method

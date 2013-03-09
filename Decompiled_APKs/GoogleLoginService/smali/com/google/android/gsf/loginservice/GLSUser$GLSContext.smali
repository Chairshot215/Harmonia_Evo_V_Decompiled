.class public Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;
.super Ljava/lang/Object;
.source "GLSUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/GLSUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLSContext"
.end annotation


# instance fields
.field private final mAccountInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/loginservice/GLSUser;",
            ">;"
        }
    .end annotation
.end field

.field mAccountManager:Landroid/accounts/AccountManager;

.field private mAndroidIdHex:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mHttpClient:Lorg/apache/http/client/HttpClient;

.field mHttpTestInjector:Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;

.field final mLastErrors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPM:Landroid/content/pm/PackageManager;

.field final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/accounts/AccountManager;Landroid/content/pm/PackageManager;Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .parameter "context"
    .parameter "accountManager"
    .parameter "packageManager"
    .parameter "httpClient"

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountInfo:Ljava/util/Map;

    .line 410
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mLastErrors:Ljava/util/LinkedList;

    .line 415
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mSessions:Ljava/util/LinkedHashMap;

    .line 424
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    .line 425
    iput-object p2, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    .line 426
    iput-object p3, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mPM:Landroid/content/pm/PackageManager;

    .line 427
    iput-object p4, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 428
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/accounts/AccountManager;Landroid/content/pm/PackageManager;Lorg/apache/http/client/HttpClient;Lcom/google/android/gsf/loginservice/GLSUser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 399
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;-><init>(Landroid/content/Context;Landroid/accounts/AccountManager;Landroid/content/pm/PackageManager;Lorg/apache/http/client/HttpClient;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountInfo:Ljava/util/Map;

    return-object v0
.end method

.method static jsonError(Lcom/google/android/gsf/loginservice/GLSUser$Status;)Lorg/json/JSONObject;
    .locals 3
    .parameter "status"

    .prologue
    .line 496
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 499
    .local v0, res:Lorg/json/JSONObject;
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->STATUS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-object v0

    .line 500
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addSession(Landroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "res"
    .parameter "session"

    .prologue
    .line 564
    if-eqz p2, :cond_0

    .line 565
    invoke-virtual {p2, p1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->addSession(Landroid/content/Intent;)V

    move-object v0, p2

    .line 571
    .end local p2
    .local v0, session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    :goto_0
    return-object v0

    .line 568
    .end local v0           #session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->newSession()Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object p2

    .line 569
    invoke-virtual {p2, p1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->addSession(Landroid/content/Intent;)V

    move-object v0, p2

    .line 571
    .end local p2
    .restart local v0       #session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    goto :goto_0
.end method

.method public checkRealName(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 7
    .parameter "session"

    .prologue
    .line 596
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 598
    .local v1, json:Lorg/json/JSONStringer;
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 599
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->prepareRequestNoUser(Lorg/json/JSONStringer;)V

    .line 601
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v1, v4}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->copyFromProfile(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Lorg/json/JSONStringer;Ljava/lang/String;)V

    .line 602
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v1, v4}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->copyFromProfile(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Lorg/json/JSONStringer;Ljava/lang/String;)V

    .line 603
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 605
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$000()Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v4

    const-string v5, "https://android.clients.google.com/setup/checkname"

    const-string v6, "checkRealName"

    invoke-virtual {v4, v5, v1, v6}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->httpJson(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 606
    .local v2, res:Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkRealNam: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Res: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->log(Ljava/lang/String;)V

    .line 607
    invoke-static {v2}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromJSON(Lorg/json/JSONObject;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v3

    .line 608
    .local v3, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_INTERSTITIAL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_INVALID_CHAR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_NICKNAME:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_OTHER:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v3, v4, :cond_1

    .line 623
    .end local v1           #json:Lorg/json/JSONStringer;
    .end local v2           #res:Lorg/json/JSONObject;
    .end local v3           #status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :cond_0
    :goto_0
    return-object v3

    .line 615
    .restart local v1       #json:Lorg/json/JSONStringer;
    .restart local v2       #res:Lorg/json/JSONObject;
    .restart local v3       #status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :cond_1
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    .end local v1           #json:Lorg/json/JSONStringer;
    .end local v2           #res:Lorg/json/JSONObject;
    .end local v3           #status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :catch_0
    move-exception v0

    .line 623
    .local v0, ex:Lorg/json/JSONException;
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto :goto_0
.end method

.method copyFromProfile(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Lorg/json/JSONStringer;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "json"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-virtual {p2, p3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v0, p1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 630
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "writer"

    .prologue
    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sessions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mLastErrors:Ljava/util/LinkedList;

    monitor-enter v3

    .line 662
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mLastErrors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 663
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    return-void
.end method

.method public getAndroidIdHex()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 452
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAndroidIdHex:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 456
    .local v0, androidId:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 457
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAndroidIdHex:Ljava/lang/String;

    .line 460
    .end local v0           #androidId:J
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAndroidIdHex:Ljava/lang/String;

    return-object v2
.end method

.method public getInjector()Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mHttpTestInjector:Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;

    invoke-direct {v0}, Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mHttpTestInjector:Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mHttpTestInjector:Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 3
    .parameter "id"

    .prologue
    .line 582
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    .line 583
    .local v0, session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    if-nez v0, :cond_1

    .line 584
    const-string v1, "GLSUser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    const-string v1, "GLSUser"

    const-string v2, "Session was previously removed, creating new one"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    .end local v0           #session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-direct {v0, p1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;-><init>(Ljava/lang/String;)V

    .line 588
    .restart local v0       #session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$000()Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_1
    return-object v0
.end method

.method public getSessionOrNull(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "id"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method public httpJson(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter "url"
    .parameter "jsonRequest"
    .parameter "id"

    .prologue
    .line 481
    const-string v2, ""

    .line 483
    .local v2, resJson:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->requestJson(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    :goto_0
    return-object v3

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Json request failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->log(Ljava/lang/String;)V

    .line 488
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-static {v4}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->jsonError(Lcom/google/android/gsf/loginservice/GLSUser$Status;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    .line 489
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 490
    .local v1, ex:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Json request failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->log(Ljava/lang/String;)V

    .line 491
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-static {v4}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->jsonError(Lcom/google/android/gsf/loginservice/GLSUser$Status;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0
.end method

.method public httpPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter "url"
    .parameter "entity"
    .parameter "header"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    const/4 v2, 0x0

    .line 515
    .local v2, response:Lorg/apache/http/HttpResponse;
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mHttpTestInjector:Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mHttpTestInjector:Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;->httpPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 518
    :cond_0
    if-nez v2, :cond_2

    .line 520
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/gsf/login/Compat;->trafficStatsSetThreadStatsTag(I)V

    .line 522
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 523
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v1, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 524
    if-eqz p3, :cond_1

    .line 525
    invoke-virtual {v1, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 527
    :cond_1
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$000()Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 531
    invoke-static {}, Lcom/google/android/gsf/login/Compat;->trafficStatsClearThreadStatsTag()V

    .line 535
    .end local v1           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_2
    return-object v2

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/google/android/gsf/login/Compat;->trafficStatsClearThreadStatsTag()V

    throw v3
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 434
    :cond_0
    const-string v0, "Token=[^&\n;]*"

    const-string v1, "Token=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 435
    const-string v0, "LSID=[^&\n;]*"

    const-string v1, "LSID=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 436
    const-string v0, "SID=[^&\n;]*"

    const-string v1, "SID=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 437
    const-string v0, "auth=[^&\n;]*"

    const-string v1, "auth=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 438
    const-string v0, "EncryptedPasswd=[^&\n;]*"

    const-string v1, "EncryptedPasswd=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 439
    const-string v0, "Passwd=[^&\n;]*"

    const-string v1, "Passwd=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 440
    const-string v0, "GLSUser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    const-string v0, "GLSUser"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mLastErrors:Ljava/util/LinkedList;

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mLastErrors:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mLastErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x28

    if-le v0, v2, :cond_2

    .line 446
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mLastErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 448
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newSession()Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 4

    .prologue
    .line 553
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$000()Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_0

    .line 555
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$000()Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 556
    .local v0, keysInInsertOrder:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$000()Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mSessions:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .end local v0           #keysInInsertOrder:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;-><init>(Ljava/lang/String;)V

    .line 559
    .local v1, session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$000()Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mSessions:Ljava/util/LinkedHashMap;

    iget-object v3, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    return-object v1
.end method

.method public prepareRequestNoUser(Lorg/json/JSONStringer;)V
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$000()Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->getAndroidIdHex()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, androidIdHex:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 642
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ANDROID_ID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 646
    :cond_0
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$000()Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_country"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, countryCode:Ljava/lang/String;
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->OPERATOR_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 650
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->DEVICE_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 651
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LANGUAGE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 652
    return-void
.end method

.method public requestJson(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "jsonRequest"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .local v0, content:Lorg/apache/http/entity/StringEntity;
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v0, v4, p3}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->httpPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 468
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 469
    .local v3, result:Ljava/lang/String;
    return-object v3

    .line 470
    .end local v0           #content:Lorg/apache/http/entity/StringEntity;
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 471
    .local v1, e:Ljava/io/IOException;
    throw v1
.end method

.class public Lcom/google/android/finsky/api/DfeApiImpl;
.super Ljava/lang/Object;
.source "DfeApiImpl.java"

# interfaces
.implements Lcom/google/android/finsky/api/DfeApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;,
        Lcom/google/android/finsky/api/DfeApiImpl$TocListener;
    }
.end annotation


# static fields
.field private static final BULK_DETAILS_TIMEOUT_MS:I

.field private static final DEFAULT_BACKOFF_MULT:F

.field private static final DEFAULT_MAX_RETRIES:I

.field private static final PURCHASE_TIMEOUT_MS:I

.field private static final VERIFY_ASSOCIATION_MAX_RETRIES:I

.field private static final VERIFY_ASSOCIATION_TIMEOUT_MS:I


# instance fields
.field private final mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

.field private final mQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->purchaseStatusTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->PURCHASE_TIMEOUT_MS:I

    .line 82
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->bulkDetailsTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_TIMEOUT_MS:I

    .line 85
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->verifyAssociationTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_TIMEOUT_MS:I

    .line 89
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->verifyAssociationMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_MAX_RETRIES:I

    .line 96
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->dfeMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->DEFAULT_MAX_RETRIES:I

    .line 99
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->dfeBackoffMultipler:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/finsky/api/DfeApiImpl;->DEFAULT_BACKOFF_MULT:F

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/api/DfeApiContext;)V
    .locals 0
    .parameter "queue"
    .parameter "apiContext"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    .line 106
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/api/DfeApiImpl;)Lcom/google/android/finsky/api/DfeApiContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    return-object v0
.end method

.method private static encodeServerToken([B)Ljava/lang/String;
    .locals 1
    .parameter "serverToken"

    .prologue
    .line 613
    const/16 v0, 0x8

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQueryParameters(Landroid/net/Uri;)Ljava/util/Map;
    .locals 10
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, encodedQuery:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 113
    const-string v8, "&"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, params:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 115
    .local v6, param:Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, pair:[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 117
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pair:[Ljava/lang/String;
    .end local v6           #param:Ljava/lang/String;
    .end local v7           #params:[Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static getRecommendationsBrowseUrl(I)Ljava/lang/String;
    .locals 3
    .parameter "backendId"

    .prologue
    .line 799
    sget-object v0, Lcom/google/android/finsky/api/DfeApiImpl;->BROWSE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "c"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bt"

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecommendationsUrl(I)Ljava/lang/String;
    .locals 3
    .parameter "backendId"

    .prologue
    .line 806
    sget-object v0, Lcom/google/android/finsky/api/DfeApiImpl;->BESPOKE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "c"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getReviewsUrl(Ljava/lang/String;ZIII)Ljava/lang/String;
    .locals 3
    .parameter "baseUrl"
    .parameter "filterByDevice"
    .parameter "versionFilter"
    .parameter "ratingFilter"
    .parameter "sortOrder"

    .prologue
    .line 256
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 257
    .local v0, builder:Landroid/net/Uri$Builder;
    if-eqz p1, :cond_0

    .line 258
    const-string v1, "dfil"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 260
    :cond_0
    if-lez p2, :cond_1

    .line 261
    const-string v1, "vc"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 264
    :cond_1
    if-lez p3, :cond_2

    .line 265
    const-string v1, "rating"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 268
    :cond_2
    const-string v1, "sort"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 269
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;
    .locals 5

    .prologue
    .line 676
    new-instance v0, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v1, Lcom/google/android/finsky/api/DfeApiImpl;->PURCHASE_TIMEOUT_MS:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    return-object v0
.end method


# virtual methods
.method public acceptTos(Ljava/lang/String;Ljava/lang/Boolean;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->ACCEPT_TOS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 288
    const-string v1, "tost"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    if-eqz p2, :cond_0

    .line 290
    const-string v1, "toscme"

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public ackNotification(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->ACK_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 279
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public addReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->ADDREVIEW_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 213
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "rating"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "ipr"

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public addToLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 690
    new-instance v2, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;-><init>()V

    .line 691
    invoke-virtual {v2, p2}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    .line 692
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 693
    invoke-virtual {v2, v0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->addForAddDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    goto :goto_0

    .line 695
    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->MODIFY_LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 698
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public archiveFromLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 718
    new-instance v2, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;-><init>()V

    .line 719
    invoke-virtual {v2, p2}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    .line 720
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 721
    invoke-virtual {v2, v0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->addForArchiveDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    goto :goto_0

    .line 723
    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->MODIFY_LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 726
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public checkInstrument(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 499
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CHECK_INSTRUMENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 502
    const-string v1, "ct"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    if-eqz p2, :cond_0

    .line 504
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 505
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public checkPromoOffers(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CHECK_PROMO_OFFER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 518
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 519
    if-eqz p1, :cond_0

    .line 520
    const-string v1, "ct"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 524
    const-string v1, "X-DFE-Hardware-Id"

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/api/DfeApiContext;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public completePurchase(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->COMPLETE_PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-object v4, p8

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 434
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 435
    const-string v1, "doc"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    if-eqz p2, :cond_0

    .line 437
    const-string v1, "cart"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 440
    const-string v1, "vc"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_1
    if-eqz p3, :cond_2

    .line 444
    const-string v1, "ct"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_2
    if-eqz p4, :cond_3

    .line 447
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 448
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_3
    if-eqz p5, :cond_4

    .line 452
    const-string v1, "ctos"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_4
    if-eqz p6, :cond_5

    .line 455
    const-string v1, "pc"

    invoke-virtual {v0, v1, p6}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_5
    if-eqz p7, :cond_6

    .line 458
    const-string v1, "chdi"

    invoke-virtual {v0, v1, p7}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public consumePurchase(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CONSUME_PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 735
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 736
    const-string v1, "pt"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v1, "shpn"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public deleteReview(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->DELETEREVIEW_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 227
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "revId"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public delivery(Ljava/lang/String;I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[B",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 577
    sget-object v0, Lcom/google/android/finsky/api/DfeApiImpl;->DELIVERY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 580
    if-eqz p3, :cond_0

    .line 581
    invoke-static {p3}, Lcom/google/android/finsky/api/DfeApiImpl;->encodeServerToken([B)Ljava/lang/String;

    move-result-object v0

    .line 582
    const-string v2, "st"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 584
    :cond_0
    if-eqz p4, :cond_1

    .line 585
    const-string v0, "vc"

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 587
    :cond_1
    if-eqz p5, :cond_2

    .line 588
    const-string v0, "bvc"

    invoke-virtual {p5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 591
    const-string v0, "pf"

    invoke-virtual {v1, v0, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 593
    :cond_2
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 596
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public flagContent(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->FLAG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 184
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "cft"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiContext()Lcom/google/android/finsky/api/DfeApiContext;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    return-object v0
.end method

.method public getBrowseLayout(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 175
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getDetails(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 301
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v3, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;-><init>()V

    .line 308
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 309
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 310
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    invoke-virtual {v3, v0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->addDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;

    goto :goto_0

    .line 313
    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$1;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v5, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/api/DfeApiImpl$1;-><init>(Lcom/google/android/finsky/api/DfeApiImpl;Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/List;)V

    .line 329
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setShouldCache(Z)V

    .line 330
    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApiImpl;->BULK_DETAILS_TIMEOUT_MS:I

    sget v3, Lcom/google/android/finsky/api/DfeApiImpl;->DEFAULT_MAX_RETRIES:I

    sget v4, Lcom/google/android/finsky/api/DfeApiImpl;->DEFAULT_BACKOFF_MULT:F

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 332
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryUrl(ILjava/lang/String;I[B)Ljava/lang/String;
    .locals 5
    .parameter "corpus"
    .parameter "libraryId"
    .parameter "docType"
    .parameter "serverToken"

    .prologue
    .line 601
    sget-object v2, Lcom/google/android/finsky/api/DfeApiImpl;->LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "c"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "dt"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "libid"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 605
    .local v1, uriBuilder:Landroid/net/Uri$Builder;
    if-eqz p4, :cond_0

    .line 606
    invoke-static {p4}, Lcom/google/android/finsky/api/DfeApiImpl;->encodeServerToken([B)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, encodedServerToken:Ljava/lang/String;
    const-string v2, "st"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 609
    .end local v0           #encodedServerToken:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getList(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 195
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseStatus(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 416
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 419
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 420
    invoke-static {v6}, Lcom/google/android/finsky/api/DfeApiImpl;->getQueryParameters(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    .line 421
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 422
    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendations(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 629
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeApiImpl;->getRecommendationsUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 631
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 633
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getReviews(Ljava/lang/String;ZIIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIII",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/api/DfeApiImpl;->getReviewsUrl(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    .line 249
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 251
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getToc(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Z)",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->CHANNELS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    new-instance v4, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;

    invoke-direct {v4, p0, p1}, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;-><init>(Lcom/google/android/finsky/api/DfeApiImpl;Lcom/android/volley/Response$Listener;)V

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 144
    invoke-virtual {v0, p3}, Lcom/google/android/finsky/api/DfeRequest;->setAllowMultipleResponses(Z)V

    .line 145
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public initiateAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 533
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->DCB_INITIATE_ASSOCIATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 537
    const-string v1, "dcbch"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public instrumentSetupInfo(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 652
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 653
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->INSTRUMENT_SETUP_INFO_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 657
    const-string v1, "ct"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v1, "if"

    invoke-virtual {v0, v1, v6}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    if-eqz p2, :cond_0

    .line 660
    const-string v1, "cc"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDetailsCache(Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 777
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 779
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p2, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 781
    return-void
.end method

.method public invalidateListCache(Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 787
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 789
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p2, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 791
    return-void
.end method

.method public invalidatePlusProfile(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 755
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->GET_PLUS_PROFILE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 757
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p1, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 759
    return-void
.end method

.method public invalidateRecommendationsCache(I)V
    .locals 2
    .parameter "backendId"

    .prologue
    .line 682
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeApiImpl;->getRecommendationsUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, url:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl;->invalidateListCache(Ljava/lang/String;Z)V

    .line 685
    return-void
.end method

.method public invalidateReviewsCache(Ljava/lang/String;ZIIIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 764
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/api/DfeApiImpl;->getReviewsUrl(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    .line 767
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 769
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/google/android/finsky/api/DfeClearCacheRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p6, v4}, Lcom/google/android/finsky/api/DfeClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/String;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 771
    return-void
.end method

.method public log(Lcom/google/android/finsky/remoting/protos/Log$LogRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/Log$LogRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Log$LogResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->LOG_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 559
    invoke-virtual {v0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setAvoidBulkCancel()V

    .line 560
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 381
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 382
    const-string v1, "doc"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 385
    const-string v1, "vc"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    if-eqz p3, :cond_1

    .line 389
    const-string v1, "ct"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_1
    if-eqz p5, :cond_3

    .line 392
    const-string v1, "bav"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "shpn"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v1, "shh"

    invoke-virtual {v0, v1, p6}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "shvc"

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-nez p8, :cond_2

    .line 400
    const-string p8, ""

    .line 402
    :cond_2
    const-string v1, "payload"

    invoke-virtual {v0, v1, p8}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_3
    if-eqz p9, :cond_4

    .line 405
    invoke-interface {p9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 406
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 12
    .parameter "doc"
    .parameter "offerType"
    .parameter "authToken"
    .parameter
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p4, extraPostParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;>;"
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public rateReview(Ljava/lang/String;Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v6, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->RATEREVIEW_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "doc"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "revId"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "rating"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v6, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public rateSuggestedContent(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 639
    sget-object v0, Lcom/google/android/finsky/api/DfeApiImpl;->GTFO:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "crt"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 642
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 645
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public redeemGiftCard(Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 668
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->REDEEM_GIFT_CARD_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 671
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 672
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public removeFromLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 704
    new-instance v2, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;-><init>()V

    .line 705
    invoke-virtual {v2, p2}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    .line 706
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 707
    invoke-virtual {v2, v0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->addForRemovalDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    goto :goto_0

    .line 709
    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->MODIFY_LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 712
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public replicateLibrary(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 566
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->REPLICATE_LIBRARY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 570
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public resolveLink(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 619
    sget-object v0, Lcom/google/android/finsky/api/DfeApiImpl;->RESOLVE_LINK:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 620
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 623
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public revoke(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/RevokeResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 466
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->REVOKE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 469
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 470
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 203
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public setPlusOne(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->PLUSONE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 341
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v2, "rating"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 479
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setCheckoutToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 482
    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->UPDATE_INSTRUMENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 486
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl;->makePurchaseRetryPolicy()Lcom/google/android/finsky/api/DfeRetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 487
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 489
    const-string v1, "X-DFE-Hardware-Id"

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/api/DfeApiContext;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/ProtoDfeRequest;->addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public uploadDeviceConfig(Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 818
    new-instance v2, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;-><init>()V

    .line 819
    invoke-virtual {v2, p1}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->setDeviceConfiguration(Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    .line 820
    if-eqz p2, :cond_0

    .line 821
    invoke-virtual {v2, p2}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->setGcmRegistrationId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    .line 824
    :cond_0
    sget-object v0, Lcom/google/android/finsky/api/DfeApiImpl;->UPLOAD_DEVICE_CONFIG:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 825
    new-instance v0, Lcom/google/android/finsky/api/ProtoDfeRequest;

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v4, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 829
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public verifyAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiImpl;->DCB_VERIFY_ASSOCIATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 547
    const-string v1, "dcbch"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v1, Lcom/google/android/finsky/api/DfeRetryPolicy;

    sget v2, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_TIMEOUT_MS:I

    sget v3, Lcom/google/android/finsky/api/DfeApiImpl;->VERIFY_ASSOCIATION_MAX_RETRIES:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(IIFLcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/DfeApiImpl$DfePostRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 550
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiImpl;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

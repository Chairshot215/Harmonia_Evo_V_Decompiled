.class Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;
.super Lcom/google/android/finsky/api/SkyjamJsonObjectRequest;
.source "GooglePlusShareSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/GooglePlusShareSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthorizedSkyjamJsonObjectRequest"
.end annotation


# instance fields
.field private final mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

.field private mLastAuthToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/Authenticator;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .parameter "authenticator"
    .parameter "url"
    .parameter "jsonRequest"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/toolbox/Authenticator;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p4, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/finsky/api/SkyjamJsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;->mLastAuthToken:Ljava/lang/String;

    .line 279
    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;->mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

    .line 280
    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/google/android/finsky/api/SkyjamJsonObjectRequest;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;->mLastAuthToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;->mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;->mLastAuthToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/volley/toolbox/Authenticator;->invalidateAuthToken(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;->mLastAuthToken:Ljava/lang/String;

    .line 291
    :cond_0
    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 299
    invoke-super {p0}, Lcom/google/android/finsky/api/SkyjamJsonObjectRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 301
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;->mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

    invoke-interface {v1}, Lcom/android/volley/toolbox/Authenticator;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;->mLastAuthToken:Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;->mLastAuthToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 303
    new-instance v1, Lcom/android/volley/AuthFailureError;

    const-string v2, "Auth token is null"

    invoke-direct {v1, v2}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_0
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLogin auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;->mLastAuthToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-object v0
.end method

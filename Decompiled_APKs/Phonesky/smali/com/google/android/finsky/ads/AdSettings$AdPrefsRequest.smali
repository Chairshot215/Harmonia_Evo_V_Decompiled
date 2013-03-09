.class Lcom/google/android/finsky/ads/AdSettings$AdPrefsRequest;
.super Lcom/android/volley/Request;
.source "AdSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/ads/AdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdPrefsRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/ads/AdSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/ads/AdSettings;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .parameter
    .parameter "url"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/google/android/finsky/ads/AdSettings$AdPrefsRequest;->this$0:Lcom/google/android/finsky/ads/AdSettings;

    .line 53
    invoke-direct {p0, p2, p4}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 54
    iput-object p3, p0, Lcom/google/android/finsky/ads/AdSettings$AdPrefsRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 55
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/ads/AdSettings$AdPrefsRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/ads/AdSettings$AdPrefsRequest;->deliverResponse(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v2, "X-Mobile-PrefMgr"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, result:Ljava/lang/String;
    const-string v1, "OPTED_IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    .line 62
    :cond_0
    const-string v1, "OPTED_OUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_1
    const-string v1, "result header %s for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0}, Lcom/google/android/finsky/ads/AdSettings$AdPrefsRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1}, Lcom/android/volley/ParseError;-><init>()V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    goto :goto_0
.end method

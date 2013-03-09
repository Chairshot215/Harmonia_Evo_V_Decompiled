.class Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;
.super Lcom/android/volley/Request;
.source "ClientLoginApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/challenge/ClientLoginApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientLoginRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Lcom/android/volley/NetworkResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPostParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponseListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/android/volley/NetworkResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/challenge/ClientLoginApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
    .parameter
    .parameter "url"
    .parameter "accountName"
    .parameter "password"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/android/volley/NetworkResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p5, onResponse:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/android/volley/NetworkResponse;>;"
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    .line 103
    invoke-direct {p0, p2, p6}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 98
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    .line 104
    iput-object p5, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mResponseListener:Lcom/android/volley/Response$Listener;

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$700()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$800()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$1000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/android/volley/NetworkResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mResponseListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    check-cast p1, Lcom/android/volley/NetworkResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->deliverResponse(Lcom/android/volley/NetworkResponse;)V

    return-void
.end method

.method public getPostParams()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;->mPostParams:Ljava/util/Map;

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/android/volley/NetworkResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method

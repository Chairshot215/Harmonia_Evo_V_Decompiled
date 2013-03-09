.class public Lcom/google/android/vending/verifier/api/PackageVerificationStatsRequest;
.super Lcom/google/android/vending/verifier/api/BaseVerificationRequest;
.source "PackageVerificationStatsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/vending/verifier/api/BaseVerificationRequest",
        "<",
        "Lcom/android/volley/NetworkResponse;",
        "Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;)V
    .locals 0
    .parameter "url"
    .parameter "errorListener"
    .parameter "request"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/google/protobuf/micro/MessageMicro;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 28
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Lcom/android/volley/NetworkResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/api/PackageVerificationStatsRequest;->deliverResponse(Lcom/android/volley/NetworkResponse;)V

    return-void
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
    .line 22
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method

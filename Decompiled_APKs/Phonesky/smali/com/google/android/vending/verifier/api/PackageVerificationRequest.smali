.class public Lcom/google/android/vending/verifier/api/PackageVerificationRequest;
.super Lcom/google/android/vending/verifier/api/BaseVerificationRequest;
.source "PackageVerificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/vending/verifier/api/BaseVerificationRequest",
        "<",
        "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
        "Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;)V
    .locals 0
    .parameter "url"
    .parameter
    .parameter "errorListener"
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/vending/verifier/api/PackageVerificationResult;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23
    iput-object p2, p0, Lcom/google/android/vending/verifier/api/PackageVerificationRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 24
    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/google/android/vending/verifier/api/PackageVerificationResult;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/vending/verifier/api/PackageVerificationRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/api/PackageVerificationRequest;->deliverResponse(Lcom/google/android/vending/verifier/api/PackageVerificationResult;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v3}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->parseFrom([B)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    .local v0, clientDownloadResponse:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;
    invoke-static {v0}, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->fromResponse(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;)Lcom/google/android/vending/verifier/api/PackageVerificationResult;

    move-result-object v2

    .line 38
    .local v2, result:Lcom/google/android/vending/verifier/api/PackageVerificationResult;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v3

    .end local v0           #clientDownloadResponse:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;
    .end local v2           #result:Lcom/google/android/vending/verifier/api/PackageVerificationResult;
    :goto_0
    return-object v3

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, ex:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    new-instance v3, Lcom/android/volley/VolleyError;

    invoke-direct {v3, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0
.end method

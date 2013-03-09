.class Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;
.super Ljava/lang/Object;
.source "DcbApi.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CredentialsJsonConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;Lcom/android/volley/Response$Listener;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;>;"
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;->this$0:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;->mListener:Lcom/android/volley/Response$Listener;

    .line 129
    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;->this$0:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->access$000(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->stop()V

    .line 134
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->buildCredentials(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v0

    .line 135
    .local v0, credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v1, v0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

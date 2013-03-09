.class Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;
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
    name = "ProvisioningJsonConverter"
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
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;",
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
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;>;"
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;->this$0:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;->mListener:Lcom/android/volley/Response$Listener;

    .line 114
    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;->this$0:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->access$000(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->stop()V

    .line 119
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->buildProvisioning(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v0

    .line 120
    .local v0, provisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v1, v0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

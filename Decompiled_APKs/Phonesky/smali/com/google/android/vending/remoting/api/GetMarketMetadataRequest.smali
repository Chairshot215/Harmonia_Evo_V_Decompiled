.class public Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;
.super Lcom/google/android/vending/remoting/api/VendingRequest;
.source "GetMarketMetadataRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/vending/remoting/api/VendingRequest",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private mDelivered:Z

.field private final mDeviceConfigHash:I

.field private final mMarketVersion:I


# direct methods
.method public constructor <init>(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;IILcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;",
            "II",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;",
            ">;",
            "Lcom/google/android/vending/remoting/api/VendingApiContext;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    const-string v1, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v2, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    const-class v4, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/vending/remoting/api/VendingRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->mDelivered:Z

    .line 35
    iput p2, p0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->mDeviceConfigHash:I

    .line 36
    iput p3, p0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->mMarketVersion:I

    .line 37
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->setAvoidBulkCancel()V

    .line 38
    invoke-virtual {p5}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/vending/remoting/api/VendingApiPreferences;->getDeviceConfigurationHashProperty(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 41
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->mDeviceConfigHash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/config/G;->vendingAlwaysSendConfig:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->clearDeviceConfiguration()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->mDelivered:Z

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->mDelivered:Z

    .line 84
    invoke-super {p0, p1}, Lcom/google/android/vending/remoting/api/VendingRequest;->deliverResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->deliverResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;)V

    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/google/android/vending/remoting/api/VendingRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, cacheKey:Ljava/lang/StringBuilder;
    const-string v1, "/ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/config/G;->vendingSyncFrequencyMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "/account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    invoke-virtual {v2}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "/devicecfghash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->mDeviceConfigHash:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "/marketversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->mMarketVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 8
    .parameter "networkResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/vending/remoting/api/VendingRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v2

    .line 52
    .local v2, response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;>;"
    invoke-virtual {v2}, Lcom/android/volley/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    iget-object v3, p0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    invoke-virtual {v3}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/vending/remoting/api/VendingApiPreferences;->getDeviceConfigurationHashProperty(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v3

    iget v4, p0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->mDeviceConfigHash:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 56
    const/4 v0, 0x0

    .line 61
    .local v0, cacheEntry:Lcom/android/volley/Cache$Entry;
    iget-object v3, v2, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    invoke-virtual {p0, v3, v7}, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;->handlePendingNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;Z)Z

    move-result v1

    .line 62
    .local v1, hasPendingNotifications:Z
    if-nez v1, :cond_1

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingSyncFrequencyMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 64
    new-instance v0, Lcom/android/volley/Cache$Entry;

    .end local v0           #cacheEntry:Lcom/android/volley/Cache$Entry;
    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 65
    .restart local v0       #cacheEntry:Lcom/android/volley/Cache$Entry;
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iput-object v3, v0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingSyncFrequencyMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long v3, v4, v6

    iput-wide v3, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 67
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 73
    :goto_0
    iget-object v3, v2, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v2

    .line 75
    .end local v0           #cacheEntry:Lcom/android/volley/Cache$Entry;
    .end local v1           #hasPendingNotifications:Z
    .end local v2           #response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;>;"
    :cond_0
    return-object v2

    .line 70
    .restart local v0       #cacheEntry:Lcom/android/volley/Cache$Entry;
    .restart local v1       #hasPendingNotifications:Z
    .restart local v2       #response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;>;"
    :cond_1
    const-string v3, "Disabling cache for GetMarketMetadata. hasPendingNotifications=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

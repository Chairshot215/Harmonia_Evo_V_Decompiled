.class Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;
.super Ljava/lang/Object;
.source "VendingApi.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/api/VendingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountriesConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Response$Listener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;->mListener:Lcom/android/volley/Response$Listener;

    .line 264
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->hasCountries()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;->mListener:Lcom/android/volley/Response$Listener;

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;->getCountries()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;->getCountryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;->mListener:Lcom/android/volley/Response$Listener;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 259
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;)V

    return-void
.end method

.class public Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;
.super Ljava/lang/Object;
.source "BillingAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/BillingAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountrySpinnerItem"
.end annotation


# instance fields
.field final mCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;->mCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 57
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;->mCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

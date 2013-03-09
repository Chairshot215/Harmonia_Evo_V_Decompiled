.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
.super Ljava/lang/Object;
.source "CarrierBillingParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private associationMethod:I

.field private carrierApiVersion:I

.field private carrierIconId:Ljava/lang/String;

.field private customerSupport:Ljava/lang/String;

.field private getCredentialsUrl:Ljava/lang/String;

.field private getProvisioningUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mncMccs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private passwordRequired:Z

.field private perTransactionCredentialsRequired:Z

.field private requestUserTokenText:Ljava/lang/String;

.field private requestUserTokenTo:Ljava/lang/String;

.field private sendSubscriberInfoWithCarrierRequests:Z

.field private showCarrierTos:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->passwordRequired:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->associationMethod:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->requestUserTokenTo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->requestUserTokenText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->customerSupport:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->mncMccs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getProvisioningUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getCredentialsUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierIconId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->showCarrierTos:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierApiVersion:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->perTransactionCredentialsRequired:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->sendSubscriberInfoWithCarrierRequests:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$1;)V

    return-object v0
.end method

.method public setAssociationMethod(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "associationMethod"

    .prologue
    .line 255
    iput p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->associationMethod:I

    .line 256
    return-object p0
.end method

.method public setCarrierApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "carrierApiVersion"

    .prologue
    .line 237
    iput p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierApiVersion:I

    .line 238
    return-object p0
.end method

.method public setCarrierIconId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "carrierIconId"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierIconId:Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public setCustomerSupport(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "customerSupport"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->customerSupport:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method public setGetCredentialsUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "getCredentialsUrl"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getCredentialsUrl:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public setGetProvisioningUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "getProvisioningUrl"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getProvisioningUrl:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "id"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->id:Ljava/lang/String;

    .line 209
    return-object p0
.end method

.method public setMncMccs(Ljava/util/List;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, mncMccs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->mncMccs:Ljava/util/List;

    .line 218
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "name"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->name:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public setPasswordRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "passwordRequired"

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->passwordRequired:Z

    .line 252
    return-object p0
.end method

.method public setPerTransactionCredentialsRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "perTransactionCredentialsRequired"

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->perTransactionCredentialsRequired:Z

    .line 243
    return-object p0
.end method

.method public setRequestUserTokenText(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "requestUserTokenText"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->requestUserTokenText:Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method public setRequestUserTokenTo(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "requestUserTokenTo"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->requestUserTokenTo:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public setSendSubscriberInfoWithCarrierRequests(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "sendSubscriberInfoWithCarrierRequests"

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->sendSubscriberInfoWithCarrierRequests:Z

    .line 248
    return-object p0
.end method

.method public setShowCarrierTos(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .locals 0
    .parameter "showCarrierTos"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->showCarrierTos:Z

    .line 234
    return-object p0
.end method

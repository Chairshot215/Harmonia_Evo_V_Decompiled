.class public Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
.super Ljava/lang/Object;
.source "SubscriberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private address1:Ljava/lang/String;

.field private address2:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->city:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->country:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;)V

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "address1"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address1:Ljava/lang/String;

    .line 254
    return-object p0
.end method

.method public setAddress2(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "address2"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address2:Ljava/lang/String;

    .line 258
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "city"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->city:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "country"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->country:Ljava/lang/String;

    .line 274
    return-object p0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "identifier"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->identifier:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "name"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->name:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "postalCode"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->postalCode:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "state"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->state:Ljava/lang/String;

    .line 266
    return-object p0
.end method

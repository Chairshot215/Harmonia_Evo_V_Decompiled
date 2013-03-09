.class public Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;
.super Ljava/lang/Object;
.source "EncryptedSubscriberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private carrierKeyVersion:I

.field private encryptedKey:Ljava/lang/String;

.field private googleKeyVersion:I

.field private initVector:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->encryptedKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->signature:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->initVector:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->carrierKeyVersion:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->googleKeyVersion:I

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$1;)V

    return-object v0
.end method

.method public setCarrierKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "carrierKeyVersion"

    .prologue
    .line 126
    iput p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->carrierKeyVersion:I

    .line 127
    return-object p0
.end method

.method public setEncryptedKey(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "encryptedKey"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->encryptedKey:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public setGoogleKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "googleKeyVersion"

    .prologue
    .line 130
    iput p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->googleKeyVersion:I

    .line 131
    return-object p0
.end method

.method public setInitVector(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "initVector"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->initVector:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "message"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->message:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "signature"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->signature:Ljava/lang/String;

    .line 119
    return-object p0
.end method

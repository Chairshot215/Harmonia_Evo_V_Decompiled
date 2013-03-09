.class public Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;
.super Lcom/gracenote/mmid/MobileSDK/GNResult;
.source "GNFingerprintResult.java"


# instance fields
.field private fingerprintData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V
    .locals 1
    .parameter "inConfig"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->fingerprintData:Ljava/lang/String;

    .line 14
    return-void
.end method

.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNResult;)V
    .locals 0
    .parameter "inResult"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNResult;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getFingerprintData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->fingerprintData:Ljava/lang/String;

    return-object v0
.end method

.method public saveFingerprintAs(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->fingerprintData:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/gracenote/mmid/MobileSDK/GNUtil;->writeUTF8(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    return-void
.end method

.method setFingerprintData(Ljava/lang/String;)V
    .locals 0
    .parameter "inValue"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->fingerprintData:Ljava/lang/String;

    .line 40
    return-void
.end method

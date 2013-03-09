.class abstract Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;
.super Lcom/gracenote/mmid/MobileSDK/GNQueryElement;
.source "GNFingerprintQueryElement.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fingerprintXML:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "inFingerprintXML"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNQueryElement;-><init>()V

    .line 10
    sget-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;->fingerprintXML:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method getFingerprintXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;->fingerprintXML:Ljava/lang/String;

    return-object v0
.end method

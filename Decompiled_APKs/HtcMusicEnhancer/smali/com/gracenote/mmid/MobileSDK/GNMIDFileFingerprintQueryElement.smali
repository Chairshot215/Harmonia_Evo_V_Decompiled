.class Lcom/gracenote/mmid/MobileSDK/GNMIDFileFingerprintQueryElement;
.super Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;
.source "GNMIDFileFingerprintQueryElement.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "inFingerprintXML"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method private extractCantametrixFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fpXml"

    .prologue
    .line 13
    const/4 v1, 0x0

    .line 14
    .local v1, fp:Ljava/lang/String;
    const-string v3, "<FP_BLOCK "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 15
    .local v2, start:I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 16
    const-string v3, ">"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 17
    const-string v3, "</FP_BLOCK>"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 18
    .local v0, end:I
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 21
    .end local v0           #end:I
    :cond_0
    return-object v1
.end method


# virtual methods
.method formatXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n<FINGERPRINT ALGORITHM=\"Cantametrix\" VERSION=\"1.1\">\n<DATA>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/GNMIDFileFingerprintQueryElement;->getFingerprintXML()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gracenote/mmid/MobileSDK/GNMIDFileFingerprintQueryElement;->extractCantametrixFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</DATA>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    const-string v1, "</FINGERPRINT>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    return-object v0
.end method

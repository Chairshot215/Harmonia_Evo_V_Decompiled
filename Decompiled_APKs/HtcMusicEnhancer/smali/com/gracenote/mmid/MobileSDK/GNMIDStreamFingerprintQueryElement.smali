.class Lcom/gracenote/mmid/MobileSDK/GNMIDStreamFingerprintQueryElement;
.super Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;
.source "GNMIDStreamFingerprintQueryElement.java"


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


# virtual methods
.method formatXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n<FINGERPRINT ALGORITHM=\"Philips\" VERSION=\"1.1\">\n<DATA MIME_TYPE=\"text/xml\" SUBTYPE=\"AUDIO\" ENCODING=\"CDATA\"><![CDATA["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/GNMIDStreamFingerprintQueryElement;->getFingerprintXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    const-string v1, "</DATA>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    const-string v1, "</FINGERPRINT>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    return-object v0
.end method

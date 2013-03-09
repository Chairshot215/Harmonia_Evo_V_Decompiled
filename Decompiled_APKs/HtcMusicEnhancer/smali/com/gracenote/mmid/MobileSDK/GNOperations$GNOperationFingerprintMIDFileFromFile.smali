.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromFile;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationFingerprintMIDFileFromFile"
.end annotation


# instance fields
.field protected filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;Ljava/lang/String;)V
    .locals 0
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"
    .parameter "inFilename"

    .prologue
    .line 545
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;)V

    .line 546
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromFile;->filename:Ljava/lang/String;

    .line 547
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 553
    new-instance v4, Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    invoke-direct {v4}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;-><init>()V

    iput-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    .line 554
    sget-object v4, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->FINGERPRINTING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fingerprinting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromFile;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v7}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromFile;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 556
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromFile;->filename:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, file:Ljava/io/File;
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v4, v0, p0, v5}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->fingerprintMIDFileFromFile(Ljava/io/File;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, results:[Ljava/lang/String;
    aget-object v1, v3, v7

    .line 559
    .local v1, fpError:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 561
    .local v2, fpXml:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 564
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    const/16 v5, 0xbb8

    invoke-virtual {v4, v5}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrCode(I)V

    .line 565
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v4, v1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrMessage(Ljava/lang/String;)V

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v4, v2}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setFingerprintData(Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDStreamFromPCM;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationFingerprintMIDStreamFromPCM"
.end annotation


# instance fields
.field protected sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V
    .locals 0
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"
    .parameter "inSampleBuffer"

    .prologue
    .line 456
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;)V

    .line 457
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDStreamFromPCM;->sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    .line 458
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 463
    new-instance v6, Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    invoke-direct {v6}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;-><init>()V

    iput-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    .line 464
    sget-object v6, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->FINGERPRINTING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v7, "Fingerprinting PCM "

    invoke-virtual {p0, v6, v7, v9}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDStreamFromPCM;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 466
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDStreamFromPCM;->sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v6, v7, p0, v8}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->classifyMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, results:[Ljava/lang/String;
    aget-object v0, v5, v9

    .line 468
    .local v0, classificationError:Ljava/lang/String;
    aget-object v1, v5, v10

    .line 470
    .local v1, classificationXml:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 471
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    const/16 v7, 0xbbb

    invoke-virtual {v6, v7}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrCode(I)V

    .line 472
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v6, v0}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrMessage(Ljava/lang/String;)V

    .line 493
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDStreamFromPCM;->sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v6, v7, p0, v8}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->fingerprintMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v5

    .line 476
    aget-object v2, v5, v9

    .line 477
    .local v2, fpError:Ljava/lang/String;
    aget-object v3, v5, v10

    .line 479
    .local v3, fpXml:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 481
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    const/16 v7, 0xbb8

    invoke-virtual {v6, v7}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrCode(I)V

    .line 482
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v6, v2}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_1
    const-string v6, "<AUDIO>"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 489
    .local v4, index:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 490
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v6, v3}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setFingerprintData(Ljava/lang/String;)V

    goto :goto_0
.end method

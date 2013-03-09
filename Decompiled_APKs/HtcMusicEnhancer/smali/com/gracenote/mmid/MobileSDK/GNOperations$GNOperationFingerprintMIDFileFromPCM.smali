.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromPCM;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationFingerprintMIDFileFromPCM"
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
    .line 508
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;)V

    .line 509
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromPCM;->sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    .line 510
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 515
    new-instance v3, Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    invoke-direct {v3}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;-><init>()V

    iput-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    .line 516
    sget-object v3, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->FINGERPRINTING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v4, "Fingerprinting PCM "

    invoke-virtual {p0, v3, v4, v6}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromPCM;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 518
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromPCM;->sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v3, v4, p0, v5}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->fingerprintMIDFileFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, results:[Ljava/lang/String;
    aget-object v0, v2, v6

    .line 520
    .local v0, fpError:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 522
    .local v1, fpXml:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 525
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrCode(I)V

    .line 526
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v3, v0}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrMessage(Ljava/lang/String;)V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v3, v1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setFingerprintData(Ljava/lang/String;)V

    goto :goto_0
.end method

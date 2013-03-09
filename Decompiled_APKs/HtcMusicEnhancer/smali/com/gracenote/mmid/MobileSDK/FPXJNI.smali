.class Lcom/gracenote/mmid/MobileSDK/FPXJNI;
.super Ljava/lang/Object;
.source "FPXJNI.java"


# instance fields
.field private error:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    const-string v1, "stream_core"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 41
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 42
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI"

    const-string v2, "WARNING: Could not load libstream_core.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeInitialize()I

    .line 54
    return-void
.end method

.method private calculateFingerPrint([BLcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;)Ljava/lang/String;
    .locals 10
    .parameter "samples"
    .parameter "callback"
    .parameter "config"
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 330
    .local v5, startTime:J
    const/4 v4, 0x0

    .line 332
    .local v4, nativeErrorCode:I
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeGetVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 335
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/BlobHolder;

    invoke-direct {v2}, Lcom/gracenote/mmid/MobileSDK/BlobHolder;-><init>()V

    .line 336
    .local v2, blobHolder:Lcom/gracenote/mmid/MobileSDK/BlobHolder;
    invoke-virtual {p0, p4, v2}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeCreateFingerprinter(Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;Lcom/gracenote/mmid/MobileSDK/BlobHolder;)I

    move-result v4

    .line 338
    if-eqz v4, :cond_0

    .line 339
    const-string v7, "An error occurred while creating the native fingerprinter."

    iput-object v7, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 340
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    invoke-interface {p2, v7}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 372
    :goto_0
    return-object v3

    .line 344
    :cond_0
    iget-object v7, v2, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    array-length v8, p1

    invoke-virtual {p0, v7, p1, v8}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeAddSamples([B[BI)Z

    move-result v0

    .line 346
    .local v0, acquired:Z
    if-nez v0, :cond_1

    .line 347
    iget-object v7, v2, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-virtual {p0, v7}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeDestroyFingerprinter([B)V

    .line 348
    const-string v7, "An error occurred while adding samples to the native fpx."

    iput-object v7, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 349
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    invoke-interface {p2, v7}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_1
    new-instance v1, Lcom/gracenote/mmid/MobileSDK/BlobHolder;

    invoke-direct {v1}, Lcom/gracenote/mmid/MobileSDK/BlobHolder;-><init>()V

    .line 355
    .local v1, bh:Lcom/gracenote/mmid/MobileSDK/BlobHolder;
    iget-object v7, v2, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-virtual {p0, v7, v1}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeGetFingerprint([BLcom/gracenote/mmid/MobileSDK/BlobHolder;)I

    move-result v4

    .line 357
    if-eqz v4, :cond_2

    .line 358
    iget-object v7, v2, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-virtual {p0, v7}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeDestroyFingerprinter([B)V

    .line 359
    const-string v7, "An error occurred while getting the fingerprint from the native fpx."

    iput-object v7, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 360
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    invoke-interface {p2, v7}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_2
    new-instance v3, Ljava/lang/String;

    iget-object v7, v1, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    .line 367
    .local v3, fpXml:Ljava/lang/String;
    sget-object v7, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->FINGERPRINTING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v8, "Fingerprinting Complete"

    const/16 v9, 0x64

    invoke-interface {p2, v7, v8, v9}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Fingerprint Time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 371
    iget-object v7, v2, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-virtual {p0, v7}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeDestroyFingerprinter([B)V

    goto :goto_0
.end method

.method private calculateFingerPrintFromStream(Ljava/io/InputStream;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;)Ljava/lang/String;
    .locals 13
    .parameter "is"
    .parameter "callback"
    .parameter "config"
    .parameter "info"

    .prologue
    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 263
    .local v7, startTime:J
    const/4 v5, 0x0

    .line 265
    .local v5, nativeErrorCode:I
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeGetVersion()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v10}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 268
    new-instance v3, Lcom/gracenote/mmid/MobileSDK/BlobHolder;

    invoke-direct {v3}, Lcom/gracenote/mmid/MobileSDK/BlobHolder;-><init>()V

    .line 269
    .local v3, blobHolder:Lcom/gracenote/mmid/MobileSDK/BlobHolder;
    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v3}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeCreateFingerprinter(Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;Lcom/gracenote/mmid/MobileSDK/BlobHolder;)I

    move-result v5

    .line 271
    if-eqz v5, :cond_0

    .line 272
    const-string v10, "An error occurred while creating the native fingerprinter. Please check the audio format."

    iput-object v10, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 273
    iget-object v10, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    invoke-interface {p2, v10}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 274
    const/4 v4, 0x0

    .line 314
    :goto_0
    return-object v4

    .line 277
    :cond_0
    const/4 v1, 0x0

    .line 279
    .local v1, acquired:Z
    const/16 v10, 0x1000

    :try_start_0
    new-array v9, v10, [B

    .line 280
    .local v9, tmpBuf:[B
    const/4 v6, 0x0

    .line 282
    .local v6, readBytes:I
    :cond_1
    const/4 v10, 0x0

    const/16 v11, 0x1000

    invoke-virtual {p1, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gtz v6, :cond_2

    .line 288
    .end local v6           #readBytes:I
    .end local v9           #tmpBuf:[B
    :goto_1
    if-nez v1, :cond_3

    .line 289
    iget-object v10, v3, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-virtual {p0, v10}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeDestroyFingerprinter([B)V

    .line 290
    const-string v10, "Not enough audio in input stream."

    iput-object v10, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 291
    iget-object v10, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    invoke-interface {p2, v10}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 292
    const/4 v4, 0x0

    goto :goto_0

    .line 283
    .restart local v6       #readBytes:I
    .restart local v9       #tmpBuf:[B
    :cond_2
    :try_start_1
    iget-object v10, v3, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-virtual {p0, v10, v9, v6}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeAddSamples([B[BI)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 284
    if-eqz v1, :cond_1

    goto :goto_1

    .line 296
    .end local v6           #readBytes:I
    .end local v9           #tmpBuf:[B
    :cond_3
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/BlobHolder;

    invoke-direct {v2}, Lcom/gracenote/mmid/MobileSDK/BlobHolder;-><init>()V

    .line 297
    .local v2, bh:Lcom/gracenote/mmid/MobileSDK/BlobHolder;
    iget-object v10, v3, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-virtual {p0, v10, v2}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeGetFingerprint([BLcom/gracenote/mmid/MobileSDK/BlobHolder;)I

    move-result v5

    .line 299
    if-eqz v5, :cond_4

    .line 300
    iget-object v10, v3, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-virtual {p0, v10}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeDestroyFingerprinter([B)V

    .line 301
    const-string v10, "An error occurred while getting the fingerprint from the native fpx."

    iput-object v10, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 302
    iget-object v10, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    invoke-interface {p2, v10}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 303
    const/4 v4, 0x0

    goto :goto_0

    .line 307
    :cond_4
    new-instance v4, Ljava/lang/String;

    iget-object v10, v2, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>([B)V

    .line 309
    .local v4, fpXml:Ljava/lang/String;
    sget-object v10, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->FINGERPRINTING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v11, "Fingerprinting Complete"

    const/16 v12, 0x64

    invoke-interface {p2, v10, v11, v12}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 311
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Fingerprint Time: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v10}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 313
    iget-object v10, v3, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-virtual {p0, v10}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeDestroyFingerprinter([B)V

    goto :goto_0

    .line 286
    .end local v2           #bh:Lcom/gracenote/mmid/MobileSDK/BlobHolder;
    .end local v4           #fpXml:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method private getEncodingFromPcm(II)I
    .locals 3
    .parameter "nChannels"
    .parameter "bytesPerSample"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 58
    div-int v0, p2, p1

    .line 60
    .local v0, bytesPerChannel:I
    if-ne v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method classifyMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;
    .locals 10
    .parameter "sampleBuffer"
    .parameter "callback"
    .parameter "config"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    .line 237
    iget-object v3, p1, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->samples:[B

    .line 238
    .local v3, samples:[B
    array-length v6, v3

    iget v7, p1, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->sampleRate:I

    iget v8, p1, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->numChannels:I

    invoke-virtual {p0, v3, v6, v7, v8}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeGetNoiseLevel([BIII)I

    move-result v2

    .line 239
    .local v2, noiseLevel:I
    array-length v6, v3

    iget v7, p1, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->sampleRate:I

    iget v8, p1, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->numChannels:I

    invoke-virtual {p0, v3, v6, v7, v8}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->nativeGetLoudnessLevel([BIII)I

    move-result v1

    .line 240
    .local v1, loudnessLevel:I
    const/16 v6, 0x3e7

    if-le v1, v6, :cond_0

    move v4, v5

    .line 242
    .local v4, silenceLevel:I
    :goto_0
    const-string v6, "silenceDetectionOverridden"

    invoke-virtual {p3, v6}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x3b6

    if-le v4, v6, :cond_1

    .line 243
    const-string v6, "Detected Silence"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "It is too silent."

    aput-object v7, v6, v5

    move-object v5, v6

    .line 257
    :goto_1
    return-object v5

    .line 240
    .end local v4           #silenceLevel:I
    :cond_0
    rsub-int v4, v1, 0x3e7

    goto :goto_0

    .line 247
    .restart local v4       #silenceLevel:I
    :cond_1
    const-string v6, "noiseDetectionOverridden"

    invoke-virtual {p3, v6}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/16 v6, 0x5a

    if-le v2, v6, :cond_2

    .line 248
    const-string v6, "Detected Noise"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "It is too noisy."

    aput-object v7, v6, v5

    move-object v5, v6

    goto :goto_1

    .line 252
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<CLASSIFIER VERSION=\"1.0\">\n\t<CLASSIFICATION TYPE=\"Silence\" APPLY=\"True\">"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</CLASSIFICATION>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 254
    const-string v6, "<CLASSIFICATION TYPE=\"Noise\" APPLY=\"True\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</CLASSIFICATION>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 255
    const-string v6, "  </CLASSIFIER>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, classificationXml:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v0, v5, v6

    goto :goto_1
.end method

.method fingerprintMIDFileFromFile(Ljava/io/File;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;
    .locals 8
    .parameter "srcFile"
    .parameter "callback"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 69
    iput-object v2, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 70
    check-cast v2, [Ljava/lang/String;

    .line 72
    .local v2, results:[Ljava/lang/String;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;

    invoke-direct {v0}, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;-><init>()V

    .line 74
    .local v0, decoder:Lcom/gracenote/mmid/MobileSDK/DECODERJNI;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\n<<<<<Decoding "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">>>>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Could not find "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    invoke-interface {p2, v3}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 79
    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getError()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 106
    :goto_0
    return-object v3

    .line 82
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->setSource(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    const-string v3, "Unsupported file format. Please check the file."

    iput-object v3, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    invoke-interface {p2, v3}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 85
    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getError()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->getFingerprint()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, fpx:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 90
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->getErrorCode()I

    move-result v3

    const/16 v5, -0xa

    if-ne v3, v5, :cond_2

    .line 91
    const-string v3, "Not enough audio in input stream."

    iput-object v3, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 96
    :goto_1
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    invoke-interface {p2, v3}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 97
    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getError()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0

    .line 94
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Cannot generate fingerprint. error:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->getErrorCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    goto :goto_1

    .line 100
    :cond_3
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    .end local v2           #results:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getError()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object v1, v2, v3

    .line 102
    .restart local v2       #results:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 105
    if-eqz v2, :cond_4

    :goto_2
    const-string v4, "results is null"

    invoke-static {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    move-object v3, v2

    .line 106
    goto :goto_0

    :cond_4
    move v3, v4

    .line 105
    goto :goto_2
.end method

.method fingerprintMIDFileFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;
    .locals 11
    .parameter "sampleBuffer"
    .parameter "callback"
    .parameter "config"

    .prologue
    .line 144
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 146
    const-string v7, "Reading pcm stream"

    invoke-interface {p2, v7}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 148
    iget-object v6, p1, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->samples:[B

    .line 150
    .local v6, samples:[B
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->getBytesPerSample()I

    move-result v0

    .line 151
    .local v0, bytesPerSample:I
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->getSampleRate()I

    move-result v5

    .line 152
    .local v5, sampleRate:I
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->getNumChannels()I

    move-result v4

    .line 154
    .local v4, numChannels:I
    const-wide/high16 v7, 0x4034

    int-to-double v9, v5

    mul-double/2addr v7, v9

    int-to-double v9, v0

    mul-double/2addr v7, v9

    double-to-int v3, v7

    .line 156
    .local v3, minBytes:I
    array-length v7, v6

    if-ge v7, v3, :cond_0

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Not enough audio in input stream.  Need at least "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 158
    const-string v8, " bytes of pcm samples, got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 157
    iput-object v7, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 159
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    invoke-interface {p2, v7}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 160
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getError()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 174
    :goto_0
    return-object v7

    .line 163
    :cond_0
    const/4 v1, 0x0

    .line 164
    .local v1, fpXml:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 165
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;

    invoke-direct {v2}, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;-><init>()V

    .line 166
    .local v2, info:Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;
    const-string v7, "GNFPALG_7"

    iput-object v7, v2, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->alg_name:Ljava/lang/String;

    .line 167
    const-string v7, "1.1"

    iput-object v7, v2, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->alg_version:Ljava/lang/String;

    .line 168
    iput v5, v2, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->sample_rate:I

    .line 169
    iput v4, v2, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->channels:I

    .line 170
    invoke-direct {p0, v4, v0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getEncodingFromPcm(II)I

    move-result v7

    iput v7, v2, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->encoding:I

    .line 172
    invoke-direct {p0, v6, p2, p3, v2}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->calculateFingerPrint([BLcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .end local v2           #info:Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;
    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getError()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    goto :goto_0
.end method

.method fingerprintMIDFileFromPcm(Ljava/io/InputStream;IIILcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;
    .locals 5
    .parameter "is"
    .parameter "sampleRate"
    .parameter "channels"
    .parameter "bytesPerSample"
    .parameter "callback"
    .parameter "config"

    .prologue
    .line 124
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 126
    const-string v2, "\n<<<<<Fingerprinting pcm file>>>>>"

    invoke-interface {p5, v2}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, fpXml:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 130
    new-instance v1, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;

    invoke-direct {v1}, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;-><init>()V

    .line 131
    .local v1, info:Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;
    const-string v2, "GNFPALG_7"

    iput-object v2, v1, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->alg_name:Ljava/lang/String;

    .line 132
    const-string v2, "1.1"

    iput-object v2, v1, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->alg_version:Ljava/lang/String;

    .line 133
    iput p2, v1, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->sample_rate:I

    .line 134
    iput p3, v1, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->channels:I

    .line 135
    invoke-direct {p0, p3, p4}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getEncodingFromPcm(II)I

    move-result v2

    iput v2, v1, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->encoding:I

    .line 137
    invoke-direct {p0, p1, p5, p6, v1}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->calculateFingerPrintFromStream(Ljava/io/InputStream;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .end local v1           #info:Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getError()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    return-object v2
.end method

.method fingerprintMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;
    .locals 17
    .parameter "sampleBuffer"
    .parameter "callback"
    .parameter "config"

    .prologue
    .line 180
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 182
    const-string v13, "\n<<<<<Fingerprinting pcm stream>>>>>"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->samples:[B

    .line 186
    .local v11, samples:[B
    invoke-virtual/range {p1 .. p1}, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->getBytesPerSample()I

    move-result v3

    .line 187
    .local v3, bytesPerSample:I
    invoke-virtual/range {p1 .. p1}, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->getSampleRate()I

    move-result v10

    .line 188
    .local v10, sampleRate:I
    invoke-virtual/range {p1 .. p1}, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->getNumChannels()I

    move-result v9

    .line 192
    .local v9, numChannels:I
    const/4 v8, 0x0

    .line 193
    .local v8, minBytes:I
    const-string v13, "requiredFingerprintBlock"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 194
    .local v4, fpBlock:I
    packed-switch v4, :pswitch_data_0

    .line 200
    const-wide/high16 v13, 0x402f

    int-to-double v15, v10

    mul-double/2addr v13, v15

    int-to-double v15, v3

    mul-double/2addr v13, v15

    double-to-int v8, v13

    .line 203
    :goto_0
    array-length v13, v11

    if-ge v13, v8, :cond_0

    .line 204
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Not enough audio in input stream.  Need at least "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 205
    const-string v14, " bytes of pcm samples, got "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 204
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 207
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getError()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 232
    :goto_1
    return-object v13

    .line 195
    :pswitch_0
    const-wide/high16 v13, 0x400c

    int-to-double v15, v10

    mul-double/2addr v13, v15

    int-to-double v15, v3

    mul-double/2addr v13, v15

    double-to-int v8, v13

    goto :goto_0

    .line 196
    :pswitch_1
    const-wide/high16 v13, 0x401a

    int-to-double v15, v10

    mul-double/2addr v13, v15

    int-to-double v15, v3

    mul-double/2addr v13, v15

    double-to-int v8, v13

    goto :goto_0

    .line 197
    :pswitch_2
    const-wide/high16 v13, 0x4023

    int-to-double v15, v10

    mul-double/2addr v13, v15

    int-to-double v15, v3

    mul-double/2addr v13, v15

    double-to-int v8, v13

    goto :goto_0

    .line 198
    :pswitch_3
    const-wide/high16 v13, 0x4029

    int-to-double v15, v10

    mul-double/2addr v13, v15

    int-to-double v15, v3

    mul-double/2addr v13, v15

    double-to-int v8, v13

    goto :goto_0

    .line 210
    :cond_0
    const-wide/high16 v13, 0x402f

    int-to-double v15, v10

    mul-double/2addr v13, v15

    int-to-double v15, v3

    mul-double/2addr v13, v15

    double-to-int v7, v13

    .line 213
    .local v7, maxBytes:I
    array-length v13, v11

    if-le v13, v7, :cond_1

    .line 214
    new-array v12, v7, [B

    .line 215
    .local v12, tmpBuffer:[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v13, v12, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    move-object v11, v12

    .line 220
    .end local v12           #tmpBuffer:[B
    :cond_1
    new-instance v6, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;

    invoke-direct {v6}, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;-><init>()V

    .line 221
    .local v6, info:Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;
    const-string v13, "GNFPALG_1"

    iput-object v13, v6, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->alg_name:Ljava/lang/String;

    .line 222
    const-string v13, "1.1"

    iput-object v13, v6, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->alg_version:Ljava/lang/String;

    .line 223
    iput v9, v6, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->channels:I

    .line 224
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getEncodingFromPcm(II)I

    move-result v13

    iput v13, v6, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->encoding:I

    .line 225
    iput v10, v6, Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;->sample_rate:I

    .line 227
    const/4 v5, 0x0

    .line 228
    .local v5, fpXml:Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v11, v1, v2, v6}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->calculateFingerPrint([BLcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;)Ljava/lang/String;

    move-result-object v5

    .line 232
    :cond_2
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->getError()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    goto :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->error:Ljava/lang/String;

    return-object v0
.end method

.method public native nativeAddSamples([B[BI)Z
.end method

.method public native nativeCreateFingerprinter(Lcom/gracenote/mmid/MobileSDK/Fingerprint_info_t;Lcom/gracenote/mmid/MobileSDK/BlobHolder;)I
.end method

.method public native nativeDestroyFingerprinter([B)V
.end method

.method public native nativeGetFingerprint([BLcom/gracenote/mmid/MobileSDK/BlobHolder;)I
.end method

.method public native nativeGetLoudnessLevel([BIII)I
.end method

.method public native nativeGetNoiseLevel([BIII)I
.end method

.method public native nativeGetVersion()Ljava/lang/String;
.end method

.method public native nativeInitialize()I
.end method

.method public native nativeShutdown()V
.end method

.class Lcom/gracenote/mmid/MobileSDK/DECODERJNI;
.super Ljava/lang/Object;
.source "DECODERJNI.java"


# static fields
.field private static final SRC_AAC:I = 0x2

.field private static final SRC_MP3:I = 0x1

.field private static final SRC_UNKNOWN:I = -0x1

.field private static final SRC_WAV:I


# instance fields
.field private error:I

.field private filePath:Ljava/lang/String;

.field private fileType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    :try_start_0
    const-string v1, "dec"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 9
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 10
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI"

    const-string v2, "WARNING: Could not load libdec.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->filePath:Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->fileType:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->error:I

    .line 28
    return-void
.end method

.method private setFileType(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 44
    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->fileType:I

    .line 55
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    const-string v0, ".m4a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const-string v0, ".3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->fileType:I

    goto :goto_0

    .line 50
    :cond_2
    const-string v0, ".wav"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->fileType:I

    goto :goto_0

    .line 53
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->fileType:I

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->error:I

    return v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/BlobHolder;

    invoke-direct {v0}, Lcom/gracenote/mmid/MobileSDK/BlobHolder;-><init>()V

    .line 60
    .local v0, blobHolder:Lcom/gracenote/mmid/MobileSDK/BlobHolder;
    iget v1, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->fileType:I

    packed-switch v1, :pswitch_data_0

    .line 66
    :goto_0
    iget v1, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->error:I

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/gracenote/mmid/MobileSDK/BlobHolder;->blob:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 70
    :goto_1
    return-object v1

    .line 61
    :pswitch_0
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->nativeGetFingerprintFromMP3(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->error:I

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->nativeGetFingerprintFromAAC(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->error:I

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->nativeGetFingerprintFromWAV(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->error:I

    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public native nativeGetFingerprintFromAAC(Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public native nativeGetFingerprintFromMP3(Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public native nativeGetFingerprintFromWAV(Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public setSource(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->filePath:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->setFileType(Ljava/lang/String;)V

    .line 35
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/DECODERJNI;->fileType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

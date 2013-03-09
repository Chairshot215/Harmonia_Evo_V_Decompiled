.class Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;
.super Ljava/lang/Object;
.source "GenerateFingerprint.java"

# interfaces
.implements Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/GenerateFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FingerprintResultReadyObject"
.end annotation


# instance fields
.field mDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;

.field final synthetic this$0:Lcom/htc/musicenhancer/GenerateFingerprint;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/GenerateFingerprint;Lcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 1
    .parameter
    .parameter "downloadAlbumInfo"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;->this$0:Lcom/htc/musicenhancer/GenerateFingerprint;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;->mDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;

    .line 174
    iput-object p2, p0, Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;->mDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;

    .line 175
    return-void
.end method


# virtual methods
.method public GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 178
    const-string v2, "[GenerateFingerprint]"

    const-string v3, "fingerprint  GNResultReady "

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;->this$0:Lcom/htc/musicenhancer/GenerateFingerprint;

    #setter for: Lcom/htc/musicenhancer/GenerateFingerprint;->mIsBusy:Z
    invoke-static {v2, v4}, Lcom/htc/musicenhancer/GenerateFingerprint;->access$002(Lcom/htc/musicenhancer/GenerateFingerprint;Z)Z

    .line 180
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->getErrCode()I

    move-result v0

    .line 181
    .local v0, error:I
    new-instance v1, Lcom/htc/musicenhancer/FingerprintResult;

    invoke-direct {v1}, Lcom/htc/musicenhancer/FingerprintResult;-><init>()V

    .line 182
    .local v1, fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    if-nez v0, :cond_1

    .line 183
    const-string v2, "[GenerateFingerprint]"

    const-string v3, "fingerprint  noerror "

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "Finger print success"

    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, v4}, Lcom/htc/musicenhancer/FingerprintResult;->setState(I)V

    .line 186
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->getFingerprintData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/musicenhancer/FingerprintResult;->setFingerprintData(Ljava/lang/String;)V

    .line 202
    :goto_0
    iget-object v2, p0, Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;->this$0:Lcom/htc/musicenhancer/GenerateFingerprint;

    #getter for: Lcom/htc/musicenhancer/GenerateFingerprint;->mOnCompletedListener:Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;
    invoke-static {v2}, Lcom/htc/musicenhancer/GenerateFingerprint;->access$100(Lcom/htc/musicenhancer/GenerateFingerprint;)Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;->this$0:Lcom/htc/musicenhancer/GenerateFingerprint;

    #getter for: Lcom/htc/musicenhancer/GenerateFingerprint;->mOnCompletedListener:Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;
    invoke-static {v2}, Lcom/htc/musicenhancer/GenerateFingerprint;->access$100(Lcom/htc/musicenhancer/GenerateFingerprint;)Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;->mDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;

    invoke-virtual {v3}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;->onCompleted(ILcom/htc/musicenhancer/FingerprintResult;)V

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;->this$0:Lcom/htc/musicenhancer/GenerateFingerprint;

    const/4 v3, 0x0

    #setter for: Lcom/htc/musicenhancer/GenerateFingerprint;->mFingerprintResultReadyObject:Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;
    invoke-static {v2, v3}, Lcom/htc/musicenhancer/GenerateFingerprint;->access$202(Lcom/htc/musicenhancer/GenerateFingerprint;Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;)Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;

    .line 207
    return-void

    .line 188
    :cond_1
    const-string v2, "[GenerateFingerprint]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fingerprint error. Error msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->getErrMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FingerPrint Error. Error msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->getErrMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 191
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/musicenhancer/FingerprintResult;->setState(I)V

    goto :goto_0
.end method

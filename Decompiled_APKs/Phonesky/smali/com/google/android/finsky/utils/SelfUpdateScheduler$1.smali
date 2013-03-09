.class Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;
.super Ljava/lang/Object;
.source "SelfUpdateScheduler.java"

# interfaces
.implements Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/SelfUpdateScheduler;->checkForSelfUpdate(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

.field final synthetic val$response:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    iput-object p2, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->val$response:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthTokenReceived(Ljava/lang/String;)V
    .locals 15
    .parameter "authToken"

    .prologue
    .line 113
    new-instance v0, Lcom/google/android/finsky/download/DownloadImpl;

    iget-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->val$response:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "ANDROIDSECURE"

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v14}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/finsky/download/obb/Obb;ZZ)V

    .line 116
    .local v0, download:Lcom/google/android/finsky/download/InternalDownload;
    iget-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    #setter for: Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;
    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->access$002(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/download/Download;

    .line 117
    iget-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    #getter for: Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->access$100(Lcom/google/android/finsky/utils/SelfUpdateScheduler;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 118
    iget-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    #getter for: Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->access$100(Lcom/google/android/finsky/utils/SelfUpdateScheduler;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/DownloadQueue;->add(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 119
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.downloadQueued"

    const-string v3, "self-update-download"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const-string v2, "selfUpdateDownloadedQueued"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public onError(Lcom/android/volley/AuthFailureError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 127
    const-string v0, "Exception occured while getting auth token."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

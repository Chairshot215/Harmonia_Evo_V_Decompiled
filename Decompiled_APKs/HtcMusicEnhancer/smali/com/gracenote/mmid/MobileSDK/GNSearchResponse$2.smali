.class Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$2;
.super Ljava/util/TimerTask;
.source "GNSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->startAlbumReviewTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$2;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 363
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 366
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$2;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumReviewAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$8(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$2;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumReviewAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$8(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->cancel(Z)Z

    .line 369
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$2;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v1, 0x0

    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumReviewAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;
    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$9(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;)V

    .line 370
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$2;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v1, 0x1

    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimerExecuted:Z
    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$10(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$2;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #calls: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->setAlbumReviewReceived(Z)V
    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$7(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V

    .line 375
    return-void

    .line 371
    :catch_0
    move-exception v0

    goto :goto_0
.end method

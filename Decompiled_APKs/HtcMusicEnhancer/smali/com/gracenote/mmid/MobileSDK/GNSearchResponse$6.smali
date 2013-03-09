.class Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$6;
.super Ljava/util/TimerTask;
.source "GNSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->startArtistImageTimer()V
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
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$6;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 521
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 524
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$6;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistImageAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;
    invoke-static {v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$23(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$6;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v2, 0x0

    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImage:[B
    invoke-static {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$21(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;[B)V

    .line 527
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$6;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistImageAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;
    invoke-static {v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$23(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->cancel(Z)Z

    .line 528
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$6;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v2, 0x0

    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistImageAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;
    invoke-static {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$24(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;)V

    .line 529
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$6;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v2, 0x0

    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$25(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Ljava/util/Timer;)V

    .line 530
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$6;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v2, 0x1

    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimerExecuted:Z
    invoke-static {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$26(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$6;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #calls: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->setArtistImageReceived(Z)V
    invoke-static {v1, v3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$22(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V

    .line 536
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.class Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$1;
.super Ljava/lang/Object;
.source "GNSearchResponse.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumReview()[Ljava/lang/String;
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
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$1;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 316
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$1;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimerExecuted:Z
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$3(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    .end local p2
    :goto_0
    return-void

    .line 323
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$1;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$4(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$1;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$4(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 326
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$1;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$4(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 327
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$1;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v1, 0x0

    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$5(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Ljava/util/Timer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$1;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    check-cast p2, [Ljava/lang/String;

    .end local p2
    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReview:[Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$6(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    :goto_2
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$1;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v1, 0x1

    #calls: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->setAlbumReviewReceived(Z)V
    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$7(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    goto :goto_2

    .line 328
    .restart local p2
    :catch_1
    move-exception v0

    goto :goto_1
.end method

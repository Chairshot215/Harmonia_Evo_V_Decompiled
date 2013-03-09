.class Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$5;
.super Ljava/lang/Object;
.source "GNSearchResponse.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistImage()[B
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
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$5;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 476
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$5;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimerExecuted:Z
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$19(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    .end local p2
    :goto_0
    return-void

    .line 481
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$5;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$20(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$5;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$20(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 484
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$5;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$20(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$5;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    check-cast p2, [B

    .end local p2
    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImage:[B
    invoke-static {v0, p2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$21(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 492
    :goto_2
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$5;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v1, 0x1

    #calls: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->setArtistImageReceived(Z)V
    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$22(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    goto :goto_2

    .line 485
    .restart local p2
    :catch_1
    move-exception v0

    goto :goto_1
.end method

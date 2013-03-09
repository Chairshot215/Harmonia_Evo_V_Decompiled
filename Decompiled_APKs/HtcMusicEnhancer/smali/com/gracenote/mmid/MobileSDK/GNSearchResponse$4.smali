.class Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$4;
.super Ljava/util/TimerTask;
.source "GNSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->startArtistBioTimer()V
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
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$4;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 442
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 445
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$4;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistBioAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$16(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$4;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v1, 0x0

    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBiography:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$14(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;[Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$4;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistBioAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;
    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$16(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->cancel(Z)Z

    .line 449
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$4;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v1, 0x0

    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistBioAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;
    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$17(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;)V

    .line 450
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$4;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    const/4 v1, 0x1

    #setter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimerExecuted:Z
    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$18(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$4;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #calls: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->setArtistBioReceived(Z)V
    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$15(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V

    .line 455
    return-void

    .line 451
    :catch_0
    move-exception v0

    goto :goto_0
.end method

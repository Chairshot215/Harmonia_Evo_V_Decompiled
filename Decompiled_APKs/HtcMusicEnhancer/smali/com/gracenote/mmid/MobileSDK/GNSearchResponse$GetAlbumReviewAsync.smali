.class Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;
.super Landroid/os/AsyncTask;
.source "GNSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetAlbumReviewAsync"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field albumAsyncReview:[Ljava/lang/String;

.field obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;

.field final synthetic this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;


# direct methods
.method public constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Ljava/util/Observer;)V
    .locals 1
    .parameter
    .parameter "o"

    .prologue
    .line 668
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 666
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 662
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;

    invoke-direct {v0, p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;)V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;

    .line 667
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;

    invoke-virtual {v0, p2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Long;
    .locals 3
    .parameter "params"

    .prologue
    .line 672
    :try_start_0
    new-instance v1, Lcom/gracenote/mmid/MobileSDK/SyncWebService;

    invoke-direct {v1}, Lcom/gracenote/mmid/MobileSDK/SyncWebService;-><init>()V

    .line 673
    .local v1, syncGetHttp:Lcom/gracenote/mmid/MobileSDK/SyncWebService;
    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$0(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/SyncWebService;->getStringFromHttpGetURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, responseReviewTempString:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 675
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->albumAsyncReview:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v0           #responseReviewTempString:Ljava/lang/String;
    .end local v1           #syncGetHttp:Lcom/gracenote/mmid/MobileSDK/SyncWebService;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 677
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;->setChanged()V

    .line 687
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->albumAsyncReview:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 688
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

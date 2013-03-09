.class Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;
.super Landroid/os/AsyncTask;
.source "GNSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetArtistImageAsync"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;
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
.field obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;

.field responseArtistImageData:[B

.field final synthetic this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;


# direct methods
.method public constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Ljava/util/Observer;)V
    .locals 1
    .parameter
    .parameter "o"

    .prologue
    .line 757
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 755
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 752
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;

    invoke-direct {v0, p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;)V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;

    .line 756
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;

    invoke-virtual {v0, p2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Long;
    .locals 2
    .parameter "params"

    .prologue
    .line 761
    :try_start_0
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/SyncWebService;

    invoke-direct {v0}, Lcom/gracenote/mmid/MobileSDK/SyncWebService;-><init>()V

    .line 762
    .local v0, syncGetHttp:Lcom/gracenote/mmid/MobileSDK/SyncWebService;
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$2(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/SyncWebService;->getDataFromHttpGetURL(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->responseArtistImageData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    .end local v0           #syncGetHttp:Lcom/gracenote/mmid/MobileSDK/SyncWebService;
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 763
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;->setChanged()V

    .line 772
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->responseArtistImageData:[B

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 773
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

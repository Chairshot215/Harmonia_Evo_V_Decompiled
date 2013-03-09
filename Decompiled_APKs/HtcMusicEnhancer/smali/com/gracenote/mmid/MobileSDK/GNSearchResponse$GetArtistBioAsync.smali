.class Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;
.super Landroid/os/AsyncTask;
.source "GNSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetArtistBioAsync"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync$DelegatedObservable;
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
.field private artistAsyncBiography:[Ljava/lang/String;

.field obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync$DelegatedObservable;

.field final synthetic this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;


# direct methods
.method public constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Ljava/util/Observer;)V
    .locals 1
    .parameter
    .parameter "o"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 711
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 708
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync$DelegatedObservable;

    invoke-direct {v0, p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync$DelegatedObservable;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;)V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync$DelegatedObservable;

    .line 712
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync$DelegatedObservable;

    invoke-virtual {v0, p2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync$DelegatedObservable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Long;
    .locals 4
    .parameter "params"

    .prologue
    .line 717
    :try_start_0
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/SyncWebService;

    invoke-direct {v2}, Lcom/gracenote/mmid/MobileSDK/SyncWebService;-><init>()V

    .line 718
    .local v2, syncGetHttp:Lcom/gracenote/mmid/MobileSDK/SyncWebService;
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->this$0:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    #getter for: Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBiographyUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->access$1(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gracenote/mmid/MobileSDK/SyncWebService;->getStringFromHttpGetURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, responseBioTempString:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 720
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->artistAsyncBiography:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v1           #responseBioTempString:Ljava/lang/String;
    .end local v2           #syncGetHttp:Lcom/gracenote/mmid/MobileSDK/SyncWebService;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync$DelegatedObservable;

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync$DelegatedObservable;->setChanged()V

    .line 732
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->obs:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync$DelegatedObservable;

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->artistAsyncBiography:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync$DelegatedObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 733
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

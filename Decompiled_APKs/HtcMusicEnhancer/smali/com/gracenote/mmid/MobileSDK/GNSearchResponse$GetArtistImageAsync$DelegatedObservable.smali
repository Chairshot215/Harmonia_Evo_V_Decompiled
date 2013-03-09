.class Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;
.super Ljava/util/Observable;
.source "GNSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelegatedObservable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync$DelegatedObservable;->this$1:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChanged()V
    .locals 0

    .prologue
    .line 777
    invoke-super {p0}, Ljava/util/Observable;->clearChanged()V

    .line 778
    return-void
.end method

.method public setChanged()V
    .locals 0

    .prologue
    .line 780
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 781
    return-void
.end method

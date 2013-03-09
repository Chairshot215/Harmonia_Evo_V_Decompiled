.class Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;
.super Ljava/util/Observable;
.source "GNSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelegatedObservable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync$DelegatedObservable;->this$1:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChanged()V
    .locals 0

    .prologue
    .line 692
    invoke-super {p0}, Ljava/util/Observable;->clearChanged()V

    .line 693
    return-void
.end method

.method public setChanged()V
    .locals 0

    .prologue
    .line 695
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 696
    return-void
.end method

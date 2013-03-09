.class Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OfferResolutionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/OfferResolutionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OfferListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;->mOffers:Ljava/util/List;

    .line 96
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;->mOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;->mOffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 111
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 116
    if-nez p2, :cond_0

    .line 117
    iget-object v1, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400c2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 120
    check-cast v0, Lcom/google/android/finsky/layout/OfferRow;

    .line 121
    .local v0, offerRow:Lcom/google/android/finsky/layout/OfferRow;
    iget-object v1, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferListAdapter;->mOffers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OfferRow;->setOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)V

    .line 123
    return-object v0
.end method

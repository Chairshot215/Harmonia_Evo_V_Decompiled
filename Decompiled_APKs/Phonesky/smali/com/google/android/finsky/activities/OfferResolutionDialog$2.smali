.class Lcom/google/android/finsky/activities/OfferResolutionDialog$2;
.super Ljava/lang/Object;
.source "OfferResolutionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/OfferResolutionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/OfferResolutionDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/OfferResolutionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$2;->this$0:Lcom/google/android/finsky/activities/OfferResolutionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 173
    iget-object v2, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$2;->this$0:Lcom/google/android/finsky/activities/OfferResolutionDialog;

    #getter for: Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->access$100(Lcom/google/android/finsky/activities/OfferResolutionDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 175
    iget-object v2, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$2;->this$0:Lcom/google/android/finsky/activities/OfferResolutionDialog;

    #getter for: Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOfferList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->access$100(Lcom/google/android/finsky/activities/OfferResolutionDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 176
    .local v1, selectedIndex:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$2;->this$0:Lcom/google/android/finsky/activities/OfferResolutionDialog;

    #calls: Lcom/google/android/finsky/activities/OfferResolutionDialog;->getListener()Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;
    invoke-static {v2}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->access$200(Lcom/google/android/finsky/activities/OfferResolutionDialog;)Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;

    move-result-object v0

    .line 177
    .local v0, listener:Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;
    if-eqz v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$2;->this$0:Lcom/google/android/finsky/activities/OfferResolutionDialog;

    #getter for: Lcom/google/android/finsky/activities/OfferResolutionDialog;->mDocuments:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->access$300(Lcom/google/android/finsky/activities/OfferResolutionDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$2;->this$0:Lcom/google/android/finsky/activities/OfferResolutionDialog;

    #getter for: Lcom/google/android/finsky/activities/OfferResolutionDialog;->mOffers:Ljava/util/List;
    invoke-static {v3}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->access$400(Lcom/google/android/finsky/activities/OfferResolutionDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;->onOfferSelected(Lcom/google/android/finsky/api/model/Document;I)V

    .line 182
    .end local v0           #listener:Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;
    .end local v1           #selectedIndex:I
    :cond_0
    return-void
.end method

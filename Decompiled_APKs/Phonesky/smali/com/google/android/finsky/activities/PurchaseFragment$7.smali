.class Lcom/google/android/finsky/activities/PurchaseFragment$7;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->attemptDocLoadFromPurchaseDocId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$7;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$7;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2300(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$7;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$7;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2300(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    #setter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2402(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    .line 964
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$7;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->documentSuccessfullyFound()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2500(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    .line 968
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$7;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    const/4 v1, 0x0

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->showDocumentLoadError(Lcom/android/volley/VolleyError;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2600(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

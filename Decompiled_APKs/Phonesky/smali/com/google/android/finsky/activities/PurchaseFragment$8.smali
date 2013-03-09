.class Lcom/google/android/finsky/activities/PurchaseFragment$8;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


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
    .line 970
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$8;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$8;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$8;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2300(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->showDocumentLoadError(Lcom/android/volley/VolleyError;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2600(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/android/volley/VolleyError;)V

    .line 974
    return-void
.end method

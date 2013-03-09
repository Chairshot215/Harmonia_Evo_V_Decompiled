.class Lcom/google/android/finsky/layout/SubscriptionView$1;
.super Ljava/lang/Object;
.source "SubscriptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/SubscriptionView;->configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SubscriptionView;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$subscriptionDetails:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SubscriptionView;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->val$subscriptionDetails:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    #getter for: Lcom/google/android/finsky/layout/SubscriptionView;->mCancelListener:Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;
    invoke-static {v0}, Lcom/google/android/finsky/layout/SubscriptionView;->access$000(Lcom/google/android/finsky/layout/SubscriptionView;)Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->val$subscriptionDetails:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;->onCancel(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V

    .line 221
    return-void
.end method

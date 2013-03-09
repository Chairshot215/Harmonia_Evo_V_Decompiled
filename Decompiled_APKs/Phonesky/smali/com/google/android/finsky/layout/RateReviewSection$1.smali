.class Lcom/google/android/finsky/layout/RateReviewSection$1;
.super Ljava/lang/Object;
.source "RateReviewSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/RateReviewSection;->configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/RateReviewSection;

.field final synthetic val$document:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$review:Lcom/google/android/finsky/remoting/protos/Rev$Review;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    iput-object p2, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$document:Lcom/google/android/finsky/api/model/Document;

    iput-object p4, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$review:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 89
    iget-object v7, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 90
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v7, "review_dialog"

    invoke-virtual {v1, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 92
    .local v5, reviewsFragment:Landroid/support/v4/app/Fragment;
    if-eqz v5, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getMarketMetadata()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v2

    .line 97
    .local v2, metadata:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasCommentPostEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getCommentPostEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v4

    .line 99
    .local v0, commentsEnabled:Z
    :goto_1
    if-eqz v0, :cond_1

    const/4 v4, 0x2

    .line 101
    .local v4, reviewMode:I
    :cond_1
    iget-object v7, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$review:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    iget-object v9, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v9

    invoke-static {v4, v7, v8, v9}, Lcom/google/android/finsky/activities/ReviewDialog;->newInstance(ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/Rev$Review;I)Lcom/google/android/finsky/activities/ReviewDialog;

    move-result-object v3

    .line 103
    .local v3, ratingDialog:Lcom/google/android/finsky/activities/ReviewDialog;
    iget-object v7, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v7, v6}, Lcom/google/android/finsky/activities/ReviewDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 104
    const-string v6, "review_dialog"

    invoke-virtual {v3, v1, v6}, Lcom/google/android/finsky/activities/ReviewDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #commentsEnabled:Z
    .end local v3           #ratingDialog:Lcom/google/android/finsky/activities/ReviewDialog;
    .end local v4           #reviewMode:I
    :cond_2
    move v0, v6

    .line 97
    goto :goto_1
.end method

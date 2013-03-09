.class Lcom/google/android/finsky/adapters/ReviewsAdapter$1;
.super Ljava/lang/Object;
.source "ReviewsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/ReviewsAdapter;->bindItemView(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/ReviewsAdapter;

.field final synthetic val$review:Lcom/google/android/finsky/remoting/protos/Rev$Review;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/ReviewsAdapter;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;->this$0:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;->val$review:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;->this$0:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    #getter for: Lcom/google/android/finsky/adapters/ReviewsAdapter;->mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->access$000(Lcom/google/android/finsky/adapters/ReviewsAdapter;)Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;->val$review:Lcom/google/android/finsky/remoting/protos/Rev$Review;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;->onRateReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    .line 259
    return-void
.end method

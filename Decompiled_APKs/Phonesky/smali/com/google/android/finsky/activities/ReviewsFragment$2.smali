.class Lcom/google/android/finsky/activities/ReviewsFragment$2;
.super Ljava/lang/Object;
.source "ReviewsFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewsFragment;->onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsFragment$2;->this$0:Lcom/google/android/finsky/activities/ReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment$2;->this$0:Lcom/google/android/finsky/activities/ReviewsFragment;

    const v1, 0x7f070188

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/ReviewsFragment;->toast(II)V

    .line 210
    return-void
.end method

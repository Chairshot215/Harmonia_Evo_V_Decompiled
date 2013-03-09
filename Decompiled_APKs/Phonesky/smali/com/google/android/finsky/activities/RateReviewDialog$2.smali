.class Lcom/google/android/finsky/activities/RateReviewDialog$2;
.super Ljava/lang/Object;
.source "RateReviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/RateReviewDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/RateReviewDialog;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$reviewId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/RateReviewDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/finsky/activities/RateReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/RateReviewDialog;

    iput-object p2, p0, Lcom/google/android/finsky/activities/RateReviewDialog$2;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/RateReviewDialog$2;->val$reviewId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "buttonIndex"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/android/finsky/activities/RateReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/RateReviewDialog;

    #calls: Lcom/google/android/finsky/activities/RateReviewDialog;->getListener()Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
    invoke-static {v1}, Lcom/google/android/finsky/activities/RateReviewDialog;->access$400(Lcom/google/android/finsky/activities/RateReviewDialog;)Lcom/google/android/finsky/activities/RateReviewDialog$Listener;

    move-result-object v0

    .line 128
    .local v0, l:Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/RateReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/RateReviewDialog;

    iget-object v1, v1, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/google/android/finsky/activities/RateReviewDialog$2;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/RateReviewDialog$2;->val$reviewId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/RateReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/RateReviewDialog;

    iget-object v3, v3, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/RateReviewDialog$Listener;->onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    .line 131
    :cond_0
    return-void
.end method

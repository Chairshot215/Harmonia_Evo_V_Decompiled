.class Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1$1;
.super Ljava/lang/Object;
.source "RecommendationsBucketEntry.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1$1;->this$1:Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1$1;->this$1:Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;

    iget-object v0, v0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;->val$listener:Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;

    iget-object v1, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1$1;->this$1:Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;

    iget-object v1, v1, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;->this$0:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    #getter for: Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->access$000(Lcom/google/android/finsky/layout/RecommendationsBucketEntry;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;->onSuccessfulDismissal(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    check-cast p1, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1$1;->onResponse(Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;)V

    return-void
.end method

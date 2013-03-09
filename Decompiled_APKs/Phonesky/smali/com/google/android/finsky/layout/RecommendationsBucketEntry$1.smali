.class Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;
.super Ljava/lang/Object;
.source "RecommendationsBucketEntry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->configureDismissal(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

.field final synthetic val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

.field final synthetic val$listener:Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/RecommendationsBucketEntry;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;->this$0:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    iput-object p2, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p3, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;->val$listener:Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;->this$0:Lcom/google/android/finsky/layout/RecommendationsBucketEntry;

    #getter for: Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->access$000(Lcom/google/android/finsky/layout/RecommendationsBucketEntry;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getReasonUniqueId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1$1;-><init>(Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;)V

    new-instance v3, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1$2;-><init>(Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->rateSuggestedContent(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 77
    return-void
.end method

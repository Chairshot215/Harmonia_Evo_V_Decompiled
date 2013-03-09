.class final Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;
.super Ljava/lang/Object;
.source "RecommendationsStore.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->performBackFill(Lcom/google/android/finsky/api/DfeApi;Landroid/content/Context;Lcom/google/android/finsky/widget/recommendation/RecommendationList;Lcom/google/android/finsky/library/Library;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appWidgetId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$library:Lcom/google/android/finsky/library/Library;

.field final synthetic val$oldRecs:Lcom/google/android/finsky/widget/recommendation/RecommendationList;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/recommendation/RecommendationList;Lcom/google/android/finsky/library/Library;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->val$oldRecs:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    iput-object p2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->val$library:Lcom/google/android/finsky/library/Library;

    iput-object p3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->val$appWidgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->val$oldRecs:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->getBackendId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->val$library:Lcom/google/android/finsky/library/Library;

    #calls: Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->parseNetworkResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    invoke-static {p1, v1, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->access$000(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    .line 140
    .local v0, newRecs:Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->val$oldRecs:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->merge(Lcom/google/android/finsky/widget/recommendation/RecommendationList;)I

    .line 141
    invoke-static {}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->access$100()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1$1;-><init>(Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->onResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)V

    return-void
.end method

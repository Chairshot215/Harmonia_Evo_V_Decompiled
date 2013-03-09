.class Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1$1;
.super Ljava/lang/Object;
.source "RecommendationsStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->onResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1$1;->this$0:Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1$1;->this$0:Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;

    iget-object v0, v0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->val$oldRecs:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1$1;->this$0:Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;

    iget-object v1, v1, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->writeToDisk(Landroid/content/Context;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1$1;->this$0:Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;

    iget-object v0, v0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1$1;->this$0:Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;

    iget v3, v3, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;->val$appWidgetId:I

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->notifyDataSetChanged(Landroid/content/Context;[I)V

    .line 146
    return-void
.end method

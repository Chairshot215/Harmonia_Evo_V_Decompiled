.class Lcom/google/android/finsky/appstate/AppStatesReplicator$4;
.super Ljava/lang/Object;
.source "AppStatesReplicator.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/AppStatesReplicator;->performRequests(Ljava/util/List;[I[ILjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

.field final synthetic val$accounts:Ljava/util/List;

.field final synthetic val$finishedReplications:[I

.field final synthetic val$successfulReplications:[I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;[ILjava/util/List;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;->this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;->val$finishedReplications:[I

    iput-object p3, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;->val$accounts:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;->val$successfulReplications:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 5
    .parameter "volleyError"

    .prologue
    const/4 v4, 0x0

    .line 227
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;->val$finishedReplications:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;->this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;->val$accounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;->val$finishedReplications:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;->val$successfulReplications:[I

    aget v3, v3, v4

    #calls: Lcom/google/android/finsky/appstate/AppStatesReplicator;->handleContentSyncResponse(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->access$200(Lcom/google/android/finsky/appstate/AppStatesReplicator;III)V

    .line 230
    return-void
.end method

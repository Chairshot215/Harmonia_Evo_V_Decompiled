.class Lcom/google/android/finsky/appstate/AppStatesReplicator$1;
.super Ljava/lang/Object;
.source "AppStatesReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/AppStatesReplicator;->load(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field final synthetic this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;->this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;->mCount:I

    .line 89
    iget v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;->mCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;->this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    #getter for: Lcom/google/android/finsky/appstate/AppStatesReplicator;->mNotificationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->access$000(Lcom/google/android/finsky/appstate/AppStatesReplicator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    :cond_0
    return-void
.end method

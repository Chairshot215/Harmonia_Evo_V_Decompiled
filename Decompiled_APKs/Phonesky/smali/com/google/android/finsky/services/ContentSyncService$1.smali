.class Lcom/google/android/finsky/services/ContentSyncService$1;
.super Ljava/lang/Object;
.source "ContentSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/ContentSyncService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/ContentSyncService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/ContentSyncService;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->this$0:Lcom/google/android/finsky/services/ContentSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->this$0:Lcom/google/android/finsky/services/ContentSyncService;

    #getter for: Lcom/google/android/finsky/services/ContentSyncService;->mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;
    invoke-static {v0}, Lcom/google/android/finsky/services/ContentSyncService;->access$100(Lcom/google/android/finsky/services/ContentSyncService;)Lcom/google/android/finsky/appstate/AppStatesReplicator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/services/ContentSyncService$1;->this$0:Lcom/google/android/finsky/services/ContentSyncService;

    #getter for: Lcom/google/android/finsky/services/ContentSyncService;->mReplicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;
    invoke-static {v1}, Lcom/google/android/finsky/services/ContentSyncService;->access$000(Lcom/google/android/finsky/services/ContentSyncService;)Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->replicate(Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;)V

    .line 79
    return-void
.end method

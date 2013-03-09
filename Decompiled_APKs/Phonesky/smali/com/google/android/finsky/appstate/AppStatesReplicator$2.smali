.class Lcom/google/android/finsky/appstate/AppStatesReplicator$2;
.super Ljava/lang/Object;
.source "AppStatesReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/AppStatesReplicator;->replicate(Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$2;->this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$2;->this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    #calls: Lcom/google/android/finsky/appstate/AppStatesReplicator;->internalReplicate()V
    invoke-static {v0}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->access$100(Lcom/google/android/finsky/appstate/AppStatesReplicator;)V

    .line 118
    return-void
.end method

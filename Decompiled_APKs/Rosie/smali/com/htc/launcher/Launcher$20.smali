.class Lcom/htc/launcher/Launcher$20;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->setCurrentWorkspace(IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;

.field final synthetic val$nSceneId:I


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5852
    iput-object p1, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    iput p2, p0, Lcom/htc/launcher/Launcher$20;->val$nSceneId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5855
    invoke-static {}, Lcom/htc/launcher/Launcher;->access$5500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5856
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    iget v2, p0, Lcom/htc/launcher/Launcher$20;->val$nSceneId:I

    #calls: Lcom/htc/launcher/Launcher;->deleteAndDuplicateScene(I)V
    invoke-static {v0, v2}, Lcom/htc/launcher/Launcher;->access$5600(Lcom/htc/launcher/Launcher;I)V

    .line 5857
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5858
    iget-object v0, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    new-instance v1, Lcom/htc/launcher/Launcher$20$1;

    invoke-direct {v1, p0}, Lcom/htc/launcher/Launcher$20$1;-><init>(Lcom/htc/launcher/Launcher$20;)V

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5865
    return-void

    .line 5857
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

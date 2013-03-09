.class Lcom/htc/launcher/Workspace$UpdateVacantRunnable;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateVacantRunnable"
.end annotation


# instance fields
.field mInfo:Lcom/htc/launcher/ItemInfo;

.field mScreen:I

.field final synthetic this$0:Lcom/htc/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Workspace;ILcom/htc/launcher/ItemInfo;)V
    .locals 0
    .parameter
    .parameter "screen"
    .parameter "info"

    .prologue
    .line 2405
    iput-object p1, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->this$0:Lcom/htc/launcher/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2406
    iput p2, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mScreen:I

    .line 2407
    iput-object p3, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mInfo:Lcom/htc/launcher/ItemInfo;

    .line 2408
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2412
    const-string v6, "Workspace"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[EDIT_DEBUG] updateVacant cost UpdateVacantRunnable("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mScreen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") - enter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    const/4 v0, -0x1

    .local v0, cellX:I
    const/4 v1, -0x1

    .local v1, cellY:I
    const/4 v4, 0x0

    .local v4, spanX:I
    const/4 v5, 0x0

    .line 2415
    .local v5, spanY:I
    const/4 v2, 0x0

    .line 2416
    .local v2, isFromDrag:Z
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mSyncLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/htc/launcher/Workspace;->access$300(Lcom/htc/launcher/Workspace;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2417
    :try_start_0
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v6}, Lcom/htc/launcher/Workspace;->access$400(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/CellInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2418
    const/4 v2, 0x1

    .line 2419
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v6}, Lcom/htc/launcher/Workspace;->access$400(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/CellInfo;

    move-result-object v6

    iget v4, v6, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 2420
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v6}, Lcom/htc/launcher/Workspace;->access$400(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/CellInfo;

    move-result-object v6

    iget v5, v6, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 2421
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v6}, Lcom/htc/launcher/Workspace;->access$400(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/CellInfo;

    move-result-object v6

    iget v6, v6, Lcom/htc/launcher/CellInfo;->screen:I

    iget v8, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mScreen:I

    if-ne v6, v8, :cond_0

    .line 2422
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v6}, Lcom/htc/launcher/Workspace;->access$400(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/CellInfo;

    move-result-object v6

    iget v0, v6, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 2423
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v6}, Lcom/htc/launcher/Workspace;->access$400(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/CellInfo;

    move-result-object v6

    iget v1, v6, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 2426
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2428
    if-nez v2, :cond_2

    .line 2429
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mInfo:Lcom/htc/launcher/ItemInfo;

    iget-wide v6, v6, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 2430
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mInfo:Lcom/htc/launcher/ItemInfo;

    iget v0, v6, Lcom/htc/launcher/ItemInfo;->cellX:I

    :cond_1
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mInfo:Lcom/htc/launcher/ItemInfo;

    iget v1, v6, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 2431
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mInfo:Lcom/htc/launcher/ItemInfo;

    iget v4, v6, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mInfo:Lcom/htc/launcher/ItemInfo;

    iget v5, v6, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 2434
    :cond_2
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->this$0:Lcom/htc/launcher/Workspace;

    iget v7, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mScreen:I

    invoke-virtual {v6, v7}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/CellLayout;

    .line 2436
    .local v3, screen:Lcom/htc/launcher/CellLayout;
    iget-object v6, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mInfo:Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v3, v6}, Lcom/htc/launcher/CellLayout;->setDragInfo(Ljava/lang/Object;)V

    .line 2437
    invoke-virtual {v3}, Lcom/htc/launcher/CellLayout;->clearVacant()V

    .line 2438
    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/htc/launcher/CellLayout;->updateVacant(IIII)V

    .line 2439
    const-string v6, "Workspace"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[EDIT_DEBUG] updateVacant cost UpdateVacantRunnable("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;->mScreen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") - exit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/launcher/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    return-void

    .line 2426
    .end local v3           #screen:Lcom/htc/launcher/CellLayout;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

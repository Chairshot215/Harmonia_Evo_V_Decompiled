.class Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;
.super Landroid/os/Handler;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyDirtyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/CellLayout;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 2232
    iput-object p1, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/CellLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2232
    invoke-direct {p0, p1}, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;-><init>(Lcom/htc/launcher/CellLayout;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 2236
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2292
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2295
    :cond_0
    :goto_0
    return-void

    .line 2239
    :pswitch_0
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mIsScrolling:Z
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$200(Lcom/htc/launcher/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mIsPause:Z
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$300(Lcom/htc/launcher/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2241
    sget-boolean v0, Lcom/htc/launcher/CellLayout;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "DEBUG"

    const-string v5, "add UpdateCellLayoutCacheHandler into Idle Handler"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mUIMessageQueue:Landroid/os/MessageQueue;
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$500(Lcom/htc/launcher/CellLayout;)Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v5, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mUpdateCellLayoutCacheHandler:Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;
    invoke-static {v5}, Lcom/htc/launcher/CellLayout;->access$400(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 2247
    :pswitch_1
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$600(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2248
    const-string v0, "CellLayout"

    const-string v5, "NOTIFY_REARRANGE but mDragOverInfo is null"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2271
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$600(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellInfo;

    move-result-object v0

    iget v1, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 2272
    .local v1, X0:I
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$600(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellInfo;

    move-result-object v0

    iget v2, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 2273
    .local v2, Y0:I
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$600(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellInfo;

    move-result-object v0

    iget v3, v0, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 2274
    .local v3, spanX:I
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$600(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellInfo;

    move-result-object v0

    iget v4, v0, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 2276
    .local v4, spanY:I
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    new-instance v5, Lcom/htc/launcher/CellInfo$VacantCell;

    invoke-direct {v5}, Lcom/htc/launcher/CellInfo$VacantCell;-><init>()V

    #setter for: Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;
    invoke-static {v0, v5}, Lcom/htc/launcher/CellLayout;->access$702(Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/CellInfo$VacantCell;)Lcom/htc/launcher/CellInfo$VacantCell;

    .line 2277
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$700(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellInfo$VacantCell;

    move-result-object v0

    iput v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    .line 2278
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$700(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellInfo$VacantCell;

    move-result-object v0

    iput v2, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    .line 2279
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$700(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellInfo$VacantCell;

    move-result-object v0

    iput v3, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    .line 2280
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$700(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellInfo$VacantCell;

    move-result-object v0

    iput v4, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    .line 2282
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$800(Lcom/htc/launcher/CellLayout;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2283
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    iget-object v5, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/htc/launcher/CellLayout;->access$800(Lcom/htc/launcher/CellLayout;)Landroid/graphics/RectF;

    move-result-object v5

    #calls: Lcom/htc/launcher/CellLayout;->cellToOutlineRect(IIIILandroid/graphics/RectF;)V
    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/CellLayout;->access$900(Lcom/htc/launcher/CellLayout;IIIILandroid/graphics/RectF;)V

    .line 2286
    :cond_3
    const-string v0, "Rearrange"

    const-string v5, "handleMessage performRearrange"

    invoke-static {v0, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;->this$0:Lcom/htc/launcher/CellLayout;

    const/4 v5, 0x1

    #calls: Lcom/htc/launcher/CellLayout;->performRearrange(Z)V
    invoke-static {v0, v5}, Lcom/htc/launcher/CellLayout;->access$1000(Lcom/htc/launcher/CellLayout;Z)V

    goto/16 :goto_0

    .line 2236
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

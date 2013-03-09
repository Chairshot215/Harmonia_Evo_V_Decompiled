.class Lcom/htc/launcher/Launcher$CellInfoHandler;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/htc/launcher/CellLayout$ICellInfoHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellInfoHandler"
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mCellInfo:Lcom/htc/launcher/CellInfo;

.field private mSelectTime:J

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 9395
    iput-object p1, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9391
    iput-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mCellInfo:Lcom/htc/launcher/CellInfo;

    .line 9392
    iput-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mCallback:Ljava/lang/Runnable;

    .line 9407
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mSelectTime:J

    .line 9395
    return-void
.end method

.method static synthetic access$10900(Lcom/htc/launcher/Launcher$CellInfoHandler;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 9390
    iget-wide v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mSelectTime:J

    return-wide v0
.end method

.method static synthetic access$11000(Lcom/htc/launcher/Launcher$CellInfoHandler;)Lcom/htc/launcher/CellInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9390
    iget-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mCellInfo:Lcom/htc/launcher/CellInfo;

    return-object v0
.end method

.method static synthetic access$11102(Lcom/htc/launcher/Launcher$CellInfoHandler;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9390
    iput-object p1, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method private setCellInfo(Lcom/htc/launcher/CellInfo;)V
    .locals 0
    .parameter "cellInfo"

    .prologue
    .line 9404
    iput-object p1, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mCellInfo:Lcom/htc/launcher/CellInfo;

    .line 9405
    return-void
.end method


# virtual methods
.method getCellInfo()Lcom/htc/launcher/CellInfo;
    .locals 1

    .prologue
    .line 9456
    iget-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mCellInfo:Lcom/htc/launcher/CellInfo;

    return-object v0
.end method

.method public onCancel(Lcom/htc/launcher/CellInfo;)V
    .locals 3
    .parameter "cellInfo"

    .prologue
    .line 9419
    const-string v0, "CellInfoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[STICKY] CellInfo onCancel() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9420
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mSelectTime:J

    .line 9421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mCellInfo:Lcom/htc/launcher/CellInfo;

    .line 9422
    return-void
.end method

.method public onSelect(Lcom/htc/launcher/CellInfo;)V
    .locals 3
    .parameter "cellInfo"

    .prologue
    .line 9411
    const-string v0, "CellInfoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[STICKY] CellInfo onSelect() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9412
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$CellInfoHandler;->setCellInfo(Lcom/htc/launcher/CellInfo;)V

    .line 9413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mSelectTime:J

    .line 9414
    return-void
.end method

.method public onTapEmptyCell()V
    .locals 2

    .prologue
    .line 9427
    const-string v0, "CellInfoHandler"

    const-string v1, "[STICKY] CellInfo onTapEmptyCell()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9428
    iget-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    .line 9429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mSelectTime:J

    .line 9430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mCellInfo:Lcom/htc/launcher/CellInfo;

    .line 9431
    return-void
.end method

.method public onTouchMove(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "motionEvent"

    .prologue
    const-wide/16 v6, 0x0

    .line 9436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mSelectTime:J

    sub-long v0, v2, v4

    .line 9437
    .local v0, elapseTime:J
    iget-wide v2, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mSelectTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 9438
    const-string v2, "CellInfoHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[STICKY] CellInfo onTouchMove() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9440
    :cond_0
    iget-wide v2, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mSelectTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 9441
    new-instance v2, Lcom/htc/launcher/Launcher$CellInfoHandler$1;

    invoke-direct {v2, p0}, Lcom/htc/launcher/Launcher$CellInfoHandler$1;-><init>(Lcom/htc/launcher/Launcher$CellInfoHandler;)V

    iput-object v2, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mCallback:Ljava/lang/Runnable;

    .line 9451
    iget-object v2, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v3, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 9453
    :cond_1
    return-void
.end method

.method public ownCellInfo()Z
    .locals 1

    .prologue
    .line 9400
    iget-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mStickyMode:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$10800(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler;->mCellInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

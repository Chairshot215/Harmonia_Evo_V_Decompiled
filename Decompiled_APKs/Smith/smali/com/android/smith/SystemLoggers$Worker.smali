.class Lcom/android/smith/SystemLoggers$Worker;
.super Ljava/lang/Thread;
.source "SystemLoggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/SystemLoggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field msgDone:I

.field msgTask:I

.field final synthetic this$0:Lcom/android/smith/SystemLoggers;


# direct methods
.method public constructor <init>(Lcom/android/smith/SystemLoggers;II)V
    .locals 0
    .parameter
    .parameter "msgTask"
    .parameter "msgDone"

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1464
    iput p2, p0, Lcom/android/smith/SystemLoggers$Worker;->msgTask:I

    .line 1465
    iput p3, p0, Lcom/android/smith/SystemLoggers$Worker;->msgDone:I

    .line 1466
    return-void
.end method

.method private job_clearlog()V
    .locals 3

    .prologue
    .line 1552
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1554
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1556
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1558
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/smith/SystemLoggers$ServiceInfo;->applyRequest(I)Z

    .line 1554
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1562
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private job_init()V
    .locals 4

    .prologue
    .line 1470
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1474
    :cond_1
    const/4 v1, 0x0

    .line 1476
    .local v1, si:Lcom/android/smith/SystemLoggers$ServiceInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1478
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/smith/SystemLoggers$ServiceInfo;->updateInfo()Z

    .line 1480
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v2

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    if-eqz v2, :cond_2

    .line 1481
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v2

    aget-object v1, v2, v0

    .line 1476
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1485
    :cond_3
    iget-object v3, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :goto_2
    #setter for: Lcom/android/smith/SystemLoggers;->mRunning:Z
    invoke-static {v3, v2}, Lcom/android/smith/SystemLoggers;->access$002(Lcom/android/smith/SystemLoggers;Z)Z

    .line 1488
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/smith/SystemLoggers$RunningSettings;->load()Z

    .line 1491
    if-eqz v1, :cond_0

    .line 1493
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget v3, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->size:I

    iput v3, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    .line 1494
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget v3, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->rotate:I

    iput v3, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    .line 1495
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget v3, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_limit:I

    iput v3, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    .line 1496
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget v3, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_reserved:I

    iput v3, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->size_reserved:I

    .line 1497
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget v3, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->session:I

    iput v3, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    .line 1498
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->autoclear:Z

    iput-boolean v3, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->autoclear:Z

    .line 1499
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->compress:Z

    iput-boolean v3, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->compress:Z

    goto/16 :goto_0

    .line 1485
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private job_start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1505
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1507
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->path:Ljava/lang/String;

    .line 1508
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    iput v2, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->size:I

    .line 1509
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    iput v2, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->rotate:I

    .line 1510
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    iput v2, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_limit:I

    .line 1511
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->size_reserved:I

    iput v2, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_reserved:I

    .line 1512
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    iput v2, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->session:I

    .line 1513
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->autoclear:Z

    iput-boolean v2, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->autoclear:Z

    .line 1514
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v2}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/smith/SystemLoggers$RunningSettings;->compress:Z

    iput-boolean v2, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->compress:Z

    .line 1516
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->loggers:[Z

    aput-boolean v3, v1, v0

    .line 1520
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/android/smith/SystemLoggers$ServiceInfo;->applyRequest(I)Z

    .line 1505
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1524
    :cond_0
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->loggers:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 1528
    :cond_1
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #calls: Lcom/android/smith/SystemLoggers;->runDumpLastKmsg()V
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$500(Lcom/android/smith/SystemLoggers;)V

    .line 1530
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/smith/SystemLoggers$RunningSettings;->save()V

    .line 1531
    return-void
.end method

.method private job_stop()V
    .locals 3

    .prologue
    .line 1535
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1537
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1539
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/smith/SystemLoggers$ServiceInfo;->applyRequest(I)Z

    .line 1535
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1543
    :cond_1
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->bootrun:Z

    if-eqz v1, :cond_2

    .line 1545
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->bootrun:Z

    .line 1546
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/smith/SystemLoggers$RunningSettings;->save()V

    .line 1548
    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1566
    const-string v0, "SM:SystemLoggers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker: begin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/smith/SystemLoggers$Worker;->msgTask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    iget v0, p0, Lcom/android/smith/SystemLoggers$Worker;->msgTask:I

    packed-switch v0, :pswitch_data_0

    .line 1593
    :goto_0
    const-string v0, "SM:SystemLoggers"

    const-string v1, "Worker: end"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/smith/SystemLoggers;->access$700(Lcom/android/smith/SystemLoggers;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$700(Lcom/android/smith/SystemLoggers;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/smith/SystemLoggers$Worker;->msgDone:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1596
    return-void

    .line 1571
    :pswitch_0
    invoke-direct {p0}, Lcom/android/smith/SystemLoggers$Worker;->job_init()V

    .line 1573
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    const/4 v1, 0x1

    #calls: Lcom/android/smith/SystemLoggers;->update_status_bar(Z)V
    invoke-static {v0, v1}, Lcom/android/smith/SystemLoggers;->access$600(Lcom/android/smith/SystemLoggers;Z)V

    goto :goto_0

    .line 1577
    :pswitch_1
    invoke-direct {p0}, Lcom/android/smith/SystemLoggers$Worker;->job_start()V

    .line 1579
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #calls: Lcom/android/smith/SystemLoggers;->update_status_bar(Z)V
    invoke-static {v0, v3}, Lcom/android/smith/SystemLoggers;->access$600(Lcom/android/smith/SystemLoggers;Z)V

    goto :goto_0

    .line 1583
    :pswitch_2
    invoke-direct {p0}, Lcom/android/smith/SystemLoggers$Worker;->job_stop()V

    .line 1585
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$Worker;->this$0:Lcom/android/smith/SystemLoggers;

    #calls: Lcom/android/smith/SystemLoggers;->update_status_bar(Z)V
    invoke-static {v0, v3}, Lcom/android/smith/SystemLoggers;->access$600(Lcom/android/smith/SystemLoggers;Z)V

    goto :goto_0

    .line 1589
    :pswitch_3
    invoke-direct {p0}, Lcom/android/smith/SystemLoggers$Worker;->job_clearlog()V

    goto :goto_0

    .line 1568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

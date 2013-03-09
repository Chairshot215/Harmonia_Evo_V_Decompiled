.class public Lcom/htc/laputa/engine/util/ContentStoreCmd;
.super Ljava/lang/Object;
.source "ContentStoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;,
        Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;,
        Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;,
        Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;,
        Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;
    }
.end annotation


# static fields
.field protected static final MSG_NOTIFYITEMACTION:I = 0x3e9

.field protected static final MSG_NOTIFYSTORECOMMAND:I = 0x3ea


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionTaskId:I

.field private mActionTaskList:Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBundleResult:Landroid/os/Bundle;

.field private mCatalogItemList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/htc/laputa/engine/util/ContentStoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCatalogItemListTaskId:I

.field private mCmdBundleListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/laputa/engine/util/CmdBundleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmdListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/laputa/engine/util/CmdListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExtrasItemList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/htc/laputa/engine/util/ContentExtrasItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGetItemListListener:Lcom/htc/laputa/engine/util/CmdListener;

.field private mHandler:Landroid/os/Handler;

.field private mLicenseItemList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchCountryItemListener:Lcom/htc/laputa/engine/util/CmdBundleListener;

.field private mSendVoucherCodeListener:Lcom/htc/laputa/engine/util/CmdListener;

.field private mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "LaputaContentStoreCmd"

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCatalogItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mExtrasItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mLicenseItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCatalogItemListTaskId:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdListenerMap:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdBundleListenerMap:Ljava/util/HashMap;

    .line 655
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;

    invoke-direct {v0, p0, v1}, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;Lcom/htc/laputa/engine/util/ContentStoreCmd$1;)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mActionTaskList:Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;

    .line 783
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$14;

    invoke-direct {v0, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$14;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mHandler:Landroid/os/Handler;

    .line 87
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v1, "StoreCmd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdListenerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Lcom/htc/laputa/engine/util/CmdListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSendVoucherCodeListener:Lcom/htc/laputa/engine/util/CmdListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/laputa/engine/util/ContentStoreCmd;Lcom/htc/laputa/engine/util/CmdListener;)Lcom/htc/laputa/engine/util/CmdListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSendVoucherCodeListener:Lcom/htc/laputa/engine/util/CmdListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mBundleResult:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/laputa/engine/util/ContentStoreCmd;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mBundleResult:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/laputa/engine/util/ContentStoreCmd;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->notifyItemBundleListener(IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/laputa/engine/util/ContentStoreCmd;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->notifyCommandBundleListener(IILandroid/os/Bundle;)V

    return-void
.end method

.method private notifyCommandBundleListener(IILandroid/os/Bundle;)V
    .locals 4
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"

    .prologue
    .line 773
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdBundleListenerMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/CmdBundleListener;

    .line 774
    .local v0, listener:Lcom/htc/laputa/engine/util/CmdBundleListener;
    if-nez v0, :cond_0

    .line 775
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find lisnter for task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_0
    invoke-interface {v0, p1, p3}, Lcom/htc/laputa/engine/util/CmdBundleListener;->notifyComplete(ILandroid/os/Bundle;)V

    .line 780
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdBundleListenerMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private notifyItemBundleListener(IILandroid/os/Bundle;)V
    .locals 4
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"

    .prologue
    .line 753
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mActionTaskList:Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;

    invoke-virtual {v1, p2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->pop(I)Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;

    move-result-object v0

    .line 754
    .local v0, task:Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->listener:Lcom/htc/laputa/engine/util/CmdBundleListener;

    if-nez v1, :cond_1

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find lisnter for task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-object v1, v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->listener:Lcom/htc/laputa/engine/util/CmdBundleListener;

    invoke-interface {v1, p1, p3}, Lcom/htc/laputa/engine/util/CmdBundleListener;->notifyComplete(ILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public DownloadStart(Lcom/htc/laputa/engine/util/ContentStoreItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 406
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v2, "DownloadStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mExtrasItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v0, param:Landroid/os/Bundle;
    const-string v1, "ContentStoreCommandType"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    const/4 v1, 0x1

    return v1
.end method

.method public action(Lcom/htc/laputa/engine/util/ContentExtrasItem;ILandroid/os/Bundle;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 7
    .parameter "item"
    .parameter "actionType"
    .parameter "params"
    .parameter "listener"

    .prologue
    .line 733
    const-string v0, "ContentStoreItemType"

    const-class v1, Lcom/htc/laputa/engine/util/ContentStoreItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v0, "ContentStoreCommandType"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 738
    :try_start_0
    new-instance v0, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$13;

    invoke-direct {v1, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$13;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v0, p3, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v4

    .line 743
    .local v4, taskId:I
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mActionTaskList:Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getId()J

    move-result-wide v1

    move v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->set(JIILcom/htc/laputa/engine/util/CmdBundleListener;)Z
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    const/4 v0, 0x1

    .end local v4           #taskId:I
    :goto_0
    return v0

    .line 744
    :catch_0
    move-exception v6

    .line 745
    .local v6, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    .line 746
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public action(Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;ILandroid/os/Bundle;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 7
    .parameter "item"
    .parameter "actionType"
    .parameter "params"
    .parameter "listener"

    .prologue
    .line 681
    const-string v0, "ContentStoreItemType"

    const-class v1, Lcom/htc/laputa/engine/util/ContentStoreItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v0, "ContentStoreCommandType"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 686
    :try_start_0
    new-instance v0, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$12;

    invoke-direct {v1, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$12;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v0, p3, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v4

    .line 691
    .local v4, taskId:I
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mActionTaskList:Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->getId()J

    move-result-wide v1

    move v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->set(JIILcom/htc/laputa/engine/util/CmdBundleListener;)Z
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    const/4 v0, 0x1

    .end local v4           #taskId:I
    :goto_0
    return v0

    .line 692
    :catch_0
    move-exception v6

    .line 693
    .local v6, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    .line 694
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public action(Lcom/htc/laputa/engine/util/ContentStoreItem;ILandroid/os/Bundle;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 7
    .parameter "item"
    .parameter "actionType"
    .parameter "params"
    .parameter "listener"

    .prologue
    .line 659
    const-string v0, "ContentStoreItemType"

    const-class v1, Lcom/htc/laputa/engine/util/ContentStoreItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "ContentStoreCommandType"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 661
    const-string v0, "catalogid"

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getCatalogId()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 665
    :try_start_0
    new-instance v0, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$11;

    invoke-direct {v1, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$11;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v0, p3, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v4

    .line 670
    .local v4, taskId:I
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mActionTaskList:Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getId()J

    move-result-wide v1

    move v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->set(JIILcom/htc/laputa/engine/util/CmdBundleListener;)Z
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    const/4 v0, 0x1

    .end local v4           #taskId:I
    :goto_0
    return v0

    .line 671
    :catch_0
    move-exception v6

    .line 672
    .local v6, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    .line 673
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public action(Lcom/htc/laputa/engine/util/ContentStoreItem;ILcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 3
    .parameter "item"
    .parameter "actionType"
    .parameter "listener"

    .prologue
    .line 596
    if-nez p1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v2, "action item = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v1, 0x0

    .line 601
    :goto_0
    return v1

    .line 600
    :cond_0
    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 601
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->action(Lcom/htc/laputa/engine/util/ContentStoreItem;ILandroid/os/Bundle;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z

    move-result v1

    goto :goto_0
.end method

.method public actionCancel()Z
    .locals 3

    .prologue
    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    iget v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mActionTaskId:I

    invoke-virtual {v1, v2}, Lcom/htc/laputa/engine/util/Service$Adapter;->cancel(I)V
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    .line 715
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public actionCancel(Lcom/htc/laputa/engine/util/ContentStoreItem;I)Z
    .locals 5
    .parameter "item"
    .parameter "actionType"

    .prologue
    .line 722
    :try_start_0
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mActionTaskList:Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$ActionTaskList;->get(JI)I

    move-result v1

    .line 723
    .local v1, taskId:I
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    invoke-virtual {v2, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;->cancel(I)V
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    const/4 v2, 0x1

    .end local v1           #taskId:I
    :goto_0
    return v2

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    .line 726
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public activateTrialLicense(Ljava/lang/String;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 5
    .parameter "countryCode"
    .parameter "listener"

    .prologue
    .line 383
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v1, param:Landroid/os/Bundle;
    const-string v3, "ContentStoreCommandType"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    const-string v3, "ContentStoreContentTypeParam"

    const/4 v4, 0x7

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    const-string v3, "country"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :try_start_0
    new-instance v3, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v4, Lcom/htc/laputa/engine/util/ContentStoreCmd$6;

    invoke-direct {v4, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$6;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v3, v1, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v2

    .line 396
    .local v2, taskId:I
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdBundleListenerMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v2           #taskId:I
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 397
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancel(I)Z
    .locals 2
    .parameter "taskId"

    .prologue
    .line 702
    :try_start_0
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    invoke-virtual {v1, p1}, Lcom/htc/laputa/engine/util/Service$Adapter;->cancel(I)V
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    .line 705
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBundleResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mBundleResult:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCatalogItemResult()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/htc/laputa/engine/util/ContentStoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCatalogItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getExtrasItemResult()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/htc/laputa/engine/util/ContentExtrasItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mExtrasItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getItemList(Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;Lcom/htc/laputa/engine/util/CmdListener;)Z
    .locals 11
    .parameter "contentType"
    .parameter "extrasType"
    .parameter "cmdListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 195
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v10, "getItemList()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-nez p3, :cond_0

    .line 197
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v10, "openCatalog without listener"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    return v8

    .line 201
    :cond_0
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mExtrasItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 203
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v5, param:Landroid/os/Bundle;
    const-string v9, "ContentStoreCommandType"

    const/4 v10, 0x6

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v9, "ContentStoreContentTypeParam"

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->ordinal()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string v9, "ContentStoreContentExtrasType"

    invoke-virtual {p2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ordinal()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    iput-object p3, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mGetItemListListener:Lcom/htc/laputa/engine/util/CmdListener;

    .line 209
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v6, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v9, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    invoke-virtual {v9, v5, v6}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v2

    .line 211
    .local v2, errCode:I
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 212
    .local v1, dummy:Landroid/os/Bundle;
    const-string v9, "2"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 214
    .local v7, secondList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mExtrasItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 215
    if-nez v6, :cond_1

    .line 216
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v10, "get null retList"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mGetItemListListener:Lcom/htc/laputa/engine/util/CmdListener;

    invoke-interface {v9, v2, v8}, Lcom/htc/laputa/engine/util/CmdListener;->notifyComplete(II)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 222
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v4, Lcom/htc/laputa/engine/util/ContentExtrasItem;

    invoke-direct {v4, v0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;-><init>(Landroid/os/Bundle;)V

    .line 223
    .local v4, item:Lcom/htc/laputa/engine/util/ContentExtrasItem;
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mExtrasItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v4           #item:Lcom/htc/laputa/engine/util/ContentExtrasItem;
    :cond_2
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mGetItemListListener:Lcom/htc/laputa/engine/util/CmdListener;

    invoke-interface {v9, v2, v8}, Lcom/htc/laputa/engine/util/CmdListener;->notifyComplete(II)V

    .line 261
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public getLicenseItemList(Lcom/htc/laputa/engine/util/CmdListener;)Z
    .locals 11
    .parameter "cmdListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 158
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v10, "getItemList()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-nez p1, :cond_0

    .line 160
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v10, "openCatalog without listener"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return v8

    .line 164
    :cond_0
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mLicenseItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 166
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v5, param:Landroid/os/Bundle;
    const-string v9, "ContentStoreCommandType"

    const/4 v10, 0x7

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string v9, "ContentStoreContentTypeParam"

    sget-object v10, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->ELicenseAll:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    invoke-virtual {v10}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->ordinal()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v9, "ContentStoreContentExtrasType"

    sget-object v10, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EAll:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    invoke-virtual {v10}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ordinal()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v6, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v9, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    invoke-virtual {v9, v5, v6}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v2

    .line 174
    .local v2, errCode:I
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 175
    .local v1, dummy:Landroid/os/Bundle;
    const-string v9, "2"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 177
    .local v7, secondList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mLicenseItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 178
    if-nez v6, :cond_1

    .line 179
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v10, "get null retList"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {p1, v2, v8}, Lcom/htc/laputa/engine/util/CmdListener;->notifyComplete(II)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 185
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v4, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    invoke-direct {v4, v0}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;-><init>(Landroid/os/Bundle;)V

    .line 186
    .local v4, item:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;
    iget-object v9, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mLicenseItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v4           #item:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;
    :cond_2
    invoke-interface {p1, v2, v8}, Lcom/htc/laputa/engine/util/CmdListener;->notifyComplete(II)V

    .line 191
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public getLicenseItemResult()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mLicenseItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getSoreItemById(JLcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 5
    .parameter "storeItemId"
    .parameter "listener"

    .prologue
    .line 504
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 505
    .local v1, param:Landroid/os/Bundle;
    const-string v3, "ContentStoreCommandType"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    const-string v3, "ContentStoreContentTypeParam"

    const/16 v4, 0xe

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    const-string v3, "ContentStoreItemId"

    invoke-virtual {v1, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 511
    :try_start_0
    new-instance v3, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v4, Lcom/htc/laputa/engine/util/ContentStoreCmd$9;

    invoke-direct {v4, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$9;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v3, v1, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v2

    .line 525
    .local v2, taskId:I
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdBundleListenerMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    .end local v2           #taskId:I
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 527
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getWebBasedPaymentUrl(JILjava/lang/String;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 5
    .parameter "storeItemId"
    .parameter "priceIndex"
    .parameter "paymentMethod"
    .parameter "listener"

    .prologue
    .line 470
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v1, param:Landroid/os/Bundle;
    const-string v3, "ContentStoreCommandType"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 472
    const-string v3, "ContentStoreContentTypeParam"

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    const-string v3, "ContentStoreItemId"

    invoke-virtual {v1, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 474
    const-string v3, "ContentStorePriceIndex"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 475
    const-string v3, "ContentStorePayMethod"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :try_start_0
    new-instance v3, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v4, Lcom/htc/laputa/engine/util/ContentStoreCmd$8;

    invoke-direct {v4, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$8;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v3, v1, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v2

    .line 492
    .local v2, taskId:I
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdBundleListenerMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v2           #taskId:I
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 494
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0
.end method

.method public getWebBasedPymentMethods(Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    .line 439
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 440
    .local v1, param:Landroid/os/Bundle;
    const-string v3, "ContentStoreCommandType"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    const-string v3, "ContentStoreContentTypeParam"

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    :try_start_0
    new-instance v3, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v4, Lcom/htc/laputa/engine/util/ContentStoreCmd$7;

    invoke-direct {v4, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$7;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v3, v1, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v2

    .line 458
    .local v2, taskId:I
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdBundleListenerMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v2           #taskId:I
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 460
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyEngineStoreAppStart()Z
    .locals 4

    .prologue
    .line 537
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 538
    .local v1, param:Landroid/os/Bundle;
    const-string v2, "ContentStoreCommandType"

    const/16 v3, 0x133

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 542
    :try_start_0
    new-instance v2, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v3, Lcom/htc/laputa/engine/util/ContentStoreCmd$10;

    invoke-direct {v3, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$10;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v2, v1, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 550
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 553
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openCatalog(Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;Lcom/htc/laputa/engine/util/CmdListener;)Z
    .locals 2
    .parameter "catalogId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v1, "openCatalog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-nez p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v1, "openCatalog without listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCatalogItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->openCatalog(Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;Lcom/htc/laputa/engine/util/CmdListener;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public openCatalog(Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;Lcom/htc/laputa/engine/util/CmdListener;Ljava/util/List;)Z
    .locals 5
    .parameter "catalogId"
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;",
            "Lcom/htc/laputa/engine/util/CmdListener;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/laputa/engine/util/ContentStoreItem;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .local p3, catalogItemList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/laputa/engine/util/ContentStoreItem;>;"
    const/4 v1, 0x1

    .line 103
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v3, "openCatalog with catalogItemList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez p2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v2, "openCatalog without listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    .line 153
    :goto_0
    return v1

    .line 109
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, param:Landroid/os/Bundle;
    const-string v2, "ContentStoreCommandType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string v2, "ContentStoreContentTypeParam"

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCatalog("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TCatalogType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v2, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v3, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;

    invoke-direct {v3, p0, p3}, Lcom/htc/laputa/engine/util/ContentStoreCmd$1;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;Ljava/util/List;)V

    invoke-virtual {v2, v0, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v2

    iput v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mActionTaskId:I

    .line 151
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdListenerMap:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mActionTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public openVoucherCodeCatalog(Ljava/lang/String;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 5
    .parameter "voucherCode"
    .parameter "listener"

    .prologue
    .line 317
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v1, param:Landroid/os/Bundle;
    const-string v3, "ContentStoreCommandType"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    const-string v3, "ContentStoreContentTypeParam"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    const-string v3, "voucher"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :try_start_0
    new-instance v3, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v4, Lcom/htc/laputa/engine/util/ContentStoreCmd$3;

    invoke-direct {v4, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$3;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v3, v1, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v2

    .line 329
    .local v2, taskId:I
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdBundleListenerMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v2           #taskId:I
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerContentStoreCallback(Lcom/htc/laputa/engine/aidl/IContentStoreCallback;)Z
    .locals 5
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 577
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 578
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 580
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 581
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 586
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->registerContentStoreCallback(Lcom/htc/laputa/engine/aidl/IContentStoreCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    const/4 v2, 0x1

    goto :goto_0

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public runStoreCommand(I)Landroid/os/Bundle;
    .locals 2
    .parameter "actionType"

    .prologue
    .line 799
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 800
    .local v0, params:Landroid/os/Bundle;
    invoke-virtual {p0, p1, v0}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->runStoreCommand(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public runStoreCommand(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .parameter "actionType"
    .parameter "params"

    .prologue
    .line 805
    const-string v6, "ContentStoreCommandType"

    invoke-virtual {p2, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v3, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v6, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    invoke-virtual {v6, p2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v5

    .line 810
    .local v5, taskId:I
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 811
    .local v0, dummy:Landroid/os/Bundle;
    const-string v6, "2"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 812
    .local v4, secondList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v0           #dummy:Landroid/os/Bundle;
    .end local v3           #retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v4           #secondList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v5           #taskId:I
    :goto_0
    return-object v2

    .line 827
    :catch_0
    move-exception v1

    .line 828
    .local v1, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v1}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    .line 829
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public runStoreCommandA(ILandroid/os/Bundle;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 4
    .parameter "actionType"
    .parameter "params"
    .parameter "listener"

    .prologue
    .line 840
    const-string v2, "ContentStoreCommandType"

    const/4 v3, 0x3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 841
    const-string v2, "ContentStoreContentTypeParam"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 844
    :try_start_0
    new-instance v2, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v3, Lcom/htc/laputa/engine/util/ContentStoreCmd$15;

    invoke-direct {v3, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$15;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v2, p2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v1

    .line 850
    .local v1, taskId:I
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdBundleListenerMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v1           #taskId:I
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 851
    :catch_0
    move-exception v0

    .line 853
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0
.end method

.method public runStoreCommandA(ILcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 2
    .parameter "actionType"
    .parameter "listener"

    .prologue
    .line 834
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 835
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->runStoreCommandA(ILandroid/os/Bundle;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z

    move-result v1

    return v1
.end method

.method public searchCountryItem(Ljava/lang/String;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 5
    .parameter "countryCode"
    .parameter "listener"

    .prologue
    const/4 v4, 0x3

    .line 339
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v1, param:Landroid/os/Bundle;
    const-string v3, "ContentStoreCommandType"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    const-string v3, "ContentStoreContentTypeParam"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    const-string v3, "country"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :try_start_0
    new-instance v3, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v4, Lcom/htc/laputa/engine/util/ContentStoreCmd$4;

    invoke-direct {v4, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$4;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v3, v1, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v2

    .line 351
    .local v2, taskId:I
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdBundleListenerMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v2           #taskId:I
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 352
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendVoucherCode(Ljava/lang/String;Lcom/htc/laputa/engine/util/CmdListener;)I
    .locals 4
    .parameter "voucherCode"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v3, "sendVoucherCode()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-nez p2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;

    const-string v3, "openCatalog without listener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v1, 0x0

    .line 313
    :cond_0
    :goto_0
    return v1

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mExtrasItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 272
    iput-object p2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSendVoucherCodeListener:Lcom/htc/laputa/engine/util/CmdListener;

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, param:Landroid/os/Bundle;
    const-string v2, "ContentStoreCommandType"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v2, "ContentStoreContentTypeParam"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v2, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v3, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;

    invoke-direct {v3, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v2, v0, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v1

    .line 308
    .local v1, taskId:I
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSendVoucherCodeListener:Lcom/htc/laputa/engine/util/CmdListener;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdListenerMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public syncLicenseFromServer(Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    .line 361
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v1, param:Landroid/os/Bundle;
    const-string v3, "ContentStoreCommandType"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    const-string v3, "ContentStoreContentTypeParam"

    const/4 v4, 0x6

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    :try_start_0
    new-instance v3, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v4, Lcom/htc/laputa/engine/util/ContentStoreCmd$5;

    invoke-direct {v4, p0}, Lcom/htc/laputa/engine/util/ContentStoreCmd$5;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    invoke-virtual {v3, v1, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v2

    .line 373
    .local v2, taskId:I
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdBundleListenerMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v2           #taskId:I
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 374
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0
.end method

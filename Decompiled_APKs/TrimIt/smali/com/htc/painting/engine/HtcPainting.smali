.class Lcom/htc/painting/engine/HtcPainting;
.super Ljava/lang/Object;
.source "HtcPainting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;
    }
.end annotation


# static fields
.field private static final INVALIDATE_ID:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "HtcPainting"

.field private static final sLock:Ljava/lang/Object; = null

.field private static final sReferenceKeyOffset:I = 0x81


# instance fields
.field private isRecordUndo:Z

.field private mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

.field private final mCacheGroupKey:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCacheGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/painting/engine/StrokeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnable:Z

.field private mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

.field private mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

.field private mLoadWorker:Landroid/os/HandlerThread;

.field mPen:Lcom/htc/painting/tool/pen/Pen;

.field private final mReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReqGroupData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/painting/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/painting/engine/ViewPort;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRequestedGroupIds:[I

.field private mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

.field private mSaveWorker:Landroid/os/HandlerThread;

.field private final mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

.field private mSerializeRunnable:Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

.field protected mStrokeListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

.field private final mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->mIsEnable:Z

    .line 47
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 72
    new-instance v0, Lcom/htc/painting/engine/undo/UndoManager;

    invoke-direct {v0}, Lcom/htc/painting/engine/undo/UndoManager;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    .line 74
    new-instance v0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;-><init>(Lcom/htc/painting/engine/HtcPainting;Lcom/htc/painting/engine/HtcPainting$1;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeRunnable:Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    .line 75
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 76
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    .line 78
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    .line 79
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    .line 80
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 81
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 82
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mRequestedGroupIds:[I

    .line 88
    new-instance v0, Lcom/htc/painting/engine/HtcPainting$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPainting$1;-><init>(Lcom/htc/painting/engine/HtcPainting;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    .line 798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->isRecordUndo:Z

    .line 799
    new-instance v0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    invoke-direct {v0}, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    .line 200
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    .line 201
    return-void
.end method

.method constructor <init>(Lcom/htc/painting/engine/AbsSerializeDAO;)V
    .locals 3
    .parameter "serializeDAO"

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->mIsEnable:Z

    .line 47
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 72
    new-instance v0, Lcom/htc/painting/engine/undo/UndoManager;

    invoke-direct {v0}, Lcom/htc/painting/engine/undo/UndoManager;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    .line 74
    new-instance v0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;-><init>(Lcom/htc/painting/engine/HtcPainting;Lcom/htc/painting/engine/HtcPainting$1;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeRunnable:Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    .line 75
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 76
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    .line 78
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    .line 79
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    .line 80
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 81
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 82
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mRequestedGroupIds:[I

    .line 88
    new-instance v0, Lcom/htc/painting/engine/HtcPainting$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPainting$1;-><init>(Lcom/htc/painting/engine/HtcPainting;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    .line 798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->isRecordUndo:Z

    .line 799
    new-instance v0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    invoke-direct {v0}, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strokeGroupIds == null || serializeDAO == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    .line 191
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeRunnable:Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    const-string v2, "SerializeThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPainting;->initCore()V

    .line 195
    return-void
.end method

.method static synthetic access$100(Lcom/htc/painting/engine/HtcPainting;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/painting/engine/HtcPainting;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/painting/engine/HtcPainting;)Lcom/htc/painting/engine/AbsSerializeDAO;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/painting/engine/HtcPainting;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/painting/engine/HtcPainting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPainting;->saveCachedGroups()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/painting/engine/HtcPainting;)Lcom/htc/painting/engine/RequestHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/painting/engine/HtcPainting;Lcom/htc/painting/engine/RequestHandler;)Lcom/htc/painting/engine/RequestHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    return-object p1
.end method

.method static synthetic access$802(Lcom/htc/painting/engine/HtcPainting;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    return-object p1
.end method

.method private addStrokeGroup(ILcom/htc/painting/engine/StrokeGroup;)Z
    .locals 3
    .parameter "strokeGroupId"
    .parameter "group"

    .prologue
    .line 544
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 546
    .local v0, wkSerial:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    monitor-exit v2

    .line 549
    const/4 v1, 0x1

    return v1

    .line 548
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private convertIdToReferenceKey(I)Ljava/lang/Integer;
    .locals 2
    .parameter "groupId"

    .prologue
    .line 1040
    new-instance v0, Ljava/lang/Integer;

    add-int/lit16 v1, p1, 0x81

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method private initCore()V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Load group worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    .line 278
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Save group worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    .line 279
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 280
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 281
    new-instance v0, Lcom/htc/painting/engine/RequestHandler;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/painting/engine/RequestHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 282
    new-instance v0, Lcom/htc/painting/engine/RequestHandler;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/painting/engine/RequestHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 284
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 288
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/undo/UndoManager;->setActionListener(Lcom/htc/painting/engine/undo/UndoManager$onActionListener;)V

    .line 289
    return-void
.end method

.method private loadStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;)Lcom/htc/painting/engine/StrokeGroup;
    .locals 5
    .parameter "groupId"
    .parameter "viewport"

    .prologue
    .line 635
    if-gez p1, :cond_0

    .line 636
    const-string v2, "HtcPainting"

    const-string v3, "requestStrokeGroupFromSerialDAO(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/4 v0, 0x0

    .line 647
    :goto_0
    return-object v0

    .line 639
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    invoke-virtual {v2, p1}, Lcom/htc/painting/engine/AbsSerializeDAO;->load(I)[B

    move-result-object v1

    .line 640
    .local v1, serializedByteArray:[B
    new-instance v0, Lcom/htc/painting/engine/StrokeGroup;

    invoke-direct {v0, p1, p2}, Lcom/htc/painting/engine/StrokeGroup;-><init>(ILcom/htc/painting/engine/ViewPort;)V

    .line 641
    .local v0, result:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v1, :cond_1

    .line 642
    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/StrokeGroup;->deserialize([B)Lcom/htc/painting/engine/StrokeGroup;

    goto :goto_0

    .line 644
    :cond_1
    const-string v2, "HtcPainting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestStrokeGroupFromSerialDAO() cannot load group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from serializeDAO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private raiseStrokeBeginEvent(ILcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/PointF;)V
    .locals 3
    .parameter "groupId"
    .parameter "s"
    .parameter "pos"

    .prologue
    .line 1002
    if-nez p2, :cond_1

    .line 1009
    :cond_0
    return-void

    .line 1004
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    .line 1006
    .local v1, lis:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
    new-instance v2, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;

    invoke-direct {v2, p2, p1, p3}, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;-><init>(Lcom/htc/painting/engine/stroke/Stroke;ILandroid/graphics/PointF;)V

    invoke-interface {v1, v2}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;->onStrokeBegin(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V

    goto :goto_0
.end method

.method private raiseStrokeEndEvent(ILcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V
    .locals 9
    .parameter "groupId"
    .parameter "s"
    .parameter "state"

    .prologue
    .line 1012
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 1025
    :cond_0
    return-void

    .line 1014
    :cond_1
    const/4 v1, 0x0

    .line 1015
    .local v1, endPos:Lcom/htc/painting/engine/MotionPoint;
    const/4 v5, 0x0

    .line 1017
    .local v5, pos:Landroid/graphics/PointF;
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p2}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/painting/engine/MotionPoint;

    move-object v1, v0

    .line 1018
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #pos:Landroid/graphics/PointF;
    .local v6, pos:Landroid/graphics/PointF;
    move-object v5, v6

    .line 1020
    .end local v6           #pos:Landroid/graphics/PointF;
    .restart local v5       #pos:Landroid/graphics/PointF;
    :goto_0
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 1021
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    .line 1022
    .local v4, lis:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
    new-instance v7, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;

    invoke-direct {v7, p2, p1, v5, p3}, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;-><init>(Lcom/htc/painting/engine/stroke/Stroke;ILandroid/graphics/PointF;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    invoke-interface {v4, v7}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;->onStrokeEnd(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V

    goto :goto_1

    .line 1019
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #lis:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private saveCachedGroups()V
    .locals 7

    .prologue
    .line 239
    sget-object v3, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/StrokeGroup;

    .line 241
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->isModified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/htc/painting/engine/StrokeGroup;->serialize(ZZ)[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/painting/engine/AbsSerializeDAO;->save(I[B)V

    goto :goto_0

    .line 250
    .end local v0           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 247
    .restart local v0       #group:Lcom/htc/painting/engine/StrokeGroup;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "HtcPainting"

    const-string v4, "In destroy(), strokeGroup == null"

    invoke-static {v2, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v0           #group:Lcom/htc/painting/engine/StrokeGroup;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    return-void
.end method

.method private setStrokeGroupRotation(Lcom/htc/painting/engine/StrokeGroup;I)Z
    .locals 2
    .parameter "group"
    .parameter "degree"

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 533
    const-string v0, "HtcPainting"

    const-string v1, "setStrokeGroupTransformMatrix(null,degree)"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    .line 536
    :cond_0
    invoke-virtual {p1, p2}, Lcom/htc/painting/engine/StrokeGroup;->setRotation(I)V

    .line 537
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateReqSGData([I[Lcom/htc/painting/engine/ViewPort;)V
    .locals 6
    .parameter "groupIds"
    .parameter "viewports"

    .prologue
    .line 1054
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1056
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting;->mRequestedGroupIds:[I

    .line 1059
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_3

    .line 1060
    aget v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1061
    .local v2, groupId:Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 1062
    .local v4, referenceKey:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 1065
    .local v0, cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1066
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1067
    .restart local v0       #cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #referenceKey:Ljava/lang/Integer;
    check-cast v4, Ljava/lang/Integer;

    .line 1071
    .restart local v4       #referenceKey:Ljava/lang/Integer;
    :cond_0
    if-eqz v0, :cond_1

    if-nez v4, :cond_2

    .line 1072
    :cond_1
    aget v5, p1, v3

    invoke-direct {p0, v5}, Lcom/htc/painting/engine/HtcPainting;->convertIdToReferenceKey(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1073
    invoke-direct {p0, v4}, Lcom/htc/painting/engine/HtcPainting;->wrapByWeakRef(Ljava/lang/Integer;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 1075
    :cond_2
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    new-instance v1, Lcom/htc/painting/util/Pair;

    aget-object v5, p2, v3

    invoke-direct {v1, v4, v5}, Lcom/htc/painting/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1079
    .local v1, entry:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<Ljava/lang/Integer;Lcom/htc/painting/engine/ViewPort;>;"
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1083
    .end local v0           #cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    .end local v1           #entry:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<Ljava/lang/Integer;Lcom/htc/painting/engine/ViewPort;>;"
    .end local v2           #groupId:Ljava/lang/Integer;
    .end local v4           #referenceKey:Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method private updateStrokeProperties(Lcom/htc/painting/engine/StrokeGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {p1, v0}, Lcom/htc/painting/engine/StrokeGroup;->setPen(Lcom/htc/painting/tool/pen/Pen;)V

    .line 882
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {p1, v0}, Lcom/htc/painting/engine/StrokeGroup;->setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 883
    return-void
.end method

.method private wrapByWeakRef(Ljava/lang/Integer;)Ljava/lang/ref/WeakReference;
    .locals 2
    .parameter "intVal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method


# virtual methods
.method PaintingEnd(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;Landroid/graphics/RectF;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 2
    .parameter "canvas"
    .parameter "group"
    .parameter "dirtyRect"
    .parameter "state"

    .prologue
    .line 870
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeGroup;->getPaintingStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v0

    .line 871
    .local v0, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 872
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 873
    invoke-virtual {p2, p1, p3}, Lcom/htc/painting/engine/StrokeGroup;->strokeEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 874
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 875
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v1

    invoke-direct {p0, v1, v0, p4}, Lcom/htc/painting/engine/HtcPainting;->raiseStrokeEndEvent(ILcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 878
    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :goto_0
    return-object v0

    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method PaintingMove(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 10
    .parameter "canvas"
    .parameter "group"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "dirtyRect"

    .prologue
    .line 851
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v9

    .line 852
    .local v9, viewport:Lcom/htc/painting/engine/ViewPort;
    const/4 v0, 0x2

    new-array v8, v0, [F

    const/4 v0, 0x0

    aput p3, v8, v0

    const/4 v0, 0x1

    aput p4, v8, v0

    .line 853
    .local v8, temp:[F
    invoke-virtual {v9}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/htc/painting/engine/HtcPaintingUtil;->getInvertedPoint([FLandroid/graphics/Matrix;)[F

    move-result-object v8

    .line 855
    const/4 v0, 0x0

    aget p3, v8, v0

    .line 856
    const/4 v0, 0x1

    aget p4, v8, v0

    .line 859
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 860
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 861
    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/StrokeGroup;->strokeMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    .line 863
    .local v7, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 866
    .end local v7           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method PaintingStart(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 10
    .parameter "canvas"
    .parameter "group"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "dirtyRect"

    .prologue
    .line 812
    if-eqz p2, :cond_1

    .line 822
    invoke-direct {p0, p2}, Lcom/htc/painting/engine/HtcPainting;->updateStrokeProperties(Lcom/htc/painting/engine/StrokeGroup;)V

    .line 825
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v9

    .line 826
    .local v9, viewport:Lcom/htc/painting/engine/ViewPort;
    const/4 v0, 0x2

    new-array v8, v0, [F

    const/4 v0, 0x0

    aput p3, v8, v0

    const/4 v0, 0x1

    aput p4, v8, v0

    .line 827
    .local v8, temp:[F
    invoke-virtual {v9}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/htc/painting/engine/HtcPaintingUtil;->getInvertedPoint([FLandroid/graphics/Matrix;)[F

    move-result-object v8

    .line 829
    const/4 v0, 0x0

    aget p3, v8, v0

    .line 830
    const/4 v0, 0x1

    aget p4, v8, v0

    .line 832
    if-eqz p1, :cond_1

    .line 833
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 834
    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/StrokeGroup;->strokeStart(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    .line 836
    .local v7, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 837
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->isRecordUndo:Z

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    new-instance v1, Lcom/htc/painting/engine/undo/StrokeAddAction;

    invoke-direct {v1, p2, v7}, Lcom/htc/painting/engine/undo/StrokeAddAction;-><init>(Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/stroke/Stroke;)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->addEdit(Lcom/htc/painting/engine/undo/UndoableEdit;)Z

    .line 840
    :cond_0
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, v7, v1}, Lcom/htc/painting/engine/HtcPainting;->raiseStrokeBeginEvent(ILcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/PointF;)V

    .line 845
    .end local v7           #s:Lcom/htc/painting/engine/stroke/Stroke;
    .end local v8           #temp:[F
    .end local v9           #viewport:Lcom/htc/painting/engine/ViewPort;
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public SaveGroups([IZ)V
    .locals 7
    .parameter "ids"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 969
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v3, v0, v2

    .line 970
    .local v3, index:I
    invoke-virtual {p0, v3}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 971
    .local v1, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v1, :cond_0

    .line 972
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, p2}, Lcom/htc/painting/engine/StrokeGroup;->serialize(ZZ)[B

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/htc/painting/engine/AbsSerializeDAO;->save(I[B)V

    .line 969
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 975
    .end local v1           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v3           #index:I
    :cond_1
    return-void
.end method

.method public SaveGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V
    .locals 7
    .parameter "ids"
    .parameter "key"
    .parameter "callback"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 979
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    new-instance v0, Lcom/htc/painting/engine/Request$SaveStrokeGroupRequest;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/painting/engine/Request$SaveStrokeGroupRequest;-><init>(Lcom/htc/painting/engine/HtcPainting;[IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V

    invoke-virtual {v6, v0}, Lcom/htc/painting/engine/RequestHandler;->putRequest(Lcom/htc/painting/engine/Request;)V

    .line 981
    return-void
.end method

.method canRedo()Z
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->canRedo()Z

    move-result v0

    return v0
.end method

.method canUndo()Z
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->canUndo()Z

    move-result v0

    return v0
.end method

.method clearAllStrokeGroups()V
    .locals 5

    .prologue
    .line 720
    sget-object v3, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 722
    :try_start_0
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/StrokeGroup;

    .line 732
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->clearStrokes()V

    .line 734
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/painting/engine/AbsSerializeDAO;->delete(I)V

    goto :goto_0

    .line 738
    .end local v0           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPainting;->clearUndoManager()V

    .line 741
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    invoke-virtual {v2}, Lcom/htc/painting/engine/AbsSerializeDAO;->deleteAll()V

    .line 742
    return-void
.end method

.method clearStrokeGroup(I)V
    .locals 7
    .parameter "groupId"

    .prologue
    .line 745
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 746
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 747
    .local v1, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v1, :cond_2

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v0, effectiveStrokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/Stroke;

    .line 750
    .local v3, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 751
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 754
    .end local v3           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    new-instance v5, Lcom/htc/painting/engine/undo/StrokesClearAction;

    invoke-direct {v5, v1, v0}, Lcom/htc/painting/engine/undo/StrokesClearAction;-><init>(Lcom/htc/painting/engine/StrokeGroup;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/htc/painting/engine/undo/UndoManager;->addEdit(Lcom/htc/painting/engine/undo/UndoableEdit;)Z

    .line 755
    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeGroup;->clearStrokes()V

    .line 756
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/htc/painting/engine/StrokeGroup;->serialize(ZZ)[B

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/htc/painting/engine/AbsSerializeDAO;->save(I[B)V

    .line 759
    .end local v0           #effectiveStrokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    .end local v1           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method clearUndoManager()V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->clearUndoHistory()V

    .line 763
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->clearRedoHistory()V

    .line 764
    return-void
.end method

.method destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    new-instance v1, Lcom/htc/painting/engine/HtcPainting$2;

    invoke-direct {v1, p0}, Lcom/htc/painting/engine/HtcPainting$2;-><init>(Lcom/htc/painting/engine/HtcPainting;)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/RequestHandler;->putRequest(Lcom/htc/painting/engine/Request;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    invoke-virtual {v0}, Lcom/htc/painting/engine/RequestHandler;->clearRequest()V

    .line 219
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    invoke-virtual {v0}, Lcom/htc/painting/engine/RequestHandler;->postQuit()V

    .line 220
    iput-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    .line 221
    iput-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeRunnable:Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->stop()V

    .line 227
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 229
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    iput-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0, v2}, Lcom/htc/painting/engine/undo/UndoManager;->setActionListener(Lcom/htc/painting/engine/undo/UndoManager$onActionListener;)V

    .line 236
    :cond_3
    return-void
.end method

.method draw(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V
    .locals 6
    .parameter "canvas"
    .parameter "groupId"
    .parameter "strokeId"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "viewport"

    .prologue
    .line 464
    invoke-virtual {p0, p2}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 465
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_1

    .line 466
    const/4 v5, 0x0

    .line 467
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p6, :cond_2

    .line 468
    invoke-virtual {p6}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 472
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 473
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    .line 474
    invoke-virtual/range {v0 .. v5}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;IIILandroid/graphics/Matrix;)V

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 478
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_1
    return-void

    .line 469
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_2
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    goto :goto_0
.end method

.method drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[ILcom/htc/painting/engine/InterruptRef;)V
    .locals 2
    .parameter "data"
    .parameter "groupIds"
    .parameter "interruptRef"

    .prologue
    .line 298
    array-length v1, p2

    new-array v0, v1, [Lcom/htc/painting/engine/ViewPort;

    .line 299
    .local v0, emptyPorts:[Lcom/htc/painting/engine/ViewPort;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[I[Lcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/InterruptRef;)V

    .line 300
    return-void
.end method

.method drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[I[Lcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/InterruptRef;)V
    .locals 26
    .parameter "data"
    .parameter "groupIds"
    .parameter "viewports"
    .parameter "interruptRef"

    .prologue
    .line 309
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move-object/from16 v0, p2

    array-length v4, v0

    move-object/from16 v0, p3

    array-length v5, v0

    if-eq v4, v5, :cond_1

    .line 311
    :cond_0
    const-string v4, "HtcPainting"

    const-string v5, "draw Error: invalid groupIds or viewports"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_0
    return-void

    .line 316
    :cond_1
    move-object/from16 v0, p3

    array-length v4, v0

    new-array v10, v4, [Lcom/htc/painting/engine/StrokeGroup;

    .line 317
    .local v10, groups:[Lcom/htc/painting/engine/StrokeGroup;
    move-object/from16 v0, p3

    array-length v4, v0

    new-array v13, v4, [Landroid/graphics/Matrix;

    .line 318
    .local v13, matrices:[Landroid/graphics/Matrix;
    const-string v4, "drawOnCacheBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawOnCacheBitmap start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p3

    array-length v4, v0

    if-ge v11, v4, :cond_7

    .line 324
    aget-object v4, p3, v11

    if-eqz v4, :cond_4

    .line 325
    aget-object v4, p3, v11

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_2

    aget-object v4, p3, v11

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    const-string v4, "drawOnCacheBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "given viewport\'s rect is empty, ignore strokegroup, id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p2, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 331
    :cond_2
    aget-object v4, p3, v11

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    aput-object v4, v13, v11

    .line 352
    :cond_3
    :goto_3
    aget v4, p2, v11

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(IZ)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v4

    aput-object v4, v10, v11

    .line 366
    aget-object v4, v10, v11

    aget-object v5, p3, v11

    aget-object v6, v13, v11

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v6}, Lcom/htc/painting/engine/HtcPaintingUtil;->recordReference(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 333
    :cond_4
    aget v4, p2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v22

    .line 334
    .local v22, vp:Lcom/htc/painting/engine/ViewPort;
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 335
    const-string v4, "drawOnCacheBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group viewport\'s rect is empty, ignore strokegroup, id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p2, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 340
    :cond_5
    aget-object v4, v10, v11

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->findRecord(Lcom/htc/painting/engine/StrokeGroup;)Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    move-result-object v14

    .line 341
    .local v14, record:Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    if-eqz v14, :cond_6

    .line 342
    invoke-virtual {v14}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    aput-object v4, v13, v11

    .line 343
    const-string v4, "drawOnCacheBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p2, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " matrix: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v13, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 345
    :cond_6
    const-string v4, "drawOnCacheBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CRAP: CANNOT FIND RECORD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p2, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " all records: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    if-eqz v22, :cond_3

    .line 348
    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    aput-object v4, v13, v11

    goto/16 :goto_3

    .line 374
    .end local v14           #record:Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    .end local v22           #vp:Lcom/htc/painting/engine/ViewPort;
    :cond_7
    const/16 v21, 0x0

    .line 375
    .local v21, totalStrokeCount:I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v17, sortingGroups:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/StrokeGroup;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v18, sortingStrokes:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v9, groupMatrices:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Matrix;>;"
    const/4 v11, 0x0

    :goto_4
    array-length v4, v10

    if-ge v11, v4, :cond_9

    .line 379
    aget-object v8, v10, v11

    .line 380
    .local v8, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v8, :cond_8

    .line 381
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 382
    .local v20, strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    add-int v21, v21, v4

    .line 383
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    aget-object v4, v13, v11

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v20           #strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 398
    .end local v8           #group:Lcom/htc/painting/engine/StrokeGroup;
    :cond_9
    monitor-enter v18

    .line 399
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v11, v0, :cond_f

    .line 401
    if-eqz p4, :cond_a

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/htc/painting/engine/InterruptRef;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 402
    new-instance v4, Lcom/htc/painting/engine/exception/PaintingException;

    const-string v5, " Painting interrupted!"

    invoke-direct {v4, v5}, Lcom/htc/painting/engine/exception/PaintingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 435
    :catchall_0
    move-exception v4

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 405
    :cond_a
    const/4 v15, 0x0

    .line 406
    .local v15, s:Lcom/htc/painting/engine/stroke/Stroke;
    const/16 v23, -0x1

    .line 407
    .local v23, zOrderIndex:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_6
    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_d

    .line 408
    if-nez v15, :cond_c

    const/4 v4, -0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_c

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 410
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #s:Lcom/htc/painting/engine/stroke/Stroke;
    check-cast v15, Lcom/htc/painting/engine/stroke/Stroke;

    .line 411
    .restart local v15       #s:Lcom/htc/painting/engine/stroke/Stroke;
    move/from16 v23, v12

    .line 407
    :cond_b
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 413
    :cond_c
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 414
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/painting/engine/stroke/Stroke;

    .line 415
    .local v16, s2:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/stroke/Stroke;->getCreationTime()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/htc/painting/engine/stroke/Stroke;->getCreationTime()J

    move-result-wide v24

    cmp-long v4, v4, v24

    if-gez v4, :cond_b

    .line 416
    move-object/from16 v15, v16

    .line 417
    move/from16 v23, v12

    goto :goto_7

    .line 424
    .end local v16           #s2:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_d
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/StrokeGroup;

    .line 425
    .local v2, strokeGroup:Lcom/htc/painting/engine/StrokeGroup;
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/painting/engine/stroke/Stroke;

    .line 426
    .local v19, stroke:Lcom/htc/painting/engine/stroke/Stroke;
    move/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Matrix;

    .line 427
    .local v7, m:Landroid/graphics/Matrix;
    if-eqz v2, :cond_e

    if-eqz v19, :cond_e

    if-eqz v7, :cond_e

    .line 428
    invoke-interface/range {p1 .. p1}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    .line 429
    .local v3, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 430
    invoke-virtual/range {v19 .. v19}, Lcom/htc/painting/engine/stroke/Stroke;->getId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;IIILandroid/graphics/Matrix;)V

    .line 432
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 399
    .end local v3           #canvas:Landroid/graphics/Canvas;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 435
    .end local v2           #strokeGroup:Lcom/htc/painting/engine/StrokeGroup;
    .end local v7           #m:Landroid/graphics/Matrix;
    .end local v12           #j:I
    .end local v15           #s:Lcom/htc/painting/engine/stroke/Stroke;
    .end local v19           #stroke:Lcom/htc/painting/engine/stroke/Stroke;
    .end local v23           #zOrderIndex:I
    :cond_f
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public enableEraseMode(Z)V
    .locals 2
    .parameter "isEraser"

    .prologue
    .line 914
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 915
    .local v0, p:Lcom/htc/painting/engine/StrokeProperties;
    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 916
    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 917
    return-void
.end method

.method public endRecordUndo()V
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    .line 808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->isRecordUndo:Z

    .line 809
    return-void
.end method

.method public getActionCount()I
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->getActionCount()I

    move-result v0

    return v0
.end method

.method getBoundingRectF(I)Landroid/graphics/RectF;
    .locals 2
    .parameter "groupId"

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 768
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getBoundingRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 771
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastRedoAction()Lcom/htc/painting/engine/undo/UndoableEdit;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->getLastRedoAction()Lcom/htc/painting/engine/undo/UndoableEdit;

    move-result-object v0

    return-object v0
.end method

.method public getLastUndoAction()Lcom/htc/painting/engine/undo/UndoableEdit;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->getLastUndoAction()Lcom/htc/painting/engine/undo/UndoableEdit;

    move-result-object v0

    return-object v0
.end method

.method getRequestedStrokeGroupIds()[I
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mRequestedGroupIds:[I

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeGroup(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/painting/engine/StrokeGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;
    .locals 1
    .parameter "groupId"

    .prologue
    .line 684
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(IZ)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    return-object v0
.end method

.method getStrokeGroupCore(IZ)Lcom/htc/painting/engine/StrokeGroup;
    .locals 6
    .parameter "groupId"
    .parameter "forceInflate"

    .prologue
    const/4 v2, 0x0

    .line 690
    if-gez p1, :cond_1

    .line 691
    const-string v3, "HtcPainting"

    const-string v4, "getStrokeGroupCore(null)"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_0
    :goto_0
    return-object v2

    .line 696
    :cond_1
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/util/Pair;

    .line 697
    .local v1, entry:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<Ljava/lang/Integer;Lcom/htc/painting/engine/ViewPort;>;"
    if-nez v1, :cond_2

    .line 698
    const-string v3, "HtcPainting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStrokeGroupCore: trying to get a StrokeGroup that is no longer requested, skip operation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_2
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 703
    .local v0, cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/StrokeGroup;

    .line 704
    .local v2, group:Lcom/htc/painting/engine/StrokeGroup;
    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 705
    invoke-virtual {v1}, Lcom/htc/painting/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/ViewPort;

    invoke-direct {p0, p1, v3}, Lcom/htc/painting/engine/HtcPainting;->loadStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v2

    goto :goto_0
.end method

.method getStrokeGroupCount()I
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStrokeGroupMemorySize(I)J
    .locals 3
    .parameter "groupId"

    .prologue
    .line 1029
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 1030
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getStrokesMemorySize()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    return v0
.end method

.method public getUndoStepLimitation()I
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-static {}, Lcom/htc/painting/engine/undo/UndoManager;->getLimit()I

    move-result v0

    return v0
.end method

.method getViewPort(I)Lcom/htc/painting/engine/ViewPort;
    .locals 4
    .parameter "groupId"

    .prologue
    .line 791
    const/4 v1, 0x0

    .line 792
    .local v1, result:Lcom/htc/painting/engine/ViewPort;
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/util/Pair;

    .line 793
    .local v0, entry:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<Ljava/lang/Integer;Lcom/htc/painting/engine/ViewPort;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/painting/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Lcom/htc/painting/engine/ViewPort;
    check-cast v1, Lcom/htc/painting/engine/ViewPort;

    .line 795
    .restart local v1       #result:Lcom/htc/painting/engine/ViewPort;
    :cond_0
    return-object v1
.end method

.method isEnable()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->mIsEnable:Z

    return v0
.end method

.method public isEraseMode()Z
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v0

    return v0
.end method

.method isStrokeGroupClean(I)Z
    .locals 4
    .parameter "groupId"

    .prologue
    const/4 v1, 0x0

    .line 670
    if-gez p1, :cond_1

    .line 671
    const-string v2, "HtcPainting"

    const-string v3, "isStrokeGroupClean(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_0
    :goto_0
    return v1

    .line 674
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 675
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->isClean()Z

    move-result v1

    goto :goto_0
.end method

.method public isStrokeGroupModified(I)Z
    .locals 2
    .parameter "groupId"

    .prologue
    .line 1034
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 1035
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->isModified()Z

    move-result v1

    goto :goto_0
.end method

.method loadStrokeGroup(ILcom/htc/painting/engine/ViewPort;)Lcom/htc/painting/engine/StrokeGroup;
    .locals 4
    .parameter "groupId"
    .parameter "viewport"

    .prologue
    .line 617
    if-gez p1, :cond_1

    .line 618
    const-string v2, "HtcPainting"

    const-string v3, "requestStrokeGroup(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v1, 0x0

    .line 630
    :cond_0
    :goto_0
    return-object v1

    .line 623
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 625
    .local v0, cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/StrokeGroup;

    .line 626
    .local v1, result:Lcom/htc/painting/engine/StrokeGroup;
    if-nez v1, :cond_0

    .line 629
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 630
    goto :goto_0
.end method

.method redo()V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->redo()Z

    .line 948
    :cond_0
    return-void
.end method

.method removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1000
    :cond_0
    return-void
.end method

.method removeStrokeGroup(I)V
    .locals 4
    .parameter "groupId"

    .prologue
    .line 563
    if-gez p1, :cond_1

    .line 564
    const-string v0, "HtcPainting"

    const-string v1, "removeStrokeGroup(null)"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    sget-object v1, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/AbsSerializeDAO;->delete(I)V

    .line 571
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method removeStrokeGroups([I)V
    .locals 6
    .parameter "groupIds"

    .prologue
    .line 553
    if-nez p1, :cond_1

    .line 554
    const-string v4, "HtcPainting"

    const-string v5, "removeStrokeGroups(null)"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_0
    return-void

    .line 557
    :cond_1
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 558
    .local v1, groupId:I
    invoke-virtual {p0, v1}, Lcom/htc/painting/engine/HtcPainting;->removeStrokeGroup(I)V

    .line 557
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z
    .locals 7
    .parameter "groupIds"
    .parameter "viewports"

    .prologue
    .line 585
    const/4 v2, 0x0

    .line 586
    .local v2, result:[Z
    if-nez p1, :cond_0

    .line 587
    const-string v4, "HtcPainting"

    const-string v5, "requestStrokeGroups(null)"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 608
    .end local v2           #result:[Z
    .local v3, result:[Z
    :goto_0
    return-object v3

    .line 590
    .end local v3           #result:[Z
    .restart local v2       #result:[Z
    :cond_0
    array-length v4, p1

    new-array v2, v4, [Z

    .line 592
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->updateReqSGData([I[Lcom/htc/painting/engine/ViewPort;)V

    .line 593
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->setViewPorts([I[Lcom/htc/painting/engine/ViewPort;)Z

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    const-string v4, "HtcPainting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group count :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 599
    aget v4, p1, v1

    aget-object v5, p2, v1

    invoke-virtual {p0, v4, v5}, Lcom/htc/painting/engine/HtcPainting;->loadStrokeGroup(ILcom/htc/painting/engine/ViewPort;)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 600
    const-string v4, "HtcPainting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    if-eqz v0, :cond_1

    .line 602
    aget v4, p1, v1

    invoke-direct {p0, v4, v0}, Lcom/htc/painting/engine/HtcPainting;->addStrokeGroup(ILcom/htc/painting/engine/StrokeGroup;)Z

    move-result v4

    aput-boolean v4, v2, v1

    .line 597
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    :cond_1
    const/4 v4, 0x0

    aput-boolean v4, v2, v1

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 608
    .end local v2           #result:[Z
    .restart local v3       #result:[Z
    goto :goto_0
.end method

.method requestStrokeGroupsAsync([I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 7
    .parameter "groupIds"
    .parameter "viewports"
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 612
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    new-instance v0, Lcom/htc/painting/engine/Request$LoadStrokeGroupRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/painting/engine/Request$LoadStrokeGroupRequest;-><init>(Lcom/htc/painting/engine/HtcPainting;[I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V

    invoke-virtual {v6, v0}, Lcom/htc/painting/engine/RequestHandler;->putRequest(Lcom/htc/painting/engine/Request;)V

    .line 614
    return-void
.end method

.method public saveGroup(IZ)V
    .locals 3
    .parameter "id"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 961
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 962
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 963
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/htc/painting/engine/StrokeGroup;->serialize(ZZ)[B

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/htc/painting/engine/AbsSerializeDAO;->save(I[B)V

    .line 966
    :cond_0
    return-void
.end method

.method serialize(I)[B
    .locals 4
    .parameter "groupId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 261
    if-gez p1, :cond_1

    .line 263
    const-string v2, "HtcPainting"

    const-string v3, "serialize(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    :goto_0
    return-object v1

    .line 267
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 268
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 269
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/engine/StrokeGroup;->serialize(ZZ)[B

    move-result-object v1

    goto :goto_0
.end method

.method public set(Lcom/htc/painting/tool/pen/Pen;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 890
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 891
    return-void
.end method

.method setEnable(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 489
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPainting;->mIsEnable:Z

    .line 490
    return-void
.end method

.method setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 898
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 899
    .local v0, p:Lcom/htc/painting/engine/StrokeProperties;
    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    .line 900
    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 901
    return-void
.end method

.method setStrokeGroupEffective(IZ)Z
    .locals 4
    .parameter "groupId"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 502
    if-gez p1, :cond_1

    .line 504
    const-string v2, "HtcPainting"

    const-string v3, "setDrawerGroupEnable(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_0
    :goto_0
    return v1

    .line 507
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 508
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0, p2}, Lcom/htc/painting/engine/StrokeGroup;->setEffective(Z)V

    .line 510
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setStrokeGroupRotation(II)Z
    .locals 4
    .parameter "groupId"
    .parameter "degree"

    .prologue
    const/4 v1, 0x0

    .line 516
    if-gez p1, :cond_1

    .line 517
    const-string v2, "HtcPainting"

    const-string v3, "setStrokeGroupRotation(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_0
    :goto_0
    return v1

    .line 520
    :cond_1
    if-ltz p2, :cond_2

    const/16 v2, 0x168

    if-lt p2, v2, :cond_3

    .line 521
    :cond_2
    const-string v2, "HtcPainting"

    const-string v3, " degree must >= 0 or < 360"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 525
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0, v0, p2}, Lcom/htc/painting/engine/HtcPainting;->setStrokeGroupRotation(Lcom/htc/painting/engine/StrokeGroup;I)Z

    move-result v1

    goto :goto_0
.end method

.method public setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 924
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 925
    .local v0, newP:Lcom/htc/painting/engine/StrokeProperties;
    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 927
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 908
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 909
    .local v0, p:Lcom/htc/painting/engine/StrokeProperties;
    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 910
    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 911
    return-void
.end method

.method setViewPorts([I[Lcom/htc/painting/engine/ViewPort;)Z
    .locals 4
    .parameter "groupIds"
    .parameter "viewPorts"

    .prologue
    .line 779
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_1

    .line 780
    :cond_0
    const/4 v2, 0x0

    .line 787
    :goto_0
    return v2

    .line 781
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 782
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 783
    .local v1, s:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v1, :cond_2

    .line 784
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/StrokeGroup;->setViewPort(Lcom/htc/painting/engine/ViewPort;)V

    .line 781
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 787
    .end local v1           #s:Lcom/htc/painting/engine/StrokeGroup;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public startRecordUndo()V
    .locals 2

    .prologue
    .line 801
    new-instance v0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    invoke-direct {v0}, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->isRecordUndo:Z

    .line 803
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/undo/UndoManager;->addEdit(Lcom/htc/painting/engine/undo/UndoableEdit;)Z

    .line 804
    return-void
.end method

.method public transformStroke(ILandroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z
    .locals 2
    .parameter "groupId"
    .parameter "region"
    .parameter "transformMatrix"
    .parameter "mode"

    .prologue
    .line 1108
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 1127
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {v0, p2, p3, p4}, Lcom/htc/painting/engine/StrokeGroup;->transformStroke(Landroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z

    move-result v1

    .line 1130
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method undo()V
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->undo()Z

    .line 942
    :cond_0
    return-void
.end method

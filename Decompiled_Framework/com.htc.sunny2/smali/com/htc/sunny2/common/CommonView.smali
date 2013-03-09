.class public abstract Lcom/htc/sunny2/common/CommonView;
.super Lcom/htc/sunny2/GLView;
.source "CommonView.java"

# interfaces
.implements Lcom/htc/sunny2/GLView$SurfaceListener;
.implements Lcom/htc/sunny2/GLView$TouchListener;
.implements Lcom/htc/sunny2/RenderThread$EventListener;
.implements Lcom/htc/sunny2/IMediaList$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/CommonView$ItemEventListener;,
        Lcom/htc/sunny2/common/CommonView$OnItemClickListener;,
        Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;,
        Lcom/htc/sunny2/common/CommonView$ReLayout;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;",
            ">;"
        }
    .end annotation
.end field

.field protected mCamera:I

.field protected mContext:Landroid/content/Context;

.field protected mEnv:I

.field protected mGLViewHeight:I

.field protected mGLViewWidth:I

.field protected mItemEventListener:Lcom/htc/sunny2/common/CommonView$ItemEventListener;

.field protected mListItemCount:I

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;

.field protected mOnItemClickListener:Lcom/htc/sunny2/common/CommonView$OnItemClickListener;

.field private final mReLayout:Lcom/htc/sunny2/common/CommonView$ReLayout;

.field protected mRenderThread:Lcom/htc/sunny2/RenderThread;

.field protected mRootNode:I

.field protected mScene:I

.field protected mSunnyContext:Lcom/htc/sunny2/SunnyContext;

.field protected mSurfacePixelFormat:I

.field protected mThumbWorker:Lcom/htc/sunny2/RenderThreadPreparation;

.field protected mViewPort:I

.field private shouldCallOnDestroyIHT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/common/CommonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/GLView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/common/CommonView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    iput-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mOnItemClickListener:Lcom/htc/sunny2/common/CommonView$OnItemClickListener;

    iput-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mItemEventListener:Lcom/htc/sunny2/common/CommonView$ItemEventListener;

    iput v4, p0, Lcom/htc/sunny2/common/CommonView;->mSurfacePixelFormat:I

    new-instance v0, Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0}, Lcom/htc/sunny2/SunnyContext;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    iput-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iput-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mThumbWorker:Lcom/htc/sunny2/RenderThreadPreparation;

    iput-boolean v4, p0, Lcom/htc/sunny2/common/CommonView;->shouldCallOnDestroyIHT:Z

    new-instance v0, Lcom/htc/sunny2/common/CommonView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/common/CommonView$ReLayout;-><init>(Lcom/htc/sunny2/common/CommonView;)V

    iput-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mReLayout:Lcom/htc/sunny2/common/CommonView$ReLayout;

    iput-object p1, p0, Lcom/htc/sunny2/common/CommonView;->mContext:Landroid/content/Context;

    iput v3, p0, Lcom/htc/sunny2/common/CommonView;->mGLViewWidth:I

    iput v3, p0, Lcom/htc/sunny2/common/CommonView;->mGLViewHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/GLView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/common/CommonView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    iput-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mOnItemClickListener:Lcom/htc/sunny2/common/CommonView$OnItemClickListener;

    iput-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mItemEventListener:Lcom/htc/sunny2/common/CommonView$ItemEventListener;

    iput v4, p0, Lcom/htc/sunny2/common/CommonView;->mSurfacePixelFormat:I

    new-instance v0, Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0}, Lcom/htc/sunny2/SunnyContext;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    iput-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iput-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mThumbWorker:Lcom/htc/sunny2/RenderThreadPreparation;

    iput-boolean v4, p0, Lcom/htc/sunny2/common/CommonView;->shouldCallOnDestroyIHT:Z

    new-instance v0, Lcom/htc/sunny2/common/CommonView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/common/CommonView$ReLayout;-><init>(Lcom/htc/sunny2/common/CommonView;)V

    iput-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mReLayout:Lcom/htc/sunny2/common/CommonView$ReLayout;

    iput-object p1, p0, Lcom/htc/sunny2/common/CommonView;->mContext:Landroid/content/Context;

    iput v3, p0, Lcom/htc/sunny2/common/CommonView;->mGLViewWidth:I

    iput v3, p0, Lcom/htc/sunny2/common/CommonView;->mGLViewHeight:I

    return-void
.end method

.method private ObtainMediaItemRefresh(II)Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunny2/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;-><init>(Lcom/htc/sunny2/common/CommonView;II)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;->reset(II)V

    goto :goto_0
.end method

.method private RecycleMediaItemRefresh(Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;->free()V

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/common/CommonView;Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/common/CommonView;->RecycleMediaItemRefresh(Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bindMediaListIHT(Lcom/htc/sunny2/IMediaList;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/common/CommonView;->bindMediaListIHT(Lcom/htc/sunny2/IMediaList;I)Z

    move-result v0

    return v0
.end method

.method public bindMediaListIHT(Lcom/htc/sunny2/IMediaList;I)Z
    .locals 4

    sget-object v1, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bindMediaListIHT + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bindMediaListIHT NG - no RenderThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;-><init>(Lcom/htc/sunny2/common/CommonView;Ljava/lang/Object;Lcom/htc/sunny2/IMediaList;I)V

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bindMediaListIHT NG - runInterruptionIHT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->forceLayout()V

    sget-object v1, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bindMediaListIHT -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->result:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/htc/sunny2/common/CommonView$1BindMediaListInterruption;->result:Z

    goto :goto_0
.end method

.method public create(Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/common/CommonView;->create(Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public create(Landroid/os/Bundle;I)Z
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x8

    sget-object v3, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "init +"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    sget-object v3, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Context PixelFormat RGB_565"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/sunny2/common/CommonView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v3, v7, v8, v7, v1}, Lcom/htc/sunny2/SunnyContext;->init(IIII)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    sget-object v2, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Create Sunny Context NG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1

    :cond_0
    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    sget-object v3, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Context PixelFormat RGB_888"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/sunny2/common/CommonView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v3, v6, v6, v6, v1}, Lcom/htc/sunny2/SunnyContext;->init(IIII)Z

    move-result v0

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    sget-object v3, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Context PixelFormat RGBA_8888"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/sunny2/common/CommonView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v3, v6, v6, v6, v6}, Lcom/htc/sunny2/SunnyContext;->init(IIII)Z

    move-result v0

    goto/16 :goto_0

    :cond_2
    sget-object v3, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Context PixelFormat NG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/common/CommonView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v3}, Lcom/htc/sunny2/SunnyContext;->getSunnyEnvironment()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/CommonView;->mEnv:I

    iput p2, p0, Lcom/htc/sunny2/common/CommonView;->mSurfacePixelFormat:I

    new-instance v3, Lcom/htc/sunny2/RenderThread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SunnyRenderThread-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/htc/sunny2/RenderThread;-><init>(Ljava/lang/String;Lcom/htc/sunny2/RenderThread$EventListener;)V

    iput-object v3, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v3, p0, Lcom/htc/sunny2/common/CommonView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v3}, Lcom/htc/sunny2/SunnyContext;->getSunnyEnvironment()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/common/CommonView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v4}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-super {p0, v3, v4, p2, v5}, Lcom/htc/sunny2/GLView;->init(IIILcom/htc/sunny2/RenderThread;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v2, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GLView init NG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->deinit()V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, p0}, Lcom/htc/sunny2/common/CommonView;->setSurfaceListener(Lcom/htc/sunny2/GLView$SurfaceListener;)V

    invoke-virtual {p0, p0}, Lcom/htc/sunny2/common/CommonView;->setTouchListener(Lcom/htc/sunny2/GLView$TouchListener;)V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/common/CommonView;->onCreateIHT(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v2, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "onCreateIHT NG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->deinit()V

    goto/16 :goto_1

    :cond_5
    iput-boolean v2, p0, Lcom/htc/sunny2/common/CommonView;->shouldCallOnDestroyIHT:Z

    iget-object v3, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/RenderThread;->beginThread()V

    iget-object v3, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    iget-object v3, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v3, v8}, Lcom/htc/sunny2/RenderThread;->setPriority(I)V

    sget-object v3, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][CommonView][create]getHolder() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][CommonView][create]getHolder().getSurface() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][CommonView][create]getHolder().getSurfaceFrame().width() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][CommonView][create]getHolder().getSurfaceFrame().height() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p0, v3, v1, v4, v5}, Lcom/htc/sunny2/common/CommonView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_6
    sget-object v1, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "init -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto/16 :goto_1
.end method

.method public destroy()V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deinit +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/htc/sunny2/GLView;->deinit()V

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->endThread()V

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/common/CommonView;->shouldCallOnDestroyIHT:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->onDestroyIHT()V

    iput-boolean v4, p0, Lcom/htc/sunny2/common/CommonView;->shouldCallOnDestroyIHT:Z

    :cond_1
    iput v4, p0, Lcom/htc/sunny2/common/CommonView;->mSurfacePixelFormat:I

    iput v4, p0, Lcom/htc/sunny2/common/CommonView;->mEnv:I

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->deinit()V

    sget-object v1, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deinit -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[stop] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected doItemClickOnUiThread(Lcom/htc/sunny2/common/CommonView;Lcom/htc/sunny2/ViewItem;I)V
    .locals 5

    iget-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/common/CommonView;->mOnItemClickListener:Lcom/htc/sunny2/common/CommonView$OnItemClickListener;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/htc/sunny2/common/CommonView$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/htc/sunny2/common/CommonView$1;-><init>(Lcom/htc/sunny2/common/CommonView;Lcom/htc/sunny2/common/CommonView;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[doItemClickOnUiThread] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mReLayout:Lcom/htc/sunny2/common/CommonView$ReLayout;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/CommonView$ReLayout;->requestLayout()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderThread()Lcom/htc/sunny2/RenderThread;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method public layoutIRT(II)V
    .locals 0

    return-void
.end method

.method protected onBindMediaListIRT(Lcom/htc/sunny2/IMediaList;I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateIHT(Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyIHT()V
    .locals 0

    return-void
.end method

.method public onDoubleTapEventIRT(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapIRT(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDownIRT(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFlingIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPressIHT(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onLongPressIRT(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onMediaItemRefresh(II)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/CommonView;->ObtainMediaItemRefresh(II)Lcom/htc/sunny2/common/CommonView$MediaItemRefresh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMediaItemRefreshIRT(II)V
    .locals 0

    return-void
.end method

.method public onMediaListChange(Lcom/htc/sunny2/IMediaList;I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaListChange NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/common/CommonView$1MediaListChange;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/sunny2/common/CommonView$1MediaListChange;-><init>(Lcom/htc/sunny2/common/CommonView;Lcom/htc/sunny2/IMediaList;I)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaListChange NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMediaListChangeIRT(Lcom/htc/sunny2/IMediaList;I)V
    .locals 0

    return-void
.end method

.method public onMediaListRefresh(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaListRefresh NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/common/CommonView$1MediaListRefresh;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/common/CommonView$1MediaListRefresh;-><init>(Lcom/htc/sunny2/common/CommonView;I)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaListRefresh NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMediaListRefreshIRT(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRenderStartIRT()Z
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyContext;->runOnCurrentThread()Z

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->getSunnyWindow()I

    move-result v0

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Window_GetDefaultViewport(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/CommonView;->mViewPort:I

    iget v0, p0, Lcom/htc/sunny2/common/CommonView;->mEnv:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->CreateScene(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/CommonView;->mScene:I

    iget v0, p0, Lcom/htc/sunny2/common/CommonView;->mScene:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Scene_GetRootNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/CommonView;->mRootNode:I

    iget v0, p0, Lcom/htc/sunny2/common/CommonView;->mScene:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Scene_GetDefaultCamera(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/CommonView;->mCamera:I

    iget v0, p0, Lcom/htc/sunny2/common/CommonView;->mCamera:I

    const/high16 v1, 0x4270

    const/high16 v2, 0x4120

    const v3, 0x461c4000

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunny2/Sunny2;->Camera_2DIsometricSetup(IFFF)V

    iget v0, p0, Lcom/htc/sunny2/common/CommonView;->mViewPort:I

    iget v1, p0, Lcom/htc/sunny2/common/CommonView;->mCamera:I

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->Viewport_LinkCamera(II)V

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView;->mReLayout:Lcom/htc/sunny2/common/CommonView$ReLayout;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onRenderStopIRT()V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/common/CommonView;->mScene:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->DestroyScene(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/CommonView;->mScene:I

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyContext;->removeFromCurrentThread()V

    return-void
.end method

.method public onRenderToWindowIRT(I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onScaleBeginIRT(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEndIRT(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onScaleIRT(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScrollEndIRT(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScrollIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPressIRT(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmedIHT(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmedIRT(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUpIHT(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUpIRT(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceChangedIRT(II)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/common/CommonView;->mGLViewWidth:I

    iput p2, p0, Lcom/htc/sunny2/common/CommonView;->mGLViewHeight:I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->forceLayout()V

    return-void
.end method

.method public onSurfaceCreatedIRT(II)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/common/CommonView;->mGLViewWidth:I

    iput p2, p0, Lcom/htc/sunny2/common/CommonView;->mGLViewHeight:I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->forceLayout()V

    return-void
.end method

.method public onSurfaceDestroyedIRT()V
    .locals 0

    return-void
.end method

.method protected onUnBindMediaListIRT()V
    .locals 0

    return-void
.end method

.method public onUpIRT(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public setItemEventListener(Lcom/htc/sunny2/common/CommonView$ItemEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/CommonView;->mItemEventListener:Lcom/htc/sunny2/common/CommonView$ItemEventListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunny2/common/CommonView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/CommonView;->mOnItemClickListener:Lcom/htc/sunny2/common/CommonView$OnItemClickListener;

    return-void
.end method

.method public unbindMediaListIHT()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unbindMediaListIHT() NG - no RenderThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unbindMediaListIHT +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/common/CommonView$1UnbindMediaListInterruption;

    invoke-direct {v1, p0, p0}, Lcom/htc/sunny2/common/CommonView$1UnbindMediaListInterruption;-><init>(Lcom/htc/sunny2/common/CommonView;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unbindMediaListIHT() NG - runInterruptionIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unbindMediaListIHT -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected unbindMediaListIRT()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unbindMediaListIRT +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CommonView;->onUnBindMediaListIRT()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/CommonView;->mListItemCount:I

    sget-object v0, Lcom/htc/sunny2/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unbindMediaListIRT -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

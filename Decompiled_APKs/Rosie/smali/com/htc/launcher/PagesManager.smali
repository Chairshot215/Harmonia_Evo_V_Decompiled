.class public Lcom/htc/launcher/PagesManager;
.super Ljava/lang/Object;
.source "PagesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/PagesManager$ScenePagesInfo;,
        Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
    }
.end annotation


# static fields
.field public static final DEFAULTHOMEINDEX:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "PagesManager"

.field public static final MAXPAGES:I = 0x7

.field public static final MINPAGES:I = 0x1

.field private static final UPDATE_HOME_INDEX:I = 0x2

.field private static final UPDATE_PAGES_COUNT:I = 0x1

.field private static initialized:Z

.field private static final localLOGV:Z

.field private static sInstance:Lcom/htc/launcher/PagesManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHomeIndex:I

.field private mPagesChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/PagesManager$OnPagesChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPagesCount:I

.field private mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

.field private mScenePagesInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/PagesManager$ScenePagesInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/htc/launcher/PagesManager;

    invoke-direct {v0}, Lcom/htc/launcher/PagesManager;-><init>()V

    sput-object v0, Lcom/htc/launcher/PagesManager;->sInstance:Lcom/htc/launcher/PagesManager;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/PagesManager;->initialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/launcher/PagesManager;->mHomeIndex:I

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/PagesManager;)Lcom/htc/htcSceneManager/scene/SceneManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/launcher/PagesManager;->getSceneManager()Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/launcher/PagesManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/PagesManager;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/PagesManager;->updatePagesInfosInDb(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/launcher/PagesManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/htc/launcher/PagesManager;->mHomeIndex:I

    return v0
.end method

.method private getSceneManager()Lcom/htc/htcSceneManager/scene/SceneManager;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/launcher/PagesManager;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/launcher/PagesManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/PagesManager;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/PagesManager;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    return-object v0
.end method

.method public static declared-synchronized instance()Lcom/htc/launcher/PagesManager;
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/htc/launcher/PagesManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/htc/launcher/PagesManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/PagesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/htc/launcher/PagesManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 53
    const-class v1, Lcom/htc/launcher/PagesManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/launcher/PagesManager;->initialized:Z

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/htc/launcher/PagesManager;->sInstance:Lcom/htc/launcher/PagesManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    .line 55
    sget-object v0, Lcom/htc/launcher/PagesManager;->sInstance:Lcom/htc/launcher/PagesManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/launcher/PagesManager;->mContext:Landroid/content/Context;

    .line 56
    sget-object v0, Lcom/htc/launcher/PagesManager;->sInstance:Lcom/htc/launcher/PagesManager;

    invoke-virtual {v0, p0}, Lcom/htc/launcher/PagesManager;->reset(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/launcher/PagesManager;->initialized:Z

    .line 59
    :cond_0
    sget-object v0, Lcom/htc/launcher/PagesManager;->sInstance:Lcom/htc/launcher/PagesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updatePagesInfosInDb(II)V
    .locals 8
    .parameter "action"
    .parameter "id"

    .prologue
    .line 239
    iget-object v4, p0, Lcom/htc/launcher/PagesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 240
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v3, values:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 243
    :try_start_0
    iget-object v4, p0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    .line 244
    .local v2, info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    iget v4, v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->id:I

    if-ne v4, p2, :cond_0

    .line 245
    packed-switch p1, :pswitch_data_0

    .line 255
    :goto_1
    int-to-long v6, p2

    const/4 v4, 0x0

    invoke-static {v6, v7, v4}, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 247
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    :pswitch_0
    :try_start_1
    const-string v4, "pages_count"

    iget v6, v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->pagesCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 251
    :pswitch_1
    const-string v4, "home_index"

    iget v6, v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->homeIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 258
    .end local v2           #info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    return-void

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addPage()V
    .locals 5

    .prologue
    .line 141
    iget v3, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    const/4 v4, 0x7

    if-ge v3, v4, :cond_0

    .line 142
    iget v3, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    .line 144
    new-instance v2, Lcom/htc/launcher/PagesManager$1;

    const-string v3, "addPage"

    invoke-direct {v2, p0, v3}, Lcom/htc/launcher/PagesManager$1;-><init>(Lcom/htc/launcher/PagesManager;Ljava/lang/String;)V

    .line 160
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 162
    iget-object v3, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/PagesManager$OnPagesChangedListener;

    .line 164
    .local v1, listener:Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
    iget v3, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    invoke-interface {v1, v3}, Lcom/htc/launcher/PagesManager$OnPagesChangedListener;->onPagesCountChanged(I)V

    goto :goto_0

    .line 168
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public addPagesChangedListener(Lcom/htc/launcher/PagesManager$OnPagesChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public getCurrentHomeIndex()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/htc/launcher/PagesManager;->mHomeIndex:I

    return v0
.end method

.method public getCurrentPagesCount()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    return v0
.end method

.method public isPageFull()Z
    .locals 2

    .prologue
    .line 282
    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newScene(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "name"

    .prologue
    .line 320
    new-instance v0, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    invoke-direct {v0, p0}, Lcom/htc/launcher/PagesManager$ScenePagesInfo;-><init>(Lcom/htc/launcher/PagesManager;)V

    .line 321
    .local v0, newInfo:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    iput p1, v0, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->id:I

    .line 322
    iput-object p2, v0, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->sceneName:Ljava/lang/String;

    .line 323
    const/4 v1, 0x7

    iput v1, v0, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->pagesCount:I

    .line 324
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->homeIndex:I

    .line 325
    iget-object v2, p0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    monitor-enter v2

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    monitor-exit v2

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSceneChange(I)V
    .locals 6
    .parameter "sceneid"

    .prologue
    .line 294
    iget-object v5, p0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    monitor-enter v5

    .line 295
    :try_start_0
    iget-object v4, p0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    .line 296
    .local v2, info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    iget v4, v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->id:I

    if-ne v4, p1, :cond_0

    .line 297
    iget v4, v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->pagesCount:I

    iput v4, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    .line 298
    iget v4, v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->homeIndex:I

    iput v4, p0, Lcom/htc/launcher/PagesManager;->mHomeIndex:I

    .line 300
    iget-object v4, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 301
    iget-object v4, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/PagesManager$OnPagesChangedListener;

    .line 302
    .local v3, listener:Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
    iget v4, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    invoke-interface {v3, v4}, Lcom/htc/launcher/PagesManager$OnPagesChangedListener;->onPagesCountChanged(I)V

    goto :goto_0

    .line 316
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    .end local v3           #listener:Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 308
    .restart local v2       #info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 309
    iget-object v4, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/PagesManager$OnPagesChangedListener;

    .line 310
    .restart local v3       #listener:Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
    iget v4, p0, Lcom/htc/launcher/PagesManager;->mHomeIndex:I

    invoke-interface {v3, v4}, Lcom/htc/launcher/PagesManager$OnPagesChangedListener;->onHomeIndexChanged(I)V

    goto :goto_1

    .line 316
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    .end local v3           #listener:Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    return-void
.end method

.method public removePage()V
    .locals 5

    .prologue
    .line 171
    iget v3, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 172
    iget v3, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    .line 174
    new-instance v2, Lcom/htc/launcher/PagesManager$2;

    const-string v3, "removePage"

    invoke-direct {v2, p0, v3}, Lcom/htc/launcher/PagesManager$2;-><init>(Lcom/htc/launcher/PagesManager;Ljava/lang/String;)V

    .line 189
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 191
    iget-object v3, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/PagesManager$OnPagesChangedListener;

    .line 193
    .local v1, listener:Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
    iget v3, p0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    invoke-interface {v1, v3}, Lcom/htc/launcher/PagesManager$OnPagesChangedListener;->onPagesCountChanged(I)V

    goto :goto_0

    .line 201
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public removeScene(I)V
    .locals 4
    .parameter "removeId"

    .prologue
    .line 340
    iget-object v3, p0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    monitor-enter v3

    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    .line 342
    .local v1, info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    iget v2, v1, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->id:I

    if-ne v2, p1, :cond_0

    .line 343
    iget-object v2, p0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 356
    .end local v1           #info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    :cond_1
    monitor-exit v3

    .line 357
    return-void

    .line 356
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reset(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 69
    const-string v3, "WidgetPackageManager"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 70
    .local v19, pref:Landroid/content/SharedPreferences;
    const-string v3, "Initialized"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 71
    .local v16, isInitialized:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 72
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 75
    .local v2, contentResolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id asc "

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 78
    .local v8, c:Landroid/database/Cursor;
    if-nez v16, :cond_1

    .line 79
    const-string v3, "PagesManager"

    const-string v4, "Rosie have not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eqz v8, :cond_0

    .line 81
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_0
    monitor-exit v23

    .line 138
    :goto_0
    return-void

    .line 84
    :cond_1
    if-nez v8, :cond_2

    .line 85
    const-string v3, "PagesManager"

    const-string v4, "PagesManager cursor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-exit v23

    goto :goto_0

    .line 135
    .end local v2           #contentResolver:Landroid/content/ContentResolver;
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 90
    .restart local v2       #contentResolver:Landroid/content/ContentResolver;
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 91
    .local v14, idIndex:I
    const-string v3, "scene_name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 92
    .local v22, scenedNameIndex:I
    const-string v3, "pages_count"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 93
    .local v18, pagesCountIndex:I
    const-string v3, "home_index"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 95
    .local v11, homeIndexIndex:I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    new-instance v21, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/launcher/PagesManager$ScenePagesInfo;-><init>(Lcom/htc/launcher/PagesManager;)V

    .line 97
    .local v21, scenePagesInfo:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 98
    .local v13, id:I
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 99
    .local v20, sceneName:Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 100
    .local v17, pagesCount:I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 102
    .local v10, homeIndex:I
    move-object/from16 v0, v21

    iput v13, v0, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->id:I

    .line 103
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->sceneName:Ljava/lang/String;

    .line 104
    move/from16 v0, v17

    move-object/from16 v1, v21

    iput v0, v1, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->pagesCount:I

    .line 105
    move-object/from16 v0, v21

    iput v10, v0, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->homeIndex:I

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 111
    .end local v10           #homeIndex:I
    .end local v11           #homeIndexIndex:I
    .end local v13           #id:I
    .end local v14           #idIndex:I
    .end local v17           #pagesCount:I
    .end local v18           #pagesCountIndex:I
    .end local v20           #sceneName:Ljava/lang/String;
    .end local v21           #scenePagesInfo:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    .end local v22           #scenedNameIndex:I
    :catchall_1
    move-exception v3

    .line 112
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 115
    :goto_2
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    .restart local v11       #homeIndexIndex:I
    .restart local v14       #idIndex:I
    .restart local v18       #pagesCountIndex:I
    .restart local v22       #scenedNameIndex:I
    :cond_3
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 124
    :goto_3
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/PagesManager;->getSceneManager()Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v9

    .line 125
    .local v9, currentSceneId:I
    const/4 v3, -0x1

    if-ne v9, v3, :cond_4

    const/4 v9, 0x1

    .line 128
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    .line 129
    .local v15, info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    iget v3, v15, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->id:I

    if-ne v3, v9, :cond_5

    .line 130
    iget v3, v15, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->pagesCount:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/launcher/PagesManager;->mPagesCount:I

    .line 131
    iget v3, v15, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->homeIndex:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/launcher/PagesManager;->mHomeIndex:I

    goto :goto_4

    .line 135
    .end local v15           #info:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    :cond_6
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 113
    .end local v9           #currentSceneId:I
    .end local v12           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    goto :goto_3

    .end local v11           #homeIndexIndex:I
    .end local v14           #idIndex:I
    .end local v18           #pagesCountIndex:I
    .end local v22           #scenedNameIndex:I
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public setHomeIndex(I)V
    .locals 4
    .parameter "newHomeIndex"

    .prologue
    .line 204
    iput p1, p0, Lcom/htc/launcher/PagesManager;->mHomeIndex:I

    .line 206
    new-instance v2, Lcom/htc/launcher/PagesManager$3;

    const-string v3, "setHomeIndex"

    invoke-direct {v2, p0, v3}, Lcom/htc/launcher/PagesManager$3;-><init>(Lcom/htc/launcher/PagesManager;Ljava/lang/String;)V

    .line 229
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 231
    iget-object v3, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/htc/launcher/PagesManager;->mPagesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/PagesManager$OnPagesChangedListener;

    .line 233
    .local v1, listener:Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
    iget v3, p0, Lcom/htc/launcher/PagesManager;->mHomeIndex:I

    invoke-interface {v1, v3}, Lcom/htc/launcher/PagesManager$OnPagesChangedListener;->onHomeIndexChanged(I)V

    goto :goto_0

    .line 236
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
    :cond_0
    return-void
.end method

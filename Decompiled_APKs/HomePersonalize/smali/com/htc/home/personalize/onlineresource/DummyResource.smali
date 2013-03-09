.class public Lcom/htc/home/personalize/onlineresource/DummyResource;
.super Lcom/htc/home/personalize/onlineresource/OnlineResource;
.source "DummyResource.java"


# static fields
.field public static final DUMMY_FAKE:I = 0x0

.field public static final DUMMY_NEXT_NEW:I = 0x1

.field public static final DUMMY_NEXT_REQUESTED:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static dummyId:I


# instance fields
.field public flag:I

.field private picker:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/high16 v0, -0x8000

    sput v0, Lcom/htc/home/personalize/onlineresource/DummyResource;->dummyId:I

    .line 16
    const-class v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/onlineresource/DummyResource;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/onlineresource/OnlineResourceList;Ljava/lang/String;Lcom/htc/home/personalize/olrespicker/OnlineResPicker;II)V
    .locals 23
    .parameter "parent"
    .parameter "category"
    .parameter "context"
    .parameter "type"
    .parameter "flag"

    .prologue
    .line 23
    sget v2, Lcom/htc/home/personalize/onlineresource/DummyResource;->dummyId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/home/personalize/onlineresource/DummyResource;->dummyId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move/from16 v19, p4

    move-object/from16 v20, p3

    move-object/from16 v22, p1

    invoke-direct/range {v2 .. v22}, Lcom/htc/home/personalize/onlineresource/OnlineResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/onlineresource/OnlineResourceList;)V

    .line 29
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/home/personalize/onlineresource/DummyResource;->picker:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    .line 30
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/onlineresource/DummyResource;->flag:I

    .line 31
    if-eqz p1, :cond_0

    .line 32
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->add(Lcom/htc/home/personalize/onlineresource/OnlineResource;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;
    .locals 1
    .parameter "aspect"

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadNextPage()V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/home/personalize/onlineresource/DummyResource;->flag:I

    if-ne v0, v1, :cond_0

    .line 42
    sget-object v0, Lcom/htc/home/personalize/onlineresource/DummyResource;->TAG:Ljava/lang/String;

    const-string v1, "load next page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/home/personalize/onlineresource/DummyResource;->flag:I

    .line 44
    iget-object v0, p0, Lcom/htc/home/personalize/onlineresource/DummyResource;->picker:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-virtual {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->askDB2load()V

    .line 46
    :cond_0
    return-void
.end method

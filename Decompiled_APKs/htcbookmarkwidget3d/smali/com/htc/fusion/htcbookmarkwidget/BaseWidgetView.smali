.class public abstract Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "BaseWidgetView.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$1;,
        Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;,
        Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final EDIT_WIDGET:I = 0x9900

.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"

.field private static final MSG_CONFIG_CHANGED:I = 0x8003

.field private static final MSG_ON_CONTENT_CHANGED:I = 0x8000

.field private static final MSG_ON_PAUSE:I = 0x8001

.field private static final MSG_ON_RESUME:I = 0x8002


# instance fields
.field protected bFirstCreate:Z

.field protected bIsWidgetOnScreen:Z

.field protected bShouldRefresh:Z

.field protected mBookmarkItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoader:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;

.field protected mLoaderCallback:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

.field protected mOrientation:I

.field protected mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

.field private mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

.field protected mWidgetScene:Lcom/htc/fusion/fx/FxScene;

.field private mWidgetSceneLand:Lcom/htc/fusion/fx/FxScene;

.field private mWidgetScenePort:Lcom/htc/fusion/fx/FxScene;

.field protected mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bShouldRefresh:Z

    .line 508
    return-void
.end method

.method static synthetic access$200(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getState()Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;)[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getTags()[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    move-result-object v0

    return-object v0
.end method

.method private getState()Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    return-object v0
.end method

.method private getTags()[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    .locals 9

    .prologue
    .line 432
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    array-length v7, v7

    if-gtz v7, :cond_4

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->loadInstanceData()Ljava/util/Properties;

    move-result-object v2

    .line 434
    .local v2, props:Ljava/util/Properties;
    const-string v6, ""

    .line 435
    .local v6, tagString:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v7, "selected_tags"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 440
    :cond_1
    const-string v6, "tag_name_of_bookmarks_without_tags"

    .line 441
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 442
    .local v1, newProps:Ljava/util/Properties;
    const-string v7, "selected_tags"

    const-string v8, "tag_name_of_bookmarks_without_tags"

    invoke-virtual {v1, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    invoke-virtual {p0, v2}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->storeInstanceData(Ljava/util/Properties;)V

    .line 444
    const-string v6, "tag_name_of_bookmarks_without_tags"

    .line 450
    .end local v1           #newProps:Ljava/util/Properties;
    :goto_0
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, tagArray:[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v7, v4

    if-lez v7, :cond_4

    .line 452
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v5, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v7, v4

    if-ge v0, v7, :cond_3

    .line 454
    new-instance v3, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    aget-object v7, v4, v0

    invoke-direct {v3, v7}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    .line 455
    .local v3, tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    .end local v0           #i:I
    .end local v3           #tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    .end local v4           #tagArray:[Ljava/lang/String;
    .end local v5           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    :cond_2
    const-string v7, "selected_tags"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 457
    .restart local v0       #i:I
    .restart local v4       #tagArray:[Ljava/lang/String;
    .restart local v5       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    iput-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 463
    .end local v0           #i:I
    .end local v2           #props:Ljava/util/Properties;
    .end local v4           #tagArray:[Ljava/lang/String;
    .end local v5           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    .end local v6           #tagString:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    return-object v7
.end method

.method private setTags([Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V
    .locals 5
    .parameter "tags"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 415
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 417
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_0
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 424
    .end local v0           #i:I
    :cond_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 425
    .local v1, props:Ljava/util/Properties;
    const-string v3, "selected_tags"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 426
    invoke-virtual {p0, v1}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->storeInstanceData(Ljava/util/Properties;)V

    .line 428
    return-void
.end method


# virtual methods
.method public abstract bindWidgetScene(Lcom/htc/fusion/fx/FxScene;)V
.end method

.method public enableHostSlide(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 400
    if-eqz p1, :cond_0

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->surpressHostSlide(Z)V

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->surpressHostSlide(Z)V

    goto :goto_0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContentPath(I)Ljava/lang/String;
.end method

.method public abstract getContentPath(Landroid/content/res/Configuration;)Ljava/lang/String;
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getWidgetScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetBase()Lcom/htc/android/rosie/widget/Widget$Base;
    .locals 0

    .prologue
    .line 365
    return-object p0
.end method

.method public getWidgetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method public abstract getWidgetMode()Ljava/lang/String;
.end method

.method public getWidgetScene()Lcom/htc/fusion/fx/FxScene;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 312
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScenePort:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_0

    .line 313
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getWidgetScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetSceneLand:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_1

    .line 317
    invoke-virtual {p0, v2}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getWidgetScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetSceneLand:Lcom/htc/fusion/fx/FxScene;

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 322
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_3

    .line 323
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetSceneLand:Lcom/htc/fusion/fx/FxScene;

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 324
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScenePort:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScenePort:Lcom/htc/fusion/fx/FxScene;

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 332
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    return-object v1

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScenePort:Lcom/htc/fusion/fx/FxScene;

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 328
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetSceneLand:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetSceneLand:Lcom/htc/fusion/fx/FxScene;

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method public getWidgetScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v3, 0x2

    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, scene:Lcom/htc/fusion/fx/FxScene;
    if-ne p1, v3, :cond_1

    .line 344
    :try_start_0
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetSceneLand:Lcom/htc/fusion/fx/FxScene;

    if-nez v3, :cond_0

    .line 345
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getContentPath(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, contentPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    .line 361
    .end local v0           #contentPath:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetSceneLand:Lcom/htc/fusion/fx/FxScene;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HtcBookmarkWidget"

    const-string v4, "Error occurred while preload scene"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 353
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScenePort:Lcom/htc/fusion/fx/FxScene;

    if-nez v3, :cond_2

    .line 354
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getContentPath(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .restart local v0       #contentPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    .line 356
    goto :goto_0

    .end local v0           #contentPath:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScenePort:Lcom/htc/fusion/fx/FxScene;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 357
    :catch_1
    move-exception v1

    .line 358
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "HtcBookmarkWidget"

    const-string v4, "Error occurred while preload scene"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "callback"

    .prologue
    .line 392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEditable()Z
    .locals 2

    .prologue
    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Base;->onActivityResult(IILandroid/content/Intent;)V

    .line 242
    const v4, 0x9900

    if-ne p1, v4, :cond_3

    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 243
    if-eqz p3, :cond_3

    const-string v4, "intent_widget_setting"

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    const-string v4, "selected_tags"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, tags:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v2, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 251
    new-instance v4, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    aget-object v5, v3, v0

    invoke-direct {v4, v5}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 253
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 259
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    invoke-direct {p0, v4}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->setTags([Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V

    .line 266
    .end local v0           #i:I
    .end local v2           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bShouldRefresh:Z

    .line 269
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v3           #tags:[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfiguration"

    .prologue
    const v1, 0x8003

    .line 176
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 179
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 182
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iput-boolean v4, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bFirstCreate:Z

    .line 47
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mOrientation:I

    .line 52
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 54
    sget-boolean v2, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v2}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bindWidgetScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    new-instance v3, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;

    invoke-direct {v3, p0, v5}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$WidgetHandler;-><init>(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$1;)V

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 64
    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getWidgetContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mLoader:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;

    .line 68
    :goto_0
    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;

    invoke-direct {v2, p0, v5}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$LoaderCallback;-><init>(Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView$1;)V

    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mLoaderCallback:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    .line 69
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mLoader:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;

    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mLoaderCallback:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    invoke-interface {v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;->setLoaderCallback(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;)V

    .line 72
    invoke-static {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/LoadingState;->createState(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v1

    .line 73
    .local v1, loadingState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    invoke-virtual {p0, v1}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->setState(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V

    .line 75
    iput-boolean v4, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bShouldRefresh:Z

    .line 76
    return-void

    .line 66
    .end local v1           #loadingState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;
    :cond_2
    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;

    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getWidgetContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mLoader:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mLoader:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;

    invoke-interface {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;->setLoaderCallback(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;)V

    .line 159
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mLoader:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;->onDestroyLoader()V

    .line 160
    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mLoader:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;

    .line 162
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onDestroy()V

    .line 164
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->unbindWidgetScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 166
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScenePort:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetScenePort:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetSceneLand:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetSceneLand:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 173
    :cond_1
    return-void
.end method

.method public onEdit()V
    .locals 6

    .prologue
    .line 214
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onEdit()V

    .line 216
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 236
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getWidgetContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getTags()[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    move-result-object v3

    .line 222
    .local v3, tags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 225
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 226
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_1
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 232
    :cond_2
    const-string v4, "selected_tags"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    .end local v0           #i:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const v4, 0x9900

    invoke-virtual {p0, v1, v4}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 185
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 197
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 189
    .local v0, configMsg:Landroid/os/Message;
    const v1, 0x8003

    iput v1, v0, Landroid/os/Message;->what:I

    .line 190
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v1, 0x8001

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 113
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 115
    iget-boolean v5, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bFirstCreate:Z

    if-eqz v5, :cond_2

    .line 116
    iput-boolean v6, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->bFirstCreate:Z

    .line 118
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 119
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    const-string v5, "intent_widget_setting"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    const-string v5, "selected_tags"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, tags:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v3, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 127
    new-instance v5, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    aget-object v6, v4, v0

    invoke-direct {v5, v6}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-gtz v5, :cond_0

    .line 129
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    invoke-direct {p0, v5}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->setTags([Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V

    .line 144
    .end local v0           #i:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v3           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    .end local v4           #tags:[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v5, :cond_3

    .line 145
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v6, 0x8002

    const-wide/16 v7, 0x708

    invoke-interface {v5, v6, v7, v8}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 147
    :cond_3
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 1
    .parameter "tilt"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onTiltChanged(F)V

    .line 201
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->getState()Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onTiltChanged(F)V

    .line 202
    return-void
.end method

.method public setState(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onDestroy()V

    .line 380
    :cond_0
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    .line 382
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onCreate()V

    .line 385
    :cond_1
    return-void
.end method

.method public abstract unbindWidgetScene(Lcom/htc/fusion/fx/FxScene;)V
.end method

.class public Lcom/htc/home/personalize/catechooser/CategoryChooser;
.super Landroid/app/Activity;
.source "CategoryChooser.java"

# interfaces
.implements Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/catechooser/CategoryChooser$DBReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_HUB_ONLINE_WALLPAPER_CATEGORY:Ljava/lang/String; = "com.htc.home.personalize.ACTION_HUB_WALLPAPER"

.field public static final ACTION_ONLINE_WALLPAPER_CATEGORY:Ljava/lang/String; = "com.htc.personalize.action.ONLINE_WALLPAPER_CATEGORY"

.field private static final CS_LOGIN_CLASS:Ljava/lang/String; = "com.htc.cs.activity.accountactivities.CS_login"

.field private static final CS_LOGIN_EXTRA_SOURCE:Ljava/lang/String; = "IntentSource"

.field private static final CS_LOGIN_EXTRA_SOURCE_VALUE:Ljava/lang/String; = "thirdPartyWIntro"

.field private static final CS_LOGIN_PKG:Ljava/lang/String; = "com.htc.cs"

.field public static final CS_LOGIN_REQ:I = 0x522894

.field public static final ICON_NAME_SUFFIX:Ljava/lang/String; = "_CATE_ICON"

.field private static final REQ_PICKER:I = 0x59a9a7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

.field private adapter:Lcom/htc/home/personalize/catechooser/CategoryAdapter;

.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/Category;",
            ">;"
        }
    .end annotation
.end field

.field private dataLoaded:Z

.field private dbReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mPrepareIconThread:Ljava/lang/Thread;

.field private mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

.field private orientationChanged:Z

.field private type:I

.field private uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/htc/home/personalize/catechooser/CategoryChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mPrepareIconThread:Ljava/lang/Thread;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->type:I

    .line 91
    iput-boolean v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dataLoaded:Z

    .line 92
    iput-boolean v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->orientationChanged:Z

    .line 93
    iput-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dbReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 96
    iput-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    .line 468
    new-instance v0, Lcom/htc/home/personalize/catechooser/CategoryChooser$5;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser$5;-><init>(Lcom/htc/home/personalize/catechooser/CategoryChooser;)V

    iput-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/catechooser/CategoryChooser;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->choose(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/catechooser/CategoryChooser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->askDB2Load()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/catechooser/CategoryChooser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->type:I

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/home/personalize/catechooser/CategoryChooser;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dbReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/catechooser/CategoryChooser;)Lcom/htc/home/personalize/olrespicker/UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/catechooser/CategoryChooser;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/catechooser/CategoryChooser;Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->collectDuplicateCategoryIconURL(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/catechooser/CategoryChooser;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static activateCS(Landroid/app/Activity;)V
    .locals 4
    .parameter "act"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSActive(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 66
    sget-object v2, Lcom/htc/home/personalize/catechooser/CategoryChooser;->TAG:Ljava/lang/String;

    const-string v3, "Has been logged in"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.cs"

    const-string v3, "com.htc.cs.activity.accountactivities.CS_login"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v2, "IntentSource"

    const-string v3, "thirdPartyWIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const v2, 0x522894

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private askDB2Load()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 291
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dbReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 306
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 297
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.home.personalize.storedatamanager.ACTION_GETSUBCATEGORYLIST_RESPONSE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, myFilter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/htc/home/personalize/catechooser/CategoryChooser$DBReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/home/personalize/catechooser/CategoryChooser$DBReceiver;-><init>(Lcom/htc/home/personalize/catechooser/CategoryChooser;Lcom/htc/home/personalize/catechooser/CategoryChooser$1;)V

    iput-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dbReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.home.personalize.storedatamanager.ACTION_GETSUBCATEGORYLIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, intentToService:Landroid/content/Intent;
    const-string v2, "storedata_type"

    iget v3, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->type:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v2, "base_idx"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    const-string v2, "page_size"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private choose(I)V
    .locals 4
    .parameter "pos"

    .prologue
    .line 340
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 341
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.personalize.action.ONLINERESPICKER_WALLPAPER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v2, "RES_TYPE"

    iget v3, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->type:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "GUID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, guid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 345
    const-string v2, "GUID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    :cond_0
    const-string v3, "CATE_ID"

    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/storedatamanager/Category;

    iget-object v2, v2, Lcom/htc/home/personalize/storedatamanager/Category;->categoryID:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v3, "CATE_LABEL"

    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/storedatamanager/Category;

    iget-object v2, v2, Lcom/htc/home/personalize/storedatamanager/Category;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const v2, 0x59a9a7

    invoke-virtual {p0, v1, v2}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    return-void
.end method

.method public static cleanPreview(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, IdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/htc/home/personalize/catechooser/CategoryChooser;->TAG:Ljava/lang/String;

    const-string v4, "clean preview"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 502
    .local v2, id:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_CATE_ICON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, iconPreview:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/home/personalize/util/FileHelper;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v1           #iconPreview:Ljava/lang/String;
    .end local v2           #id:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private collectDuplicateCategoryIconURL(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/Category;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/storedatamanager/Category;>;"
    sget-object v3, Lcom/htc/home/personalize/catechooser/CategoryChooser;->TAG:Ljava/lang/String;

    const-string v4, "collectDuplicateCategoryIconURL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 447
    .local v1, categoryIconURLMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/storedatamanager/Category;

    .line 448
    .local v0, category:Lcom/htc/home/personalize/storedatamanager/Category;
    iget-object v3, v0, Lcom/htc/home/personalize/storedatamanager/Category;->imageURL:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 449
    sget-object v3, Lcom/htc/home/personalize/catechooser/CategoryChooser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/home/personalize/storedatamanager/Category;->imageURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v3, v0, Lcom/htc/home/personalize/storedatamanager/Category;->imageURL:Ljava/lang/String;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_0
    iget-object v3, v0, Lcom/htc/home/personalize/storedatamanager/Category;->imageURL:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/htc/home/personalize/storedatamanager/Category;->generateIconImagePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 454
    .end local v0           #category:Lcom/htc/home/personalize/storedatamanager/Category;
    :cond_1
    return-object v1
.end method

.method private initPhase1()V
    .locals 6

    .prologue
    .line 251
    const v3, 0x7f03000d

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->setContentView(I)V

    .line 252
    invoke-virtual {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->setupHeaderBar()V

    .line 254
    const-string v3, "common_app_bkg"

    const v4, 0x20806b7

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 255
    .local v0, background:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 259
    const v2, 0x7f09003f

    .line 260
    .local v2, title:I
    iget-object v3, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 263
    const v3, 0x7f0b0029

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    .line 264
    .local v1, listView:Lcom/htc/widget/HtcListView;
    new-instance v3, Lcom/htc/home/personalize/catechooser/CategoryChooser$1;

    invoke-direct {v3, p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser$1;-><init>(Lcom/htc/home/personalize/catechooser/CategoryChooser;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 272
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setListBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    invoke-virtual {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20800d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setRoundBackground(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v3, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->adapter:Lcom/htc/home/personalize/catechooser/CategoryAdapter;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 277
    const v3, 0x7f0b002a

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/htc/home/personalize/catechooser/CategoryChooser$2;

    invoke-direct {v4, p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser$2;-><init>(Lcom/htc/home/personalize/catechooser/CategoryChooser;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    return-void
.end method


# virtual methods
.method public change2NoDataView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 458
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 460
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, -0x1

    .line 148
    sget-object v4, Lcom/htc/home/personalize/catechooser/CategoryChooser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult requestCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",resultCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const v4, 0x59a9a7

    if-ne v4, p1, :cond_4

    .line 150
    if-ne v7, p2, :cond_1

    .line 152
    const-string v4, "GUID"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, guid:Ljava/lang/String;
    const-string v4, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 156
    .local v3, sceneId:I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "GUID"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    if-eq v7, v3, :cond_0

    .line 159
    const-string v4, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 164
    .local v0, caller:Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p0, v7, v2}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->setResult(ILandroid/content/Intent;)V

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->finish()V

    .line 192
    .end local v0           #caller:Landroid/content/ComponentName;
    .end local v1           #guid:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #sceneId:I
    :cond_1
    :goto_1
    return-void

    .line 170
    .restart local v0       #caller:Landroid/content/ComponentName;
    .restart local v1       #guid:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #sceneId:I
    :cond_2
    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->type:I

    if-ne v4, v5, :cond_3

    .line 171
    const-string v4, "com.htc.home.personalize"

    const-string v5, "com.htc.home.personalize.WallpaperPicker"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    :goto_2
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :cond_3
    const-string v4, "com.htc.home.personalize"

    const-string v5, "com.htc.home.personalize.scene.ScenePicker"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 182
    .end local v0           #caller:Landroid/content/ComponentName;
    .end local v1           #guid:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #sceneId:I
    :cond_4
    const v4, 0x522894

    if-eq v4, p1, :cond_1

    .line 183
    const/16 v4, 0x64

    if-ne p1, v4, :cond_5

    .line 184
    if-eq p2, v7, :cond_1

    .line 186
    if-nez p2, :cond_1

    goto :goto_1

    .line 189
    :cond_5
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    iput-object p0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mContext:Landroid/content/Context;

    .line 106
    iget-object v4, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->checkLangChange(Landroid/content/Context;)Z

    move-result v1

    .line 107
    .local v1, bLangChanged:Z
    iget-object v4, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    if-nez v4, :cond_0

    .line 109
    new-instance v4, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    iget-object v5, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v7}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    .line 111
    :cond_0
    new-instance v4, Lcom/htc/home/personalize/catechooser/CategoryAdapter;

    iget-object v5, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/htc/home/personalize/catechooser/CategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->adapter:Lcom/htc/home/personalize/catechooser/CategoryAdapter;

    .line 112
    new-instance v4, Lcom/htc/home/personalize/olrespicker/UIHandler;

    invoke-direct {v4, p0, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;-><init>(Landroid/app/Activity;Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;)V

    iput-object v4, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    .line 113
    iget-object v4, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iget-object v5, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->adapter:Lcom/htc/home/personalize/catechooser/CategoryAdapter;

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/olrespicker/UIHandler;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 117
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 118
    sget-object v4, Lcom/htc/home/personalize/catechooser/CategoryChooser;->TAG:Ljava/lang/String;

    const-string v5, " intent = null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.htc.personalize.action.ONLINE_WALLPAPER_CATEGORY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.htc.home.personalize.ACTION_HUB_WALLPAPER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 126
    :cond_2
    iput v7, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->type:I

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 130
    .local v3, tmp:[Ljava/lang/Object;
    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    .line 131
    iput-boolean v6, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->orientationChanged:Z

    .line 132
    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dataLoaded:Z

    .line 133
    iget-object v5, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    aget-object v4, v3, v6

    check-cast v4, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_4
    invoke-static {p0}, Lcom/htc/home/personalize/util/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 138
    iget-object v4, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iput-boolean v6, v4, Lcom/htc/home/personalize/olrespicker/UIHandler;->showNetworkSetting:Z

    .line 139
    iget-object v4, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 142
    :cond_5
    invoke-direct {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->initPhase1()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mPrepareIconThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mPrepareIconThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mPrepareIconThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dbReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dbReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 240
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/htc/home/personalize/catechooser/CategoryChooser;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    iget-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iget-boolean v1, v1, Lcom/htc/home/personalize/olrespicker/UIHandler;->showNetworkSetting:Z

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iget-boolean v1, v1, Lcom/htc/home/personalize/olrespicker/UIHandler;->waitForWireless:Z

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iput-boolean v2, v1, Lcom/htc/home/personalize/olrespicker/UIHandler;->waitForWireless:Z

    .line 202
    invoke-direct {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->askDB2Load()V

    .line 210
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->orientationChanged:Z

    .line 213
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.home.personalize.storedatamanager.ACTION_MYCSEXCEPTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    return-void

    .line 203
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    iget-boolean v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dataLoaded:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dbReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    .line 204
    invoke-direct {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->askDB2Load()V

    goto :goto_0

    .line 205
    :cond_3
    iget-boolean v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dataLoaded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->orientationChanged:Z

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->reloadList()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 220
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dataLoaded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    aput-object v2, v0, v1

    .line 221
    .local v0, ret:[Ljava/lang/Object;
    return-object v0
.end method

.method public reloadList()V
    .locals 4

    .prologue
    .line 356
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mPrepareIconThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mPrepareIconThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mPrepareIconThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 366
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    invoke-static {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->getWallpaperCategory(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 369
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/olrespicker/UIHandler;->handleNotifyDataSetChanged(I)V

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 376
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 437
    :cond_2
    :goto_0
    return-void

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mPrepareIconThread:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mPrepareIconThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 382
    :cond_4
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/home/personalize/catechooser/CategoryChooser$3;

    invoke-direct {v3, p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser$3;-><init>(Lcom/htc/home/personalize/catechooser/CategoryChooser;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mPrepareIconThread:Ljava/lang/Thread;

    .line 415
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mPrepareIconThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 417
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->dataLoaded:Z

    .line 420
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    new-instance v3, Lcom/htc/home/personalize/catechooser/CategoryChooser$4;

    invoke-direct {v3, p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser$4;-><init>(Lcom/htc/home/personalize/catechooser/CategoryChooser;)V

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/olrespicker/UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 428
    invoke-virtual {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CATE_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, cateId:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 430
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 431
    iget-object v2, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/storedatamanager/Category;

    iget-object v2, v2, Lcom/htc/home/personalize/storedatamanager/Category;->categoryID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 432
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->choose(I)V

    goto :goto_0

    .line 430
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setupHeaderBar()V
    .locals 2

    .prologue
    .line 245
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 247
    iget-object v0, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 248
    return-void
.end method

.method public updateStatus()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.class public Lcom/htc/home/personalize/olrespicker/OnlineResPicker;
.super Landroid/app/Activity;
.source "OnlineResPicker.java"

# interfaces
.implements Lcom/htc/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;
.implements Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;
.implements Lcom/htc/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/olrespicker/OnlineResPicker$12;,
        Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;,
        Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_HUB_ONLINE_ONLINERESPICKER_SCENE:Ljava/lang/String; = "com.htc.home.personalize.ACTION_HUB_SCENE"

.field public static final ACTION_HUB_ONLINE_ONLINERESPICKER_WALLPAPER:Ljava/lang/String; = "com.htc.home.personalize.ACTION_HUB_WALLPAPER"

.field public static final ACTION_ONLINE_ONLINERESPICKER_SCENE:Ljava/lang/String; = "com.htc.personalizer.action.ONLINERESPICKER_SCENE"

.field public static final ACTION_ONLINE_ONLINERESPICKER_WALLPAPER:Ljava/lang/String; = "com.htc.personalize.action.ONLINERESPICKER_WALLPAPER"

.field public static final ACTION_UDPATE_PANELITEM:Ljava/lang/String; = "com.htc.home.personalize.action.UPDATE_PANELITEM"

.field private static final CACHE_SIZE:I = 0x14

.field public static final CATE_ID:Ljava/lang/String; = "CATE_ID"

.field public static final CATE_LABEL:Ljava/lang/String; = "CATE_LABEL"

.field public static final EXTRA_UPDATE_GUID:Ljava/lang/String; = "extra_update_guid"

.field public static final EXTRA_UPDATE_RESULT:Ljava/lang/String; = "extra_update_result"

.field public static final GUID:Ljava/lang/String; = "GUID"

.field private static final MENU_VIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field public static final TYPE:Ljava/lang/String; = "RES_TYPE"

.field private static mBaseIndex:I

.field private static mGridView:Lcom/htc/widget/HtcGridView;

.field private static mListView:Lcom/htc/widget/HtcListView;

.field private static mPageSize:I


# instance fields
.field private MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

.field private adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

.field private cateId:Ljava/lang/String;

.field private cateName:Ljava/lang/String;

.field currentSelect:I

.field private currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field private dataLoaded:Z

.field private dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

.field private mContext:Landroid/content/Context;

.field mDeckControl:Lcom/htc/widget/DeckControl;

.field mDeckControlView:Lcom/htc/widget/DeckControlView;

.field private mFooterBar:Lcom/htc/widget/HtcFooter;

.field private mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mGalleryClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

.field private mGallerySelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

.field private mHeaderCountText:Ljava/lang/String;

.field private mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mHeaderTitleText:Ljava/lang/String;

.field private mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

.field mPreloadBackground:Landroid/graphics/Bitmap;

.field private mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

.field private miDBResult:I

.field private onPause:Z

.field private orientationChanged:Z

.field private sceneInstallReceiver:Landroid/content/BroadcastReceiver;

.field private final sceneMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectGuid:Ljava/lang/String;

.field private final textBuffer:Ljava/lang/StringBuilder;

.field private thread:Lcom/htc/home/personalize/abstractresource/PrepareThread;

.field private type:I

.field private uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

.field private updateItemReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    sput v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mBaseIndex:I

    .line 110
    const/16 v0, 0xa

    sput v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mPageSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    .line 89
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->updateItemReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;

    .line 92
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->thread:Lcom/htc/home/personalize/abstractresource/PrepareThread;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->textBuffer:Ljava/lang/StringBuilder;

    .line 97
    iput-boolean v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->orientationChanged:Z

    .line 103
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->selectGuid:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 113
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 114
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 117
    iput v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    .line 118
    iput-boolean v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dataLoaded:Z

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneMap:Ljava/util/Map;

    .line 121
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 122
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 123
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 124
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 125
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderTitleText:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderCountText:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    .line 130
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mContext:Landroid/content/Context;

    .line 132
    iput v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->miDBResult:I

    .line 327
    new-instance v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGallerySelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    .line 362
    new-instance v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$2;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$2;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGalleryClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

    .line 1464
    new-instance v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$11;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$11;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->changeSelect(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/abstractresource/PrepareThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->thread:Lcom/htc/home/personalize/abstractresource/PrepareThread;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;Lcom/htc/home/personalize/abstractresource/PrepareThread;)Lcom/htc/home/personalize/abstractresource/PrepareThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->thread:Lcom/htc/home/personalize/abstractresource/PrepareThread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/olrespicker/UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/htc/widget/HtcGridView;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2LoadingView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->miDBResult:I

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;)Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->notifyStatusChange(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->onTap(Z)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2GridView()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2ListView()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2ThumbnailView()V

    return-void
.end method

.method private change2DetailsView()V
    .locals 8

    .prologue
    .line 1278
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    iget v6, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v3

    .line 1279
    .local v3, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    if-nez v3, :cond_0

    .line 1282
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change2DetailsView: res=null currentSelect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " list.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v7}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :goto_0
    return-void

    .line 1288
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1289
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.htc.store.action.DISPATCH"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1290
    const-string v5, "requester"

    const-string v6, "com.htc.store_oad"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    const-string v5, "navigate_to"

    const-string v6, "item_detail"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1292
    const-string v5, "online_item_id"

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1293
    const-string v5, "online_item_content_type"

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getViewType()I

    move-result v6

    invoke-static {v6}, Lcom/htc/home/personalize/storedatamanager/StoreDataConsts;->toStringType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    const-string v5, "online_item_v1_id"

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    const-string v5, "online_item_v1_type"

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getAppType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->fakeStatus(Lcom/htc/home/personalize/onlineresource/OnlineResource;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v4

    .line 1297
    .local v4, status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$12;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    invoke-virtual {v4}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1308
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1309
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1310
    const-string v6, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1311
    const-string v5, "online_item_optional_data"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1315
    :cond_1
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1316
    :catch_0
    move-exception v1

    .line 1317
    .local v1, e:Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    const-string v6, "change2DetailsView: ActivityNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1299
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_0
    const-string v5, "download_status"

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1302
    :pswitch_1
    const-string v5, "download_status"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1305
    :pswitch_2
    const-string v5, "download_status"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1297
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private change2GridView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1325
    const v3, 0x7f0b002b

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    const v3, 0x7f0b0044

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1327
    .local v2, panel_layout:Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1329
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v3}, Lcom/htc/widget/DeckControl;->pause()V

    .line 1331
    const v3, 0x7f0b0046

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1332
    .local v1, list_layout:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    sget-object v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1336
    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iput-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 1337
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->setAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 1338
    const v3, 0x7f0b0047

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1339
    .local v0, grid_layout:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1340
    sget-object v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcGridView;->setVisibility(I)V

    .line 1341
    sget-object v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1343
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1344
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateIndex()V

    .line 1345
    return-void
.end method

.method private change2ListView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1350
    const v3, 0x7f0b002b

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1351
    const v3, 0x7f0b0044

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1352
    .local v2, panel_layout:Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1353
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v3, v4}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1354
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v3}, Lcom/htc/widget/DeckControl;->pause()V

    .line 1356
    const v3, 0x7f0b0047

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1357
    .local v0, grid_layout:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    sget-object v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1361
    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->LIST:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iput-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 1362
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->setAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 1363
    const v3, 0x7f0b0046

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1364
    .local v1, list_layout:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    sget-object v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1366
    sget-object v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1368
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1369
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateButtons()V

    .line 1370
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateIndex()V

    .line 1371
    return-void
.end method

.method private change2LoadingView()V
    .locals 8

    .prologue
    const v7, 0x7f0b0047

    const v6, 0x7f0b0046

    const v5, 0x7f0b0044

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1152
    const v1, 0x7f0b0048

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1155
    .local v0, loadingText:Landroid/widget/TextView;
    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->LIST:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v1, v2, :cond_0

    .line 1156
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1158
    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1163
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1166
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1194
    :goto_0
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCornerStrokeColor(I)V

    .line 1195
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1196
    return-void

    .line 1167
    :cond_0
    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v1, v2, :cond_1

    .line 1168
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1170
    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1175
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1177
    const v1, 0x7f0b000d

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    goto :goto_0

    .line 1180
    :cond_1
    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1186
    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1187
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1189
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1190
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    goto :goto_0
.end method

.method private change2ThumbnailView()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 1249
    const v3, 0x7f0b002b

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1250
    const v3, 0x7f0b0047

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1251
    .local v0, grid_layout:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    sget-object v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1254
    const v3, 0x7f0b0046

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1255
    .local v1, list_layout:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1256
    sget-object v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1260
    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iput-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 1261
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->setAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 1262
    const v3, 0x7f0b0044

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1263
    .local v2, panel_layout:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1265
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v3}, Lcom/htc/widget/DeckControl;->resume()V

    .line 1266
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->notifyDataSetChanged()V

    .line 1267
    iget v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v3

    iget v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    if-le v3, v4, :cond_0

    .line 1268
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 1270
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1271
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateButtons()V

    .line 1272
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateIndex()V

    .line 1273
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateLabel()V

    .line 1274
    return-void
.end method

.method private changeSelect(I)V
    .locals 2
    .parameter "i"

    .prologue
    const/4 v1, -0x1

    .line 686
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-nez v0, :cond_1

    .line 687
    iput v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    .line 692
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$12;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 700
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateButtons()V

    .line 701
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateIndex()V

    .line 702
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateLabel()V

    .line 704
    :goto_1
    :pswitch_0
    return-void

    .line 688
    :cond_1
    if-gt v1, p1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 689
    iput p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    goto :goto_0

    .line 694
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateButtons()V

    goto :goto_1

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 911
    const v5, 0x7f030016

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->setContentView(I)V

    .line 912
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->setupHeaderFooter()V

    .line 920
    new-instance v5, Lcom/htc/home/personalize/olrespicker/UIHandler;

    invoke-direct {v5, p0, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;-><init>(Landroid/app/Activity;Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;)V

    iput-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    .line 921
    new-instance v5, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    iput-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    .line 924
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 925
    .local v1, itemWidth:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 926
    .local v0, itemHeight:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 928
    .local v4, reflectionHeight:I
    const v5, 0x7f0b0030

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/DeckControlView;

    iput-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 929
    new-instance v5, Lcom/htc/widget/DeckControl;

    iget-object v6, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    const/16 v7, 0x14

    invoke-direct {v5, p0, v6, v7}, Lcom/htc/widget/DeckControl;-><init>(Landroid/content/Context;Lcom/htc/widget/DeckControlView;I)V

    iput-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 930
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    iget-object v6, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v5, v6}, Lcom/htc/widget/DeckControlView;->addView(Lcom/htc/sunny/SView;)V

    .line 931
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 932
    .local v3, refColor:I
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v5, v3, v3, v3}, Lcom/htc/widget/DeckControl;->setReflectionColor(III)V

    .line 933
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v5, v4}, Lcom/htc/widget/DeckControl;->setReflectionHeight(I)V

    .line 934
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v5, v1, v0}, Lcom/htc/widget/DeckControl;->setItemSize(II)V

    .line 935
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/DeckControl;->setYOffset(F)V

    .line 938
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v6, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGallerySelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/DeckControl;->setOnItemSelectedListener(Lcom/htc/widget/DeckControl$OnItemSelectedListener;)V

    .line 939
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v6, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGalleryClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/DeckControl;->setOnItemClickListener(Lcom/htc/widget/DeckControl$OnItemClickListener;)V

    .line 940
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->initDefaultView()V

    .line 941
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/DeckControl;->setBackground(I)V

    .line 968
    const v5, 0x7f0b000d

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcGridView;

    sput-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    .line 969
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 970
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcGridView;->setDrawSelectorOnTop(Z)V

    .line 971
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    const v6, 0x7f020007

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcGridView;->setSelector(I)V

    .line 972
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcGridView;->setVerticalScrollBarEnabled(Z)V

    .line 973
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcGridView;->setTopRound(Landroid/graphics/drawable/Drawable;)V

    .line 974
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcGridView;->setBottomRound(Landroid/graphics/drawable/Drawable;)V

    .line 977
    const v5, 0x7f0b0014

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView;

    sput-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    .line 978
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 979
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 980
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 981
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 983
    new-instance v2, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    .line 1012
    .local v2, onScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcGridView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1013
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1015
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1017
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1018
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x7f090007

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1022
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1023
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1024
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x20c01fe

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1026
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1029
    const v5, 0x7f0b0048

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$9;

    invoke-direct {v6, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$9;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    return-void
.end method

.method private doNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 1073
    if-nez p1, :cond_0

    .line 1074
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    const-string v2, " intent = null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :goto_0
    return-void

    .line 1078
    :cond_0
    const-string v1, "all_category"

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->cateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1079
    iget v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v5, v1, :cond_2

    const v1, 0x7f09003e

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->cateName:Ljava/lang/String;

    .line 1086
    :goto_2
    const-string v1, "GUID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->selectGuid:Ljava/lang/String;

    .line 1087
    const-string v1, "GUID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1089
    new-instance v1, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->cateId:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    .line 1090
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->onCreate()V

    .line 1091
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v1, p0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->addObserver(Ljava/util/Observer;)V

    .line 1093
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->setOnlineResourceList(Lcom/htc/home/personalize/onlineresource/OnlineResourceList;)V

    .line 1094
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DeckControl;->setAdapter(Lcom/htc/widget/DeckControlAdapter;)V

    .line 1095
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/olrespicker/UIHandler;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 1098
    iget v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v5, v1, :cond_1

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneInstallReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 1099
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1100
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.launcher.scene.ACTION_DOWNLOAD_SCENE_SAVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1103
    new-instance v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 1140
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1144
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->cateName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderTitleText:Ljava/lang/String;

    .line 1145
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderTitleText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderCountText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1079
    :cond_2
    const v1, 0x7f09003f

    goto :goto_1

    .line 1083
    :cond_3
    const-string v1, "CATE_LABEL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->cateName:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private doUpdateButtons()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 760
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 761
    .local v0, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    if-eqz v2, :cond_2

    .line 762
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 763
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 785
    :goto_1
    return-void

    .line 760
    .end local v0           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    iget v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v0

    goto :goto_0

    .line 767
    .restart local v0       #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_2
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 768
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 770
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->fakeStatus(Lcom/htc/home/personalize/onlineresource/OnlineResource;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v1

    .line 771
    .local v1, status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    sget-object v2, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$12;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    invoke-virtual {v1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 773
    :pswitch_0
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    goto :goto_1

    .line 779
    :pswitch_1
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    goto :goto_1

    .line 782
    :pswitch_2
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f09001e

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    goto :goto_1

    .line 771
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doUpdateIndex()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 726
    const-string v1, ""

    .line 728
    .local v1, strHeaderCountText:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 729
    .local v0, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :goto_0
    instance-of v3, v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    .end local v0           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    iget v3, v0, Lcom/htc/home/personalize/onlineresource/DummyResource;->flag:I

    if-nez v3, :cond_1

    .line 735
    :goto_1
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    sget-object v4, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v3, v4, :cond_2

    .line 736
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderCountText:Ljava/lang/String;

    .line 740
    :goto_2
    const-string v3, "%s %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderTitleText:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderCountText:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, strHeaderText:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 742
    return-void

    .line 728
    .end local v2           #strHeaderText:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    iget v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v0

    goto :goto_0

    .line 732
    :cond_1
    const-string v3, "(%d/%d)"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v5}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 738
    :cond_2
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderCountText:Ljava/lang/String;

    goto :goto_2
.end method

.method private doUpdateLabel()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 745
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->textBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 746
    const/4 v0, 0x0

    .line 748
    .local v0, isDownloading:Z
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 749
    .local v1, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :goto_0
    if-eqz v1, :cond_0

    .line 750
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->textBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->fakeStatus(Lcom/htc/home/personalize/onlineresource/OnlineResource;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v5

    if-ne v3, v5, :cond_3

    const/4 v0, 0x1

    .line 754
    :cond_0
    :goto_2
    const v3, 0x7f0b0034

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 755
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->textBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    const v3, 0x7f0b0033

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 757
    return-void

    .line 748
    .end local v1           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    iget v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-virtual {v3, v5}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v1

    goto :goto_0

    .line 750
    .restart local v1       #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_2
    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move v0, v4

    .line 751
    goto :goto_2

    .line 756
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_4
    const/16 v4, 0x8

    goto :goto_3
.end method

.method private goto_()V
    .locals 7

    .prologue
    .line 876
    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    iget v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v3

    .line 877
    .local v3, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/htc/home/personalize/onlineresource/DummyResource;

    if-eqz v4, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 882
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "GUID"

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 884
    const-string v5, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 887
    :cond_2
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 888
    .local v0, caller:Landroid/content/ComponentName;
    sget-object v4, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "goto_: intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    if-eqz v0, :cond_3

    .line 890
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->setResult(ILandroid/content/Intent;)V

    .line 906
    :goto_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->finish()V

    goto :goto_0

    .line 895
    :cond_3
    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v4, v5, :cond_4

    .line 896
    const-string v4, "com.htc.home.personalize"

    const-string v5, "com.htc.home.personalize.WallpaperPicker"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    :goto_2
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 902
    :catch_0
    move-exception v1

    .line 903
    .local v1, e:Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    const-string v5, "goto_: fail to launch Picker"

    invoke-static {v4, v5, v1}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 898
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_4
    const-string v4, "com.htc.home.personalize"

    const-string v5, "com.htc.home.personalize.scene.ScenePicker"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private initDefaultView()V
    .locals 6

    .prologue
    .line 1055
    const/4 v3, 0x1

    iget v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v3, v4, :cond_0

    const v2, 0x7f02000d

    .line 1057
    .local v2, resId:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/htc/home/personalize/util/BitmapUtils;->getWallpaperOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 1059
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030010

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1060
    .local v0, layout:Landroid/view/View;
    const v3, 0x7f0b0037

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1061
    .local v1, preview:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1063
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v3, v0}, Lcom/htc/widget/DeckControl;->setDefaultView(Landroid/view/View;)V

    .line 1064
    return-void

    .line 1055
    .end local v0           #layout:Landroid/view/View;
    .end local v1           #preview:Landroid/widget/ImageView;
    .end local v2           #resId:I
    :cond_0
    const v2, 0x7f02000f

    goto :goto_0
.end method

.method private loadAspect()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1392
    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v2, v3, :cond_2

    .line 1393
    invoke-static {p0}, Lcom/htc/home/personalize/WallpaperPicker;->getPanelType(Landroid/content/Context;)Z

    move-result v0

    .line 1394
    .local v0, isThumbnail:Z
    if-eqz v0, :cond_1

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    :goto_0
    iput-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 1400
    .end local v0           #isThumbnail:Z
    :cond_0
    :goto_1
    return-void

    .line 1394
    .restart local v0       #isThumbnail:Z
    :cond_1
    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    goto :goto_0

    .line 1395
    .end local v0           #isThumbnail:Z
    :cond_2
    iget v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v4, v2, :cond_0

    .line 1397
    const-string v2, "PREF"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1398
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "EXTRA_ASPECT_ISTHUMB"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    :goto_2
    iput-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->LIST:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    goto :goto_2
.end method

.method private notifyStatusChange(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 865
    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->fakeAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->fakeAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->fakeAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->notifyUpdateItem(I)V

    .line 872
    :goto_0
    iget v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->changeSelect(I)V

    .line 873
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private onTap(Z)V
    .locals 7
    .parameter "cancelable"

    .prologue
    .line 813
    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    iget v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v2

    .line 815
    .local v2, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/htc/home/personalize/onlineresource/DummyResource;

    if-eqz v4, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->fakeStatus(Lcom/htc/home/personalize/onlineresource/OnlineResource;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v3

    .line 820
    .local v3, status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    sget-object v4, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$12;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    invoke-virtual {v3}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 822
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->goto_()V

    goto :goto_0

    .line 826
    :pswitch_1
    invoke-static {p0}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->activateCS(Landroid/app/Activity;)V

    .line 827
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSActive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 830
    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    invoke-static {v4, v5, v2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getResourcePath(Landroid/content/Context;ILcom/htc/home/personalize/abstractresource/Resource;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    iget-object v6, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v5, v6}, Lcom/htc/home/personalize/localresource/LocalResource;->check(Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource;Lcom/htc/home/personalize/localresource/LocalResourceList;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 835
    .local v0, details:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 836
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->setPrepareDownload(Z)V

    .line 837
    iget v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-direct {p0, v4}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->notifyStatusChange(I)V

    .line 839
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 840
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.htc.home.personalize.storedatamanager.ACTION_GETDOWNLOADURL"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const-string v4, "storedata_type"

    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getViewType()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    const-string v4, "store_productid"

    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->startGetDownloadUrl(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 851
    .end local v0           #details:Ljava/io/File;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    if-eqz p1, :cond_0

    .line 852
    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->removeOrCancel()V

    .line 853
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->setPrepareDownload(Z)V

    .line 854
    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->cancelGetDownloadUrl(Ljava/lang/String;)V

    .line 855
    iget v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-direct {p0, v4}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->notifyStatusChange(I)V

    goto :goto_0

    .line 820
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private saveAspect()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1376
    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v4, v5, :cond_2

    .line 1377
    sget-object v4, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v4, v5, :cond_1

    :goto_0
    invoke-static {p0, v2}, Lcom/htc/home/personalize/WallpaperPicker;->setPanelType(Landroid/content/Context;Z)Z

    .line 1389
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 1377
    goto :goto_0

    .line 1379
    :cond_2
    iget v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v2, v4, :cond_0

    .line 1381
    const-string v4, "PREF"

    invoke-virtual {p0, v4, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1382
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "EXTRA_ASPECT_ISTHUMB"

    sget-object v4, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v4, v7, :cond_3

    move v4, v2

    :goto_2
    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1385
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.launcher.scene.ACTION_ASPECT_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1386
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "EXTRA_ASPECT_ISTHUMB"

    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-object v6, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v5, v6, :cond_4

    :goto_3
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1387
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    move v4, v3

    .line 1382
    goto :goto_2

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_4
    move v2, v3

    .line 1386
    goto :goto_3
.end method


# virtual methods
.method public askDB2load()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 586
    sget-object v4, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnlineResPicker.askDB2load: dbReceiver should be null "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    if-eqz v2, :cond_1

    .line 607
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 586
    goto :goto_0

    .line 592
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 594
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.home.personalize.storedatamanager.ACTION_GETITEMLIST_RESPONSE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 595
    .local v1, myFilter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;)V

    iput-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    .line 596
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 597
    sget-object v2, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "askDB2load: dbReceiver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.home.personalize.storedatamanager.ACTION_GETITEMLIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .local v0, intentToService:Landroid/content/Intent;
    const-string v2, "storedata_type"

    iget v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 601
    const-string v2, "store_id"

    iget-object v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->cateId:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->hasMorePages()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :cond_2
    :goto_2
    sput v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mBaseIndex:I

    .line 604
    const-string v2, "base_idx"

    sget v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mBaseIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    const-string v2, "page_size"

    sget v3, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mPageSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 603
    :cond_3
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v3

    goto :goto_2
.end method

.method public change2NoDataView()V
    .locals 8

    .prologue
    const v7, 0x7f0b0047

    const v6, 0x7f0b0046

    const v5, 0x7f0b0044

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1200
    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1202
    const v1, 0x7f0b0048

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1204
    .local v0, nodataText:Landroid/widget/TextView;
    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->LIST:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v1, v2, :cond_0

    .line 1205
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1207
    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1208
    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1212
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1214
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1242
    :goto_0
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCornerStrokeColor(I)V

    .line 1243
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1244
    return-void

    .line 1215
    :cond_0
    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v1, v2, :cond_1

    .line 1216
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1218
    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1222
    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1223
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1225
    const v1, 0x7f0b000d

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    goto :goto_0

    .line 1228
    :cond_1
    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1234
    const v1, 0x20a0006

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1235
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1237
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1238
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    goto :goto_0
.end method

.method fakeStatus(Lcom/htc/home/personalize/onlineresource/OnlineResource;)Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .locals 3
    .parameter "res"

    .prologue
    .line 788
    invoke-virtual {p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v0

    .line 789
    .local v0, status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v1, v2, :cond_0

    .line 793
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 809
    :cond_0
    :goto_0
    return-object v0

    .line 798
    :cond_1
    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-eq v1, v0, :cond_0

    .line 806
    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    sget-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sparse-switch p1, :sswitch_data_0

    .line 205
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 195
    :sswitch_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 197
    if-nez p2, :cond_0

    goto :goto_0

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x522894 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "btn"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v0, :cond_0

    .line 375
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->onTap(Z)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2DetailsView()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 138
    sget-object v5, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mContext:Landroid/content/Context;

    .line 141
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->checkLangChange(Landroid/content/Context;)Z

    move-result v1

    .line 144
    .local v1, bLangChanged:Z
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    .line 145
    .local v4, tmp:[Ljava/lang/Object;
    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 146
    const/4 v5, 0x0

    aget-object v5, v4, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    .line 147
    aget-object v5, v4, v7

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dataLoaded:Z

    .line 148
    iget-object v6, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneMap:Ljava/util/Map;

    const/4 v5, 0x2

    aget-object v5, v4, v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    iput-boolean v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->orientationChanged:Z

    .line 152
    :cond_0
    const-string v5, "common_app_bkg"

    const v6, 0x20806b7

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 153
    .local v2, background:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 156
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 160
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.htc.personalizer.action.ONLINERESPICKER_SCENE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.htc.home.personalize.ACTION_HUB_SCENE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 163
    :cond_1
    iput v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    .line 164
    const-string v5, "all_category"

    iput-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->cateId:Ljava/lang/String;

    .line 173
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doCreate()V

    .line 175
    invoke-static {p0}, Lcom/htc/home/personalize/util/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 176
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iput-boolean v7, v5, Lcom/htc/home/personalize/olrespicker/UIHandler;->showNetworkSetting:Z

    .line 177
    iget-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 180
    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doNewIntent(Landroid/content/Intent;)V

    .line 182
    new-instance v5, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    iget-object v6, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    invoke-direct {v5, v6, v7}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    .line 183
    return-void

    .line 166
    .restart local v0       #action:Ljava/lang/String;
    :cond_4
    const-string v5, "com.htc.personalize.action.ONLINERESPICKER_WALLPAPER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.htc.home.personalize.ACTION_HUB_WALLPAPER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    :cond_5
    const-string v5, "RES_TYPE"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    .line 169
    const-string v5, "CATE_ID"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->cateId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 384
    const/4 v0, 0x1

    const-string v1, ""

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 385
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 255
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneInstallReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    iput-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    if-eqz v1, :cond_1

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    iput-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->updateItemReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->updateItemReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    iput-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->updateItemReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    .line 276
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    iput-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->thread:Lcom/htc/home/personalize/abstractresource/PrepareThread;

    invoke-static {v1}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->askToStopPreparing(Lcom/htc/home/personalize/abstractresource/PrepareThread;)Z

    .line 282
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->destroy()V

    .line 283
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControlView;->release()V

    .line 284
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 285
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    :cond_4
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    if-eqz v1, :cond_5

    .line 289
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcGridView;->setVisibility(I)V

    .line 290
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mGridView:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    :cond_5
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    if-eqz v1, :cond_6

    .line 294
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1, v3}, Lcom/htc/widget/DeckControl;->setOnItemSelectedListener(Lcom/htc/widget/DeckControl$OnItemSelectedListener;)V

    .line 295
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 298
    :cond_6
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_7

    .line 299
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 300
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    :cond_7
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v1, :cond_8

    .line 304
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    invoke-virtual {v1, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->setOnlineResourceList(Lcom/htc/home/personalize/onlineresource/OnlineResourceList;)V

    .line 305
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->onDestroy()V

    .line 306
    iput-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    .line 309
    :cond_8
    iput-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    .line 311
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy: set list to null"

    invoke-static {v1, v2}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 313
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy: unreg dbReceiver"

    invoke-static {v1, v2, v0}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onItemClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, arg0:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    iget v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    if-eq p3, v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->onTap(Z)V

    goto :goto_0
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v1, p3}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v0

    .line 343
    .local v0, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    if-eqz v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-direct {p0, p3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->changeSelect(I)V

    .line 349
    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v1, v2, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2DetailsView()V

    goto :goto_0
.end method

.method public onItemSelected(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, arg0:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->changeSelect(I)V

    .line 325
    return-void
.end method

.method public onNothingSelected(Lcom/htc/widget/AdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, arg0:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->changeSelect(I)V

    .line 320
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 414
    sget-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$12;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_0
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    if-eqz v0, :cond_3

    .line 435
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2LoadingView()V

    .line 443
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->saveAspect()V

    .line 446
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 416
    :pswitch_0
    const-string v0, "ANALYTIC_HomePersonalize"

    const-string v1, "[OnlineResPicker]THUMBNAIL"

    invoke-static {v0, v1}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v0, v1, :cond_2

    .line 418
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2GridView()V

    goto :goto_0

    .line 420
    :cond_2
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2ListView()V

    goto :goto_0

    .line 425
    :pswitch_1
    const-string v0, "ANALYTIC_HomePersonalize"

    const-string v1, "[OnlineResPicker]ICON/LIST"

    invoke-static {v0, v1}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2ThumbnailView()V

    goto :goto_0

    .line 437
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2NoDataView()V

    goto :goto_1

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->onPause:Z

    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 251
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 391
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 392
    .local v0, item:Landroid/view/MenuItem;
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$12;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v2}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 409
    :goto_0
    return v3

    .line 394
    :pswitch_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v1, v2, :cond_0

    .line 395
    const v1, 0x7f090024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 396
    const v1, 0x2080326

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 398
    :cond_0
    const v1, 0x7f090004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 399
    const v1, 0x208032a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 405
    :pswitch_1
    const v1, 0x7f09001a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 406
    const v1, 0x20809b9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 212
    iput-boolean v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->onPause:Z

    .line 214
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->loadAspect()V

    .line 215
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iget-boolean v2, v2, Lcom/htc/home/personalize/olrespicker/UIHandler;->showNetworkSetting:Z

    if-nez v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iget-boolean v2, v2, Lcom/htc/home/personalize/olrespicker/UIHandler;->waitForWireless:Z

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iput-boolean v3, v2, Lcom/htc/home/personalize/olrespicker/UIHandler;->waitForWireless:Z

    .line 219
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2LoadingView()V

    .line 220
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->askDB2load()V

    .line 230
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->orientationChanged:Z

    .line 232
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->updateItemReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;

    if-nez v2, :cond_1

    .line 233
    new-instance v2, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;)V

    iput-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->updateItemReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;

    .line 235
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.htc.home.personalize.action.UPDATE_PANELITEM"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->updateItemReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$UpdatePanelItemReceier;

    invoke-virtual {p0, v2, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.home.personalize.storedatamanager.ACTION_MYCSEXCEPTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    return-void

    .line 221
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    iget-boolean v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dataLoaded:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dbReceiver:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$DBReceiver;

    if-nez v2, :cond_3

    .line 222
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2LoadingView()V

    .line 223
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->askDB2load()V

    goto :goto_0

    .line 224
    :cond_3
    iget-boolean v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dataLoaded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->orientationChanged:Z

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->reloadList()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dataLoaded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneMap:Ljava/util/Map;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public reloadList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 610
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    const-string v2, "reloadList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->thread:Lcom/htc/home/personalize/abstractresource/PrepareThread;

    invoke-static {v1}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->askToPausePreparing(Lcom/htc/home/personalize/abstractresource/PrepareThread;)Z

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, dummy:Lcom/htc/home/personalize/onlineresource/DummyResource;
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->reload()V

    .line 616
    iget v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->miDBResult:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->hasMorePages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    new-instance v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    .end local v0           #dummy:Lcom/htc/home/personalize/onlineresource/DummyResource;
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->cateId:Ljava/lang/String;

    iget v4, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/onlineresource/DummyResource;-><init>(Lcom/htc/home/personalize/onlineresource/OnlineResourceList;Ljava/lang/String;Lcom/htc/home/personalize/olrespicker/OnlineResPicker;II)V

    .line 620
    .restart local v0       #dummy:Lcom/htc/home/personalize/onlineresource/DummyResource;
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 682
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-boolean v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dataLoaded:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v1, v5, :cond_2

    .line 626
    const-string v1, "Scene"

    invoke-static {p0, v1}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->resetDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 628
    :cond_2
    iput-boolean v5, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->dataLoaded:Z

    .line 629
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->setAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 631
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->selectGuid:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 632
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v1, :cond_3

    .line 633
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->selectGuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->indexOfGuid(Ljava/lang/String;)I

    move-result v6

    .line 634
    .local v6, tmp:I
    if-eq v7, v6, :cond_4

    .line 635
    iput-object v8, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->selectGuid:Ljava/lang/String;

    .line 636
    invoke-direct {p0, v6}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->changeSelect(I)V

    .line 656
    .end local v6           #tmp:I
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    new-instance v2, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$7;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/olrespicker/UIHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 640
    .restart local v6       #tmp:I
    :cond_4
    iget v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->miDBResult:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->hasMorePages()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 643
    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineresource/DummyResource;->loadNextPage()V

    goto :goto_1

    .line 645
    :cond_5
    sget-object v1, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reloadList: can not find specified item selectGuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->selectGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iput-object v8, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->selectGuid:Ljava/lang/String;

    goto :goto_1

    .line 650
    .end local v6           #tmp:I
    :cond_6
    iget v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    if-ne v7, v1, :cond_3

    .line 653
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->changeSelect(I)V

    goto :goto_1
.end method

.method public setupHeaderFooter()V
    .locals 2

    .prologue
    .line 1042
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 1043
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 1045
    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooter;

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 1046
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 1047
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 1049
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 1050
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 12
    .parameter "list"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 455
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v6, p2

    check-cast v6, [Ljava/lang/Object;

    .line 457
    .local v6, tmp:[Ljava/lang/Object;
    const/4 v7, 0x0

    aget-object v2, v6, v7

    check-cast v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 458
    .local v2, oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    aget-object v3, v6, v11

    check-cast v3, Lcom/htc/home/personalize/onlineresource/OnlineResource;

    .line 459
    .local v3, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    const/4 v7, 0x2

    aget-object v7, v6, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 460
    .local v0, action:I
    const/4 v7, 0x3

    aget-object v7, v6, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 461
    .local v4, result:I
    if-nez v3, :cond_2

    move-object v5, v1

    .line 462
    .local v5, status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :goto_0
    if-nez v3, :cond_3

    .line 463
    .local v1, label:Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update: label="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " oldStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->type:I

    if-ne v11, v7, :cond_4

    if-eqz v3, :cond_4

    sget-object v7, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v7, v2, :cond_0

    sget-object v7, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v8

    if-eq v7, v8, :cond_1

    :cond_0
    sget-object v7, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v7, v2, :cond_4

    sget-object v7, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v8

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->sceneMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 583
    :cond_1
    :goto_2
    return-void

    .line 461
    .end local v1           #label:Ljava/lang/String;
    .end local v5           #status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_2
    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v5

    goto :goto_0

    .line 462
    .restart local v5       #status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_3
    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 481
    .restart local v1       #label:Ljava/lang/String;
    :cond_4
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 572
    :pswitch_1
    if-eqz v3, :cond_e

    const/16 v7, 0xe

    if-eq v0, v7, :cond_e

    .line 574
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v7, :cond_1

    .line 575
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iget-object v8, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->indexOfGuid(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/UIHandler;->handleUpdateStatus(I)V

    goto :goto_2

    .line 483
    :pswitch_2
    const/16 v7, -0xa

    if-ne v7, v4, :cond_6

    .line 485
    iget-boolean v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->onPause:Z

    if-nez v7, :cond_5

    .line 486
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 488
    :cond_5
    sget-object v7, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    const-string v8, "SD card not ready."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    new-instance v8, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$3;

    invoke-direct {v8, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$3;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/UIHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 497
    :cond_6
    const/16 v7, -0xb

    if-ne v7, v4, :cond_8

    .line 498
    iget-boolean v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->onPause:Z

    if-nez v7, :cond_7

    .line 499
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 501
    :cond_7
    sget-object v7, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    const-string v8, "Not enough storage."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    new-instance v8, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$4;

    invoke-direct {v8, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$4;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/UIHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 510
    :cond_8
    const/16 v7, -0x14

    if-ne v7, v4, :cond_a

    .line 511
    iget-boolean v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->onPause:Z

    if-nez v7, :cond_9

    .line 512
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v8, 0x1a

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 514
    :cond_9
    sget-object v7, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->TAG:Ljava/lang/String;

    const-string v8, "Reached limit count."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    new-instance v8, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$5;

    invoke-direct {v8, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$5;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/UIHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 523
    :cond_a
    if-eqz v4, :cond_c

    .line 525
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v7, :cond_b

    .line 526
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iget-object v8, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->indexOfGuid(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/UIHandler;->handleUpdateStatus(I)V

    .line 528
    :cond_b
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    new-instance v8, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$6;

    invoke-direct {v8, p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$6;-><init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/UIHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 537
    :cond_c
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v7, :cond_1

    .line 538
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iget-object v8, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->indexOfGuid(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/UIHandler;->handleUpdateStatus(I)V

    goto/16 :goto_2

    .line 553
    :pswitch_3
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->adapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    iget-object v8, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->fakeAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v7

    if-ne v2, v7, :cond_1

    .line 555
    if-eqz v3, :cond_1

    .line 556
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v7, :cond_d

    .line 557
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    iget-object v8, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getProductID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->indexOfGuid(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/olrespicker/UIHandler;->handleNotifyDataSetChanged(I)V

    goto/16 :goto_2

    .line 559
    :cond_d
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    invoke-virtual {v7, v10}, Lcom/htc/home/personalize/olrespicker/UIHandler;->handleNotifyDataSetChanged(I)V

    goto/16 :goto_2

    .line 579
    :cond_e
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    invoke-virtual {v7, v10}, Lcom/htc/home/personalize/olrespicker/UIHandler;->handleUpdateStatus(I)V

    goto/16 :goto_2

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public updateStatus()V
    .locals 2

    .prologue
    .line 707
    sget-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$12;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 715
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateButtons()V

    .line 716
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateLabel()V

    .line 718
    :goto_0
    :pswitch_0
    return-void

    .line 709
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doUpdateButtons()V

    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

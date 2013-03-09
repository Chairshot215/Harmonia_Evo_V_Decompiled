.class public Lcom/htc/photowidget3d/widget/ListViewManager;
.super Ljava/lang/Object;
.source "ListViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/widget/ListViewManager$1;,
        Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;,
        Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;,
        Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;,
        Lcom/htc/photowidget3d/widget/ListViewManager$OnErrorClickListener;,
        Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;,
        Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;,
        Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final RANGE_OFFSET:I = 0x5


# instance fields
.field protected mCollectionSize:I

.field private mErrorViewClickHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;

.field private mHost:Lcom/htc/android/rosie/widget/Widget$Host;

.field protected mItemIndex:I

.field mLVCLandscape:Lcom/htc/fusion/fx/controls/FxListViewCollection;

.field mLVCPortrait:Lcom/htc/fusion/fx/controls/FxListViewCollection;

.field mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

.field mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

.field protected mListItemHeight:I

.field private mListItemMessageHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;

.field protected mListItemWidth:I

.field mListView:Lcom/htc/photowidget3d/widget/FusionListView;

.field mListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

.field private mListViewMessageHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;

.field protected mOnErrorClickListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnErrorClickListener;

.field protected mOnListItemChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;

.field protected mOnListItemClickListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;

.field protected mOnListViewChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;

.field protected mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/widget/ListViewManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListViewChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;

    .line 62
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListItemClickListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;

    .line 63
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListItemChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;

    .line 64
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnErrorClickListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnErrorClickListener;

    .line 66
    new-instance v0, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;-><init>(Lcom/htc/photowidget3d/widget/ListViewManager;Lcom/htc/photowidget3d/widget/ListViewManager$1;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListItemMessageHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;

    .line 67
    new-instance v0, Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;-><init>(Lcom/htc/photowidget3d/widget/ListViewManager;Lcom/htc/photowidget3d/widget/ListViewManager$1;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewMessageHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;

    .line 68
    new-instance v0, Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;-><init>(Lcom/htc/photowidget3d/widget/ListViewManager;Lcom/htc/photowidget3d/widget/ListViewManager$1;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mErrorViewClickHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;

    .line 71
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    .line 72
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    .line 74
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 75
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVCPortrait:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 76
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVCLandscape:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 78
    iput v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mItemIndex:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOrientation:I

    .line 81
    iput v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListItemWidth:I

    .line 82
    iput v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListItemHeight:I

    .line 84
    iput v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mCollectionSize:I

    .line 90
    new-instance v0, Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-direct {v0}, Lcom/htc/photowidget3d/widget/PortraitListView;-><init>()V

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    .line 91
    new-instance v0, Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-direct {v0}, Lcom/htc/photowidget3d/widget/LandscapeListView;-><init>()V

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    .line 92
    return-void
.end method

.method static synthetic access$300(Lcom/htc/photowidget3d/widget/ListViewManager;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)V
    .locals 1
    .parameter "host"
    .parameter "context"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 97
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/photowidget3d/widget/PortraitListView;->create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)Z

    .line 98
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/photowidget3d/widget/LandscapeListView;->create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)Z

    .line 100
    invoke-interface {p1}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/widget/ListViewManager;->setOrientation(I)V

    .line 101
    return-void
.end method

.method public getItemHeight()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/PortraitListView;->getListItemHeight()I

    move-result v0

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/PortraitListView;->getListItemWidth()I

    move-result v0

    return v0
.end method

.method public getListView()Lcom/htc/photowidget3d/widget/FusionListView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScene(Landroid/content/res/Configuration;)Lcom/htc/fusion/fx/FxScene;
    .locals 2
    .parameter "config"

    .prologue
    .line 255
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 256
    .local v0, orien:I
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/LandscapeListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/LandscapeListView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/PortraitListView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    goto :goto_0
.end method

.method public isItemInRange(I)Z
    .locals 7
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    if-nez v4, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v3

    .line 214
    :cond_1
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-virtual {v4}, Lcom/htc/photowidget3d/widget/FusionListView;->getListView()Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v1

    .line 215
    .local v1, listview:Lcom/htc/fusion/fx/controls/FxListView;
    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v2

    .line 216
    .local v2, start:I
    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getLastVisibleIndex()I

    move-result v0

    .line 218
    .local v0, end:I
    sget-object v4, Lcom/htc/photowidget3d/widget/ListViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isItemInRange] Begin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", End = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-lt p1, v2, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public makeAndSetCollection(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 155
    sget-object v2, Lcom/htc/photowidget3d/widget/ListViewManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[makeAndSetCollection] +++"

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/widget/LandscapeListView;->isEnabled()Z

    move-result v1

    .line 157
    .local v1, enableLand:Z
    if-lez p1, :cond_1

    move v2, p1

    :goto_0
    iput v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mCollectionSize:I

    .line 158
    invoke-static {p1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->create(I)Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVCPortrait:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 159
    iget-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/widget/PortraitListView;->markDirty()V

    .line 160
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVCPortrait:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 161
    .local v0, collection:Lcom/htc/fusion/fx/controls/FxListViewCollection;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVCLandscape:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 162
    if-eqz v1, :cond_0

    .line 164
    invoke-static {p1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->create(I)Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVCLandscape:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 165
    iget-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v2}, Lcom/htc/photowidget3d/widget/LandscapeListView;->markDirty()V

    .line 166
    iget v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 167
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVCLandscape:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 169
    :cond_0
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 171
    iget-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v2, v3}, Lcom/htc/photowidget3d/widget/FusionListView;->setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V

    .line 172
    sget-object v2, Lcom/htc/photowidget3d/widget/ListViewManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[makeAndSetCollection] ---"

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void

    .line 157
    .end local v0           #collection:Lcom/htc/fusion/fx/controls/FxListViewCollection;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mCollectionSize:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/widget/ListViewManager;->refreshItems(II)V

    .line 240
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 1
    .parameter "tilt"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/widget/FusionListView;->onTiltChanged(F)V

    .line 276
    return-void
.end method

.method public refresh(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/photowidget3d/widget/ListViewManager;->refreshItems(II)V

    .line 226
    return-void
.end method

.method public refreshItems(II)V
    .locals 3
    .parameter "pos"
    .parameter "range"

    .prologue
    .line 230
    sget-object v0, Lcom/htc/photowidget3d/widget/ListViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[refreshItems] Pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", range = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/FusionListView;->showListView()V

    .line 232
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    .line 234
    :cond_0
    sget-object v0, Lcom/htc/photowidget3d/widget/ListViewManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[refreshItems] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/PortraitListView;->release()V

    .line 281
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    .line 283
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/LandscapeListView;->release()V

    .line 284
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    .line 286
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    .line 288
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListViewChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;

    .line 289
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListItemClickListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;

    .line 290
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListItemChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;

    .line 291
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnErrorClickListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnErrorClickListener;

    .line 293
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListItemMessageHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;

    .line 294
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewMessageHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;

    .line 295
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mErrorViewClickHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;

    .line 296
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 297
    return-void
.end method

.method public setLandscape()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    if-ne v0, v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/PortraitListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/PortraitListView;->unbindErrorImageTapListener()V

    .line 129
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/PortraitListView;->unbindListItemEventListener()V

    .line 130
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/PortraitListView;->unbindListViewEventListener()V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    .line 133
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mErrorViewClickHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/widget/FusionListView;->bindErrorImageTapListener(Lcom/htc/fusion/fx/MessageListener;)V

    .line 134
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListItemMessageHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/widget/FusionListView;->bindListItemEventListener(Lcom/htc/fusion/fx/MessageListener;)V

    .line 135
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewMessageHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/widget/FusionListView;->bindListViewEventListener(Lcom/htc/fusion/fx/MessageListener;)V

    .line 136
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVCLandscape:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    goto :goto_0
.end method

.method public setOnErrorClickListener(Lcom/htc/photowidget3d/widget/ListViewManager$OnErrorClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnErrorClickListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnErrorClickListener;

    .line 201
    return-void
.end method

.method public setOnListItemChangeListener(Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListItemChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;

    .line 196
    return-void
.end method

.method public setOnListItemClickListener(Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListItemClickListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;

    .line 191
    return-void
.end method

.method public setOnListViewChangeListener(Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListViewChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;

    .line 186
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 141
    iput p1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOrientation:I

    .line 142
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/LandscapeListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/ListViewManager;->setLandscape()V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/ListViewManager;->setPortrait()V

    goto :goto_0
.end method

.method public setPortrait()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    if-ne v0, v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/LandscapeListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/LandscapeListView;->unbindErrorImageTapListener()V

    .line 111
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/LandscapeListView;->unbindListItemEventListener()V

    .line 112
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/LandscapeListView;->unbindListViewEventListener()V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    .line 115
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mErrorViewClickHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/widget/FusionListView;->bindErrorImageTapListener(Lcom/htc/fusion/fx/MessageListener;)V

    .line 116
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListItemMessageHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ListItemMessageHandler;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/widget/FusionListView;->bindListItemEventListener(Lcom/htc/fusion/fx/MessageListener;)V

    .line 117
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewMessageHandler:Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/widget/FusionListView;->bindListViewEventListener(Lcom/htc/fusion/fx/MessageListener;)V

    .line 118
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVCPortrait:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/FusionListView;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/htc/photowidget3d/widget/ListViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSelection] Do setCollection on listview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", collection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListViewCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/widget/FusionListView;->setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/widget/FusionListView;->setSelection(I)V

    .line 251
    return-void
.end method

.method public showErrorWithImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVPortrait:Lcom/htc/photowidget3d/widget/PortraitListView;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/widget/PortraitListView;->showErrorWithImage(Landroid/graphics/Bitmap;)V

    .line 206
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ListViewManager;->mLVLandscape:Lcom/htc/photowidget3d/widget/LandscapeListView;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/widget/LandscapeListView;->showErrorWithImage(Landroid/graphics/Bitmap;)V

    .line 207
    return-void
.end method

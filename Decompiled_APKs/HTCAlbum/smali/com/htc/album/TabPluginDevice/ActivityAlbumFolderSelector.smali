.class public Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.super Landroid/app/Activity;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityAlbumFolderSelector"

.field private static final MSG_REFRESH_ADAPTER:I = 0x1

.field private static final MSG_REFRESH_CHKBOX:I = 0x3

.field private static final MSG_SET_BITMAP:I = 0x2


# instance fields
.field private mBroadcastReceiver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

.field private mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mHtcListView:Lcom/htc/widget/HtcListView;

.field private mMediaType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mMediaType:I

    .line 81
    new-instance v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1268
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onConfirm()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onCancel()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onCancel()V
    .locals 0

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->finish()V

    .line 310
    return-void
.end method

.method private onConfirm()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getDeSelectedItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doSave(Ljava/util/ArrayList;)V

    .line 304
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->setResult(I)V

    .line 305
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->finish()V

    .line 306
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 229
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 164
    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->requestWindowFeature(I)Z

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const v5, 0x7f03000c

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->setContentView(I)V

    .line 169
    const v5, 0x7f0a0037

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    .line 170
    .local v2, headerText:Lcom/htc/widget/HeaderBarText;
    const v5, 0x7f0b0029

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 171
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 173
    const v5, 0x7f0a0039

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 174
    .local v1, fb:Lcom/htc/widget/HtcFooterButton;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v5, 0x7f0b0001

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 176
    const v5, 0x7f0a0038

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #fb:Lcom/htc/widget/HtcFooterButton;
    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 177
    .restart local v1       #fb:Lcom/htc/widget/HtcFooterButton;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v5, 0x20c01d6

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 180
    const v5, 0x7f0a003a

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView;

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    .line 181
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-static {p0, v5}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;)V

    .line 183
    new-instance v5, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-direct {v5, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    .line 184
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 186
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 189
    new-instance v5, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;)V

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mBroadcastReceiver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;

    .line 190
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 191
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v5, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v5, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v5, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v5, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v5, "file"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mBroadcastReceiver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    new-instance v5, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    .line 205
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 206
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v0

    .line 207
    .local v0, bSupportPhoneStorage:Z
    iget v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mMediaType:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 208
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    :cond_0
    iget v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mMediaType:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1

    .line 213
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneVideosUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    :cond_1
    iget v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mMediaType:I

    and-int/lit8 v5, v5, 0xe

    if-eqz v5, :cond_2

    .line 218
    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 220
    :cond_2
    iget v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mMediaType:I

    and-int/lit16 v5, v5, 0xe0

    if-eqz v5, :cond_3

    .line 221
    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 225
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "ActivityAlbumFolderSelector"

    const-string v1, "[onDestroy] +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mBroadcastReceiver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 239
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->release()V

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    const-string v0, "ActivityAlbumFolderSelector"

    const-string v1, "[onDestroy] -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    if-nez v2, :cond_0

    move v0, v1

    .line 296
    :goto_0
    return v0

    .line 277
    :cond_0
    const/4 v0, 0x1

    .line 278
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 291
    const/4 v0, 0x0

    .line 295
    :goto_1
    const-string v1, "ActivityAlbumFolderSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityAlbumFolderSelector][onOptionsItemSelected]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->setAllItemSelection(Z)V

    goto :goto_1

    .line 287
    :sswitch_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->setAllItemSelection(Z)V

    goto :goto_1

    .line 278
    :sswitch_data_0
    .sparse-switch
        0x20c013a -> :sswitch_0
        0x20c01dc -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x20c01dc

    const v5, 0x20c013a

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 249
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 251
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    if-nez v3, :cond_0

    move v0, v2

    .line 269
    :goto_0
    return v0

    .line 253
    :cond_0
    const/4 v0, 0x1

    .line 254
    .local v0, bResult:Z
    const/4 v1, 0x0

    .line 256
    .local v1, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->isSelectAll()Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    invoke-interface {p1, v2, v5, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 258
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 259
    const v3, 0x2080334

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->isDeselectAll()Z

    move-result v3

    if-nez v3, :cond_2

    .line 263
    invoke-interface {p1, v2, v6, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 264
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 265
    const v2, 0x208033c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 268
    :cond_2
    const-string v2, "ActivityAlbumFolderSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityAlbumFolderSelector][onPrepareOptionsMenu]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public abstract Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;
.super Lcom/htc/opensense/album/ViewTemplateBase;
.source "LiveGridviewTemplateBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ScrollListenerGridView2;,
        Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ClickListenerGridView2;,
        Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridLiveImageDecoder;,
        Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/album/ViewTemplateBase",
        "<",
        "Lcom/htc/opensense/widget/HtcGridView2;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field protected static mNewOrientation:I


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLastOrientation:I

.field protected mLoadingText:Ljava/lang/String;

.field protected mOnClickListenerGridView2:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

.field protected mOnScrollListenerGridView2:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

.field protected mPhotoPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->LOG_TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mNewOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense/album/DisplayManagerInterface;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/ViewTemplateBase;-><init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense/album/DisplayManagerInterface;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mInflater:Landroid/view/LayoutInflater;

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mLastOrientation:I

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mLoadingText:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bindAdapter()V
    .locals 13

    iget-object v9, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v9}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v9, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v9, v9, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v9, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "flag_genuine"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setGenuine(Z)V

    :cond_0
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "photo_position"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    if-gt v9, v5, :cond_1

    const/4 v5, 0x0

    :cond_1
    iput v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setAdapterListener(Lcom/htc/opensense/album/AdapterInterface;)V

    const/4 v9, 0x2

    new-instance v10, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridLiveImageDecoder;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridLiveImageDecoder;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$1;)V

    new-instance v11, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$1;)V

    invoke-virtual {v0, v9, v10, v11}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setTemplateLayout(ILcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    iget-object v9, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v9, Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v10, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v9, v10}, Lcom/htc/opensense/widget/HtcGridView2;->setAdapter(Landroid/widget/BaseAdapter;)V

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v6, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v9, 0x2

    if-ne v6, v9, :cond_4

    sget v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->NUM_OF_ITEMS_IN_GRID_ONE_ROW_LAND:I

    :goto_0
    iget v9, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    iget v10, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    rem-int/2addr v10, v2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    iget-object v9, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v9, Lcom/htc/opensense/widget/HtcGridView2;

    iget v10, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    invoke-virtual {v9, v10}, Lcom/htc/opensense/widget/HtcGridView2;->setSelection(I)V

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v8

    const/4 v3, 0x0

    if-lez v8, :cond_2

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getImageProvider()Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getMaxDownloadBuffer()I

    move-result v1

    iget v9, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    add-int/2addr v9, v1

    if-ge v9, v8, :cond_5

    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v3}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setScrollState(II)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->onUpdateViewTitle()V

    sget-object v9, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][LiveGridviewTemplateBase][bindAdapter]: set visible position: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    sget v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->NUM_OF_ITEMS_IN_GRID_ONE_ROW_PORT:I

    goto :goto_0

    :cond_5
    sub-int v3, v8, v1

    goto :goto_1
.end method

.method public abstract configureCommandBar(Lcom/htc/opensense/album/ControlButtonCollection;)V
.end method

.method public configureMainViewLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method protected bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->createMainView()Lcom/htc/opensense/widget/HtcGridView2;

    move-result-object v0

    return-object v0
.end method

.method protected createMainView()Lcom/htc/opensense/widget/HtcGridView2;
    .locals 5

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcGridView2;

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "service_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LiveGridviewTemplateBase][createMainView]: is online: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/opensense/widget/HtcGridView2;-><init>(Landroid/content/Context;)V

    const v2, 0x20801b9

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setSelector(I)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->setLayout(Lcom/htc/opensense/widget/HtcGridView2;)V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mOnClickListenerGridView2:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    if-nez v2, :cond_1

    new-instance v2, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ClickListenerGridView2;

    invoke-direct {v2, p0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ClickListenerGridView2;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mOnClickListenerGridView2:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mOnClickListenerGridView2:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setOnItemClickListener(Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;)V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mOnScrollListenerGridView2:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    if-nez v2, :cond_2

    new-instance v2, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ScrollListenerGridView2;

    invoke-direct {v2, p0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ScrollListenerGridView2;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mOnScrollListenerGridView2:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mOnScrollListenerGridView2:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setOnScrollListener(Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;)V

    move-object v2, v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected enableProgressIcon(Z)V
    .locals 4

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    if-nez v2, :cond_0

    sget-object v2, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][LiveGridviewTemplateBase][enableProgressIcon]: unknown"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/ControlTitleBar;

    if-nez v1, :cond_1

    sget-object v2, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][LiveGridviewTemplateBase][enableProgressIcon]: no title bar"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/htc/opensense/album/ControlTitleBar;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x2020051

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-nez v0, :cond_2

    sget-object v2, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][LiveGridviewTemplateBase][enableProgressIcon]: no progress icon"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public getFeatureMode()I
    .locals 1

    sget v0, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v5, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    move-object v3, p2

    check-cast v3, Lcom/htc/opensense/widget/GalleryImageView;

    if-nez p2, :cond_1

    new-instance v3, Lcom/htc/opensense/widget/GalleryImageView;

    iget-object v5, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->getId()I

    move-result v6

    invoke-direct {v3, v5, v6, v4}, Lcom/htc/opensense/widget/GalleryImageView;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/htc/opensense/widget/GalleryImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/widget/GalleryImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    iget-object v4, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4, p1, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/opensense/widget/GalleryImageView;->setVideoTagEnable(Z)V

    :goto_1
    invoke-virtual {v3, v2}, Lcom/htc/opensense/widget/GalleryImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/opensense/widget/GalleryImageView;->setVideoTagEnable(Z)V

    goto :goto_1
.end method

.method public handleActivityMessage(Landroid/os/Message;)V
    .locals 2

    const/16 v1, 0x2724

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->enableProgressIcon(Z)V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->enableProgressIcon(Z)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->onSyncDownloadStatus()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1394 -> :sswitch_2
        0x1395 -> :sswitch_3
        0x2724 -> :sswitch_0
        0x2728 -> :sswitch_1
        0x4e96 -> :sswitch_4
    .end sparse-switch
.end method

.method public isOrientationChanged()Z
    .locals 3

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mLastOrientation:I

    sget v2, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mNewOrientation:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget v1, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mNewOrientation:I

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mLastOrientation:I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/opensense/album/ViewTemplateBase;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mNewOrientation:I

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->setLayout(Lcom/htc/opensense/widget/HtcGridView2;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$1;

    invoke-direct {v1, p0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$1;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_0
    .end packed-switch
.end method

.method public onEnter(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onEnter(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {p0, v3}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->setLayout(Lcom/htc/opensense/widget/HtcGridView2;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->onUpdateCommandBar()V

    iget-object v3, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20801c1

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Lcom/htc/opensense/widget/FastBackgroundDrawble;

    invoke-direct {v4, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public abstract onItemClicked(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/widget/HtcGridView2",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public onLeave()V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "photo_position"

    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-super {p0}, Lcom/htc/opensense/album/ViewTemplateBase;->onLeave()V

    return-void
.end method

.method public abstract onMainViewContextItemSelected(Landroid/view/MenuItem;Landroid/view/ContextMenu$ContextMenuInfo;)Z
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public abstract onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
.end method

.method public onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->onUpdateViewTitle()V

    return-void
.end method

.method public onSyncDownloadStatus()V
    .locals 0

    return-void
.end method

.method protected onTransition(ILandroid/os/Bundle;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract onUpdateCommandBar()V
.end method

.method public abstract onUpdateViewTitle()V
.end method

.method public setFeatureMode(I)V
    .locals 3

    sput p1, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LiveGridviewTemplateBase][setFeatureMode]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->onUpdateViewTitle()V

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->refreshControlBars()V

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setLayout(Lcom/htc/opensense/widget/HtcGridView2;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p1, v3, v3, v3, v3}, Lcom/htc/opensense/widget/HtcGridView2;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget v1, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->NUM_OF_ITEMS_IN_GRID_ONE_ROW_PORT:I

    invoke-virtual {p1, v1}, Lcom/htc/opensense/widget/HtcGridView2;->setNumColumns(I)V

    :goto_1
    invoke-virtual {p1, v4}, Lcom/htc/opensense/widget/HtcGridView2;->setVerticalSpacing(I)V

    invoke-virtual {p1, v4}, Lcom/htc/opensense/widget/HtcGridView2;->setHorizontalSpacing(I)V

    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Lcom/htc/opensense/widget/HtcGridView2;->requestFocus(I)Z

    goto :goto_0

    :cond_1
    sget v1, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->NUM_OF_ITEMS_IN_GRID_ONE_ROW_LAND:I

    invoke-virtual {p1, v1}, Lcom/htc/opensense/widget/HtcGridView2;->setNumColumns(I)V

    goto :goto_1
.end method

.method public unbindAdapter()V
    .locals 4

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setAdapter(Landroid/widget/BaseAdapter;)V

    :cond_0
    sget-object v1, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LiveGridviewTemplateBase][unbindAdapter]: Last visible position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mPhotoPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onRelease()V

    return-void
.end method

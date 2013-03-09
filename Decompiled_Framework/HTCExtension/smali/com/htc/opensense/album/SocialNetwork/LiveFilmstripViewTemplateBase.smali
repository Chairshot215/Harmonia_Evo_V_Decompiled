.class public abstract Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;
.super Lcom/htc/opensense/album/ViewTemplateBase;
.source "LiveFilmstripViewTemplateBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;,
        Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemClickListener;,
        Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripLiveImageDecoder;,
        Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripImageDownloadedHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/album/ViewTemplateBase",
        "<",
        "Lcom/htc/opensense/widget/HtcFilmstripView;",
        ">;"
    }
.end annotation


# static fields
.field public static final HIDE_EDITBOX:I = 0x20

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static REFLECTION_BKG_COLOR:I = 0x0

.field public static final SHOW_EDITBOX:I = 0x10


# instance fields
.field private final ANIMATION_DURATION:I

.field protected mAnimationEnter:Landroid/view/animation/Animation;

.field protected mCaptureNewPic:Z

.field protected mItemClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;

.field protected mItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

.field protected mLoadingText:Ljava/lang/String;

.field protected mPhotoPos:I

.field protected mTitleBar:Landroid/widget/LinearLayout;

.field protected mTitleCounter:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->REFLECTION_BKG_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense/album/DisplayManagerInterface;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/ViewTemplateBase;-><init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense/album/DisplayManagerInterface;)V

    const/16 v0, 0x258

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->ANIMATION_DURATION:I

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleBar:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleCounter:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAnimationEnter:Landroid/view/animation/Animation;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mCaptureNewPic:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mLoadingText:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20a003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->REFLECTION_BKG_COLOR:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected ForceGalleryBeFocused()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setFocusableInTouchMode(Z)V

    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->requestFocus()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setFocusable(Z)V

    goto :goto_1
.end method

.method public bindAdapter()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->initParameters()V

    iget-object v3, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "photo_position"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    if-gt v3, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "flag_genuine"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setGenuine(Z)V

    invoke-virtual {v0, p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setAdapterListener(Lcom/htc/opensense/album/AdapterInterface;)V

    invoke-virtual {v0, p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setAdapterListener(Lcom/htc/opensense/album/AdapterInterface;)V

    const/4 v3, 0x3

    new-instance v4, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripLiveImageDecoder;

    invoke-direct {v4, p0, v7}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripLiveImageDecoder;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;)V

    new-instance v5, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripImageDownloadedHandler;

    invoke-direct {v5, p0, v7}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripImageDownloadedHandler;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setTemplateLayout(ILcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->setMaxIndicatorWidth()I

    iget-object v3, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/opensense/widget/HtcFilmstripView;

    iget-object v4, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/opensense/widget/HtcFilmstripView;

    iget v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSelection(I)V

    iget-object v3, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->decoderStart()V

    :cond_1
    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    invoke-virtual {v0, v3, v6}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setCenteredVisibleRange(IZ)V

    :cond_2
    return-void
.end method

.method public abstract configureCommandBar(Lcom/htc/opensense/album/ControlButtonCollection;)V
.end method

.method public configureMainViewLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x1e

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->createMainView()Lcom/htc/opensense/widget/HtcFilmstripView;

    move-result-object v0

    return-object v0
.end method

.method protected createMainView()Lcom/htc/opensense/widget/HtcFilmstripView;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/HtcFilmstripView;

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->setFadingEdgeLength(I)V

    const/high16 v1, 0x437f

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setUnselectedAlpha(F)V

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->setVerticalScrollBarEnabled(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSpacing(I)V

    new-instance v1, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemClickListener;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;)V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mItemClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mItemClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setOnItemClickListener(Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;

    invoke-direct {v1, p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setOnItemSelectedListener(Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;)V

    move-object v1, v0

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

.method public getId()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-nez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    if-nez p2, :cond_2

    new-instance v3, Lcom/htc/opensense/widget/GalleryImageView;

    iget-object v5, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->getId()I

    move-result v7

    iget-object v5, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {v3, v6, v7, v5}, Lcom/htc/opensense/widget/GalleryImageView;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    :goto_1
    sget v4, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v1, p1, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getCachedBitmap(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/GalleryImageView;->setVideoTagEnable(Z)V

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    add-int/lit8 v5, v5, 0x0

    if-le v4, v5, :cond_1

    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    add-int/lit8 v4, v5, 0x0

    :cond_1
    new-instance v5, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/GalleryImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    invoke-virtual {v3, v2}, Lcom/htc/opensense/widget/GalleryImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    move-object v3, p2

    check-cast v3, Lcom/htc/opensense/widget/GalleryImageView;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/GalleryImageView;->setVideoTagEnable(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onTriggerNotifyChange(I)V

    new-instance v5, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    sget v7, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    add-int/lit8 v7, v7, 0x1

    sget v8, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_REFLECTION:I

    add-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/GalleryImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method public handleActivityMessage(Landroid/os/Message;)V
    .locals 4

    const/16 v3, 0x2724

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v3}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onSyncList()V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSelection(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1393 -> :sswitch_3
        0x2724 -> :sswitch_0
        0x2728 -> :sswitch_1
        0x4e88 -> :sswitch_2
    .end sparse-switch
.end method

.method public initParameters()V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "capture"

    const-string v2, "preview_mode"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mCaptureNewPic:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onScreenChange()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;

    invoke-direct {v2, p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)V

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_0
    .end packed-switch
.end method

.method public onEnter(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onEnter(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->initParameters()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onUpdateCommandBar()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onScreenChange()V

    iget-object v3, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAnimationEnter:Landroid/view/animation/Animation;

    if-nez v3, :cond_0

    const v3, 0x2040001

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAnimationEnter:Landroid/view/animation/Animation;

    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "photo_position"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_template"

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->getId()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onFilmstripviewItemSelected(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/widget/AlbumAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public abstract onItemClicked(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/widget/AlbumAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public onLeave()V
    .locals 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAnimationEnter:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "photo_position"

    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

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

    return-void
.end method

.method public onScreenChange()V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onUpdateViewTitle()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->setupMainView()V

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

.method public onSyncList()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onUpdateViewTitle()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onUpdateCommandBar()V

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->decoderStart()V

    :cond_0
    return-void
.end method

.method protected onTransition(ILandroid/os/Bundle;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x1

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    const-string v4, "focus_template"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "previous_template"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move v4, v3

    :goto_1
    return v4

    :pswitch_1
    iget-boolean v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mCaptureNewPic:Z

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v4, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/opensense/album/ControlBase;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    iget-object v5, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense/album/ControlBase;->getRootView()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x4b0

    invoke-interface {v4, v5, v0, v6, v8}, Lcom/htc/opensense/album/DisplayManagerInterface;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    :cond_3
    iget-object v4, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    iget-object v5, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    const/16 v6, 0x2bc

    invoke-interface {v4, v5, v0, v6, v8}, Lcom/htc/opensense/album/DisplayManagerInterface;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    const/16 v3, 0x4b0

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    iget-object v5, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAnimationEnter:Landroid/view/animation/Animation;

    const/16 v7, 0x1f4

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/htc/opensense/album/DisplayManagerInterface;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    const/16 v3, 0x1f4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract onUpdateCommandBar()V
.end method

.method public abstract onUpdateViewTitle()V
.end method

.method public abstract onUpdateViewTitleCount(II)V
.end method

.method public setFeatureMode(I)V
    .locals 1

    sput p1, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->refreshControlBars()V

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected final setMaxIndicatorWidth()I
    .locals 9

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleCounter:Landroid/widget/TextView;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleCounter:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v5, 0x20c01f2

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/4 v3, 0x0

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v3, v5, 0x1

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleCounter:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_0
.end method

.method protected setupMainView()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/TemplateActivityBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/TemplateActivityBase;->isScreenPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    sget v3, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->TABLE_PADDING_PORT:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setChildViewOffset(II)V

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->setGravity(I)V

    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSpacing(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->ForceGalleryBeFocused()Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v2, v4, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setChildViewOffset(II)V

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->setGravity(I)V

    goto :goto_0
.end method

.method public unbindAdapter()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setAdapterListener(Lcom/htc/opensense/album/AdapterInterface;)V

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->decoderStop()V

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onRelease()V

    :cond_1
    return-void
.end method

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

    .prologue
    .line 73
    const-class v0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->LOG_TAG:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->REFLECTION_BKG_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense/album/DisplayManagerInterface;)V
    .locals 2
    .parameter "adapterBase"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/ViewTemplateBase;-><init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense/album/DisplayManagerInterface;)V

    .line 78
    const/16 v0, 0x258

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->ANIMATION_DURATION:I

    .line 83
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleBar:Landroid/widget/LinearLayout;

    .line 84
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleCounter:Landroid/widget/TextView;

    .line 86
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAnimationEnter:Landroid/view/animation/Animation;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mCaptureNewPic:Z

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mLoadingText:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20a003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->REFLECTION_BKG_COLOR:I

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected ForceGalleryBeFocused()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 603
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 604
    const/4 v0, 0x0

    .line 611
    :goto_0
    return v0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setFocusableInTouchMode(Z)V

    .line 611
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setFocusable(Z)V

    goto :goto_1
.end method

.method public bindAdapter()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 217
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->initParameters()V

    .line 219
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 221
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 222
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "photo_position"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 224
    .local v1, nPosition:I
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    if-gt v3, v1, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 227
    :cond_0
    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    .line 229
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 230
    .local v0, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    if-eqz v0, :cond_2

    .line 232
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "flag_genuine"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setGenuine(Z)V

    .line 233
    invoke-virtual {v0, p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setAdapterListener(Lcom/htc/opensense/album/AdapterInterface;)V

    .line 235
    invoke-virtual {v0, p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setAdapterListener(Lcom/htc/opensense/album/AdapterInterface;)V

    .line 236
    const/4 v3, 0x3

    new-instance v4, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripLiveImageDecoder;

    invoke-direct {v4, p0, v7}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripLiveImageDecoder;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;)V

    new-instance v5, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripImageDownloadedHandler;

    invoke-direct {v5, p0, v7}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$FilmstripImageDownloadedHandler;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setTemplateLayout(ILcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 243
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->setMaxIndicatorWidth()I

    .line 245
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/opensense/widget/HtcFilmstripView;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 246
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/opensense/widget/HtcFilmstripView;

    iget v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSelection(I)V

    .line 248
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 249
    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->decoderStart()V

    .line 250
    :cond_1
    iget v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    invoke-virtual {v0, v3, v6}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setCenteredVisibleRange(IZ)V

    .line 253
    .end local v0           #adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    .end local v1           #nPosition:I
    .end local v2           #sharedPref:Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method

.method public abstract configureCommandBar(Lcom/htc/opensense/album/ControlButtonCollection;)V
.end method

.method public configureMainViewLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 628
    if-eqz p1, :cond_0

    .line 638
    const/16 v0, 0x1e

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 639
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 643
    :cond_0
    return-void
.end method

.method protected bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->createMainView()Lcom/htc/opensense/widget/HtcFilmstripView;

    move-result-object v0

    return-object v0
.end method

.method protected createMainView()Lcom/htc/opensense/widget/HtcFilmstripView;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/HtcFilmstripView;

    .line 296
    :goto_0
    return-object v1

    .line 281
    :cond_0
    new-instance v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, fsView:Lcom/htc/opensense/widget/HtcFilmstripView;
    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->setFadingEdgeLength(I)V

    .line 284
    const/high16 v1, 0x437f

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setUnselectedAlpha(F)V

    .line 285
    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->setVerticalScrollBarEnabled(Z)V

    .line 287
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSpacing(I)V

    .line 289
    new-instance v1, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemClickListener;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;)V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mItemClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;

    .line 290
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mItemClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setOnItemClickListener(Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;)V

    .line 292
    new-instance v1, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;

    invoke-direct {v1, p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    .line 293
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setOnItemSelectedListener(Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;)V

    move-object v1, v0

    .line 296
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x4

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 350
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 351
    .local v1, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    if-nez v1, :cond_0

    .line 352
    const/4 v3, 0x0

    .line 390
    :goto_0
    return-object v3

    .line 354
    :cond_0
    const/4 v3, 0x0

    .line 355
    .local v3, view:Lcom/htc/opensense/widget/GalleryImageView;
    if-nez p2, :cond_2

    .line 356
    new-instance v3, Lcom/htc/opensense/widget/GalleryImageView;

    .end local v3           #view:Lcom/htc/opensense/widget/GalleryImageView;
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->getId()I

    move-result v7

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {v3, v6, v7, v5}, Lcom/htc/opensense/widget/GalleryImageView;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 360
    .restart local v3       #view:Lcom/htc/opensense/widget/GalleryImageView;
    :goto_1
    sget v4, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    .line 362
    .local v4, w:I
    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    .line 364
    .local v0, aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v1, p1, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getCachedBitmap(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 366
    .local v2, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 367
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/GalleryImageView;->setVideoTagEnable(Z)V

    .line 371
    :goto_2
    if-eqz v2, :cond_4

    .line 373
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 375
    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    add-int/lit8 v5, v5, 0x0

    if-le v4, v5, :cond_1

    .line 376
    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    add-int/lit8 v4, v5, 0x0

    .line 377
    :cond_1
    new-instance v5, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/GalleryImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    :goto_3
    invoke-virtual {v3, v2}, Lcom/htc/opensense/widget/GalleryImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .end local v0           #aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #w:I
    :cond_2
    move-object v3, p2

    .line 358
    check-cast v3, Lcom/htc/opensense/widget/GalleryImageView;

    goto :goto_1

    .line 369
    .restart local v0       #aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    .restart local v4       #w:I
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/GalleryImageView;->setVideoTagEnable(Z)V

    goto :goto_2

    .line 382
    :cond_4
    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onTriggerNotifyChange(I)V

    .line 383
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
    .parameter "msg"

    .prologue
    const/16 v3, 0x2724

    .line 535
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 536
    .local v0, activity:Landroid/app/Activity;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 554
    :goto_0
    return-void

    .line 539
    :sswitch_0
    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 542
    :sswitch_1
    invoke-virtual {v0, v3}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0

    .line 545
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onSyncList()V

    goto :goto_0

    .line 549
    :sswitch_3
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 550
    .local v1, count:I
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSelection(I)V

    goto :goto_0

    .line 536
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

    .prologue
    .line 616
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 617
    .local v0, intent:Landroid/content/Intent;
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

    .line 619
    return-void

    .line 617
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 423
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 332
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onScreenChange()V

    .line 333
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 429
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 430
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 432
    .local v1, dialog:Lcom/htc/app/HtcProgressDialog;
    packed-switch p1, :pswitch_data_0

    .line 456
    :goto_0
    return-object v1

    .line 435
    :pswitch_0
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    .end local v1           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {v1, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 436
    .restart local v1       #dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 437
    new-instance v2, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;

    invoke-direct {v2, p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)V

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_0
    .end packed-switch
.end method

.method public onEnter(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onEnter(Landroid/os/Bundle;)V

    .line 303
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->initParameters()V

    .line 305
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onUpdateCommandBar()V

    .line 307
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onScreenChange()V

    .line 309
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 311
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAnimationEnter:Landroid/view/animation/Animation;

    if-nez v3, :cond_0

    .line 312
    const v3, 0x2040001

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAnimationEnter:Landroid/view/animation/Animation;

    .line 318
    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 319
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "photo_position"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    .line 321
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 322
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "last_template"

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->getId()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 324
    return-void
.end method

.method public onFilmstripviewItemSelected(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/widget/AlbumAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, parent:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<*>;"
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

    .prologue
    .line 337
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAnimationEnter:Landroid/view/animation/Animation;

    .line 340
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "photo_position"

    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    invoke-super {p0}, Lcom/htc/opensense/album/ViewTemplateBase;->onLeave()V

    .line 345
    return-void
.end method

.method public abstract onMainViewContextItemSelected(Landroid/view/MenuItem;Landroid/view/ContextMenu$ContextMenuInfo;)Z
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public abstract onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onScreenChange()V
    .locals 5

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onUpdateViewTitle()V

    .line 471
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->setupMainView()V

    .line 473
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 475
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 476
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 477
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20801c1

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 478
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Lcom/htc/opensense/widget/FastBackgroundDrawble;

    invoke-direct {v4, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    return-void
.end method

.method public onSyncList()V
    .locals 2

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onUpdateViewTitle()V

    .line 648
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onUpdateCommandBar()V

    .line 649
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 650
    .local v0, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->decoderStart()V

    .line 652
    :cond_0
    return-void
.end method

.method protected onTransition(ILandroid/os/Bundle;)I
    .locals 9
    .parameter "direction"
    .parameter "bundle"

    .prologue
    const/4 v8, 0x0

    .line 483
    const/4 v3, -0x1

    .line 484
    .local v3, time:I
    const/4 v2, -0x1

    .line 485
    .local v2, targetID:I
    const/4 v1, -0x1

    .line 490
    .local v1, sourceID:I
    if-eqz p2, :cond_0

    .line 492
    const-string v4, "focus_template"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 493
    const-string v4, "previous_template"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 496
    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move v4, v3

    .line 531
    :goto_1
    return v4

    .line 501
    :pswitch_1
    iget-boolean v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mCaptureNewPic:Z

    if-eqz v4, :cond_2

    .line 502
    const/4 v4, -0x1

    goto :goto_1

    .line 503
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 504
    .local v0, showMainView:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 505
    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 507
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 509
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/opensense/album/ControlBase;->setVisibility(I)V

    .line 510
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense/album/ControlBase;->getRootView()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x4b0

    invoke-interface {v4, v5, v0, v6, v8}, Lcom/htc/opensense/album/DisplayManagerInterface;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    .line 512
    :cond_3
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    const/16 v6, 0x2bc

    invoke-interface {v4, v5, v0, v6, v8}, Lcom/htc/opensense/album/DisplayManagerInterface;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    .line 513
    const/16 v3, 0x4b0

    .line 515
    goto :goto_0

    .line 517
    .end local v0           #showMainView:Landroid/view/animation/AlphaAnimation;
    :pswitch_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 519
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAnimationEnter:Landroid/view/animation/Animation;

    const/16 v7, 0x1f4

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/htc/opensense/album/DisplayManagerInterface;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    .line 520
    const/16 v3, 0x1f4

    goto :goto_0

    .line 496
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
    .parameter "nMode"

    .prologue
    .line 622
    sput p1, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    .line 623
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->refreshControlBars()V

    .line 624
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 625
    return-void
.end method

.method protected final setMaxIndicatorWidth()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 557
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleCounter:Landroid/widget/TextView;

    if-nez v5, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v3

    .line 560
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 561
    .local v1, count:I
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleCounter:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 562
    .local v4, textPaint:Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 563
    .local v2, indicator:Ljava/lang/String;
    if-lez v1, :cond_2

    .line 565
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 566
    .local v0, context:Landroid/content/Context;
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

    .line 571
    .end local v0           #context:Landroid/content/Context;
    :cond_2
    const/4 v3, 0x0

    .line 572
    .local v3, ret:I
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 574
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v3, v5, 0x1

    .line 575
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleCounter:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_0
.end method

.method protected setupMainView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 583
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 584
    .local v0, activity:Landroid/app/Activity;
    check-cast v0, Lcom/htc/opensense/album/TemplateActivityBase;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/htc/opensense/album/TemplateActivityBase;->isScreenPortrait()Z

    move-result v1

    .line 586
    .local v1, isPortrait:Z
    if-eqz v1, :cond_0

    .line 588
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    sget v3, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->TABLE_PADDING_PORT:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setChildViewOffset(II)V

    .line 589
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->setGravity(I)V

    .line 597
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSpacing(I)V

    .line 599
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->ForceGalleryBeFocused()Z

    .line 600
    return-void

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v2, v4, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setChildViewOffset(II)V

    .line 594
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setPadding(IIII)V

    .line 595
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->setGravity(I)V

    goto :goto_0
.end method

.method public unbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    .line 262
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 266
    .local v0, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v0, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setAdapterListener(Lcom/htc/opensense/album/AdapterInterface;)V

    .line 270
    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->decoderStop()V

    .line 271
    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onRelease()V

    .line 273
    :cond_1
    return-void
.end method

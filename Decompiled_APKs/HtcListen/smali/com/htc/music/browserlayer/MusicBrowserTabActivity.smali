.class public Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.super Lcom/htc/widget/HtcTabActivity1;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IDismissBubbleInterface;
.implements Lcom/htc/music/widget/IMusicTabActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;
    }
.end annotation


# static fields
.field private static final FIRST_CONTENT_INDEX:I = 0x0

.field public static final LAUNCH_PARAMETER_NOT_SAVE_HISTORY:I = 0x3

.field public static final LAUNCH_PARAMETER_REMOVE_PREVIOUS:I = 0x0

.field public static final LAUNCH_PARAMETER_SAVE_HISTORY_INTENT:I = 0x1

.field public static final LAUNCH_PARAMETER_SAVE_HISTORY_VIEW:I = 0x2

.field private static final MAX_CONTENT_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MusicBrowserTabActivity]"


# instance fields
.field private mArtistId:Ljava/lang/String;

.field private mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

.field private mComposer:Ljava/lang/String;

.field protected mContentView:Landroid/widget/FrameLayout;

.field private mErrorView:Landroid/view/View;

.field protected mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

.field private mGenreId:Ljava/lang/String;

.field private mHandlingOptionsItemSelected:Z

.field private mHandlingPrepareOptionsMenu:Z

.field protected mHeaderBar:Lcom/htc/widget/HeaderBar;

.field private mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

.field private mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

.field private mHeaderDropdownIndicator:Landroid/widget/ImageView;

.field private mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

.field protected mHistoryManager:Lcom/htc/music/util/HistoryManager;

.field private mInternalEnough:Z

.field private mMimeType:Ljava/lang/String;

.field protected mMiniPlayer:Lcom/htc/music/MiniPlayer;

.field public mOnlineSearchAction:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mPlaylistUri:Ljava/lang/String;

.field public mSearchAction:Landroid/view/View$OnClickListener;

.field private mSourceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

.field private mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

.field protected mtabHost:Lcom/htc/widget/HtcTabHost1;

.field private progressOffset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/widget/HtcTabActivity1;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mtabHost:Lcom/htc/widget/HtcTabHost1;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    iput v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$2;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSearchAction:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startOnlineSearchPage()V

    return-void
.end method

.method private resetHeaderMiniPlayerButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private resetMiniPlayer(Z)V
    .locals 3

    const v2, 0x7f080035

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    goto :goto_0
.end method

.method private setDropDownEnable(Z)V
    .locals 4

    const v3, 0x20d009e

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarDropDown;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setTitleStyle(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->enableIndicatorOffset(Z)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategorySwitcherStyleTitle()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSourceSwitcherStyleTitle()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDLNASourceSwitcherStyleTitle()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDLNASwitchStyleTitle()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setStoreSwitchStyleTitle()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private showInternalStorageErrorMode()V
    .locals 6

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f030059

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const v5, 0x7f0800a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v4, 0x208086b

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const v5, 0x7f0800a3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const v4, 0x7f070040

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->changeContentView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v4}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x208097e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x6e

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v4, 0x7f0700f5

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    if-eqz v1, :cond_0

    const-string v1, "com.htc.media/dlna"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    const-string v2, "DlnaBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const-string v1, "com.htc.media/album"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "AlbumBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    :goto_1
    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v2, "LaunchFromSwitcher"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.htc.media/track"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "TrackBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "AlbumBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    goto :goto_1
.end method

.method private startListenStore()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "InnerActivityType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startOnlineSearchPage()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected changeContentView(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public disableCategoryDropDown()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    :cond_0
    return-void
.end method

.method public dismissPopupBubble()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    :cond_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1, p1}, Lcom/htc/music/MiniPlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity1;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne v0, p0, :cond_3

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    goto :goto_0
.end method

.method protected initMiniPlayer()V
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetMiniPlayer(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initTitle()V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030009

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBar;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f080037

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-nez v3, :cond_0

    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find R.id.headerImgLeft!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f020036

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarDropDown;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-nez v3, :cond_1

    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find R.id.headerDropDown!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v4, 0x7f0700ed

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f08003b

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    if-nez v3, :cond_2

    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find R.id.headerImgRight1!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f070105

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x20808fb

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f08003a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-nez v3, :cond_3

    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find R.id.headerImgRight2!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f080039

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-nez v3, :cond_4

    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find R.id.headerImgRight3!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x2020256

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    if-nez v3, :cond_5

    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find com.htc.R.id.indicator!!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v3, Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v3, p0}, Lcom/htc/music/widget/StoreSwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v3}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    new-instance v3, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v4, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v4, p0, v5}, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;-><init>(Landroid/app/Activity;Lcom/htc/music/widget/StoreSwitcherAdapter;)V

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setStoreRightBtn()V

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v3}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v3

    if-eq v6, v3, :cond_6

    const/4 v0, 0x0

    :cond_6
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3, v0}, Lcom/htc/music/util/HistoryManager;->enableHtcListen(Z)V

    new-instance v3, Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-direct {v3, p0}, Lcom/htc/music/widget/CategorySwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    new-instance v3, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v4, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v3, Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-direct {v3, p0, v0}, Lcom/htc/music/widget/SourceSwitcherAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    new-instance v3, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v4, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mtabHost:Lcom/htc/widget/HtcTabHost1;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcTabHost1;->setCustomTabWidget(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v3}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    iput-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const v0, 0xc351

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startListenStore()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/MusicMaActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/app/ActivityGroup;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/app/ActivityGroup;

    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicMaActivity;->onMaBackPressed()Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousTag:Ljava/lang/String;

    iget-object v4, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "intent and cached view are null!! should never happen!! "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity1;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v5, v1, :cond_2

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetMiniPlayer(Z)V

    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v5, v1, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetHeaderMiniPlayerButton(Z)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v8, "[MusicBrowserTabActivity]"

    const-string v11, "tab oncreate"

    invoke-static {v8, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->requestWindowFeature(I)Z

    const-string v8, "[MusicBrowserTabActivity]"

    const-string v11, "Send a FOTA broadcast"

    invoke-static {v8, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.android.updater.FOTA_SETTING_INDIVIDUAL"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "package_name"

    const-string v11, "com.htc.music"

    invoke-virtual {v1, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "show_download_dialog"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "update_type"

    const-string v11, "individual_appupdate"

    invoke-virtual {v1, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v8, "SaveRender"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v8, "Render"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Server"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v11, "DLNA"

    invoke-virtual {v8, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v11, "Render"

    invoke-interface {v8, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v11, "server"

    invoke-interface {v8, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    if-eqz p1, :cond_2

    :goto_0
    const v8, 0x7f030008

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getTabHost()Lcom/htc/widget/HtcTabHost1;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mtabHost:Lcom/htc/widget/HtcTabHost1;

    const v8, 0x2020246

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    new-instance v8, Lcom/htc/music/util/HistoryManager;

    invoke-direct {v8, p0}, Lcom/htc/music/util/HistoryManager;-><init>(Landroid/app/ActivityGroup;)V

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->initTitle()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->initMiniPlayer()V

    const/4 v8, 0x2

    iget v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v8, v11, :cond_3

    move v8, v9

    :goto_1
    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetHeaderMiniPlayerButton(Z)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    if-eqz v8, :cond_1

    const-string v8, ""

    iget-object v9, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_1
    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v9, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v8, p0, v9, v10}, Lcom/htc/music/util/HistoryManager;->restoreHistoryInstanceState(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter;)V

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v8}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v8, v3, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iget-object v9, v3, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    invoke-virtual {p0, v8, v9, v12}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    :goto_2
    return-void

    :cond_2
    const-string v8, "playlisturi"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    const-string v8, "genreid"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    const-string v8, "composer"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    const-string v8, "artistid"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    move v8, v10

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v9, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v8, p0, v9}, Lcom/htc/music/util/HistoryManager;->getLastSourceItem(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v5

    iget-object v8, v5, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v9, v5, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v8, v9}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v8, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcTabActivity1;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xaae61
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity1;->onDestroy()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HistoryManager;->saveHistoryInstanceState(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->release()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/SourceSwitcherAdapter;->releaseAdapter()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/CategorySwitcherAdapter;->releaseAdapter()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x3

    const-string v7, "[MusicBrowserTabActivity]"

    const-string v8, "tab receive new intent"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->onNewIntent(Landroid/content/Intent;)V

    const-string v7, "SaveRender"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v7, "Render"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Server"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "DLNA"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "Render"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "server"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-string v7, "playlisturi"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    const-string v7, "genreid"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    const-string v7, "composer"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    const-string v7, "artistid"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    if-eqz v7, :cond_1

    const-string v7, ""

    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v7}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v7, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iget-object v8, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v7, p0, v8}, Lcom/htc/music/util/HistoryManager;->getLastSourceItem(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v4

    iget-object v7, v4, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v8, v4, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v7, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-nez v7, :cond_2

    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->showInternalStorageErrorMode()V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v7}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v7, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    if-ne v4, v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    if-ne v1, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    move v1, v2

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity1;->onResume()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HistoryManager;->saveHistoryInstanceState(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity1;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setProgressVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Enable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    :cond_0
    return-void
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    :cond_0
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategorySwitcherStyleTitle()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setCategorySwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    sget v1, Lcom/htc/music/util/HistoryManager;->MAX_SOURCE_HISTORY:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v1, 0x7f0700d6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v2, :cond_5

    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v2, :cond_6

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v2, :cond_7

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f070106

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x208089e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    goto :goto_3
.end method

.method public setDLNASourceSwitcherStyleTitle()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSourceSwitcherStyleTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->enableIndicatorOffset(Z)V

    :cond_1
    return-void
.end method

.method public setDLNASwitchStyleTitle()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setDLNASwitchStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    :cond_3
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnlineSearchRightBtn()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f0700e9

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x2080954

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSearchRightBtn()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f0700e9

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x2080954

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSearchAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryText(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSourceSwitcherStyleTitle()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setSourceSwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f070106

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x208089e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v1, 0x7f0700ed

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    :cond_3
    return-void
.end method

.method public setStoreRightBtn()V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v2}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchTagResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v2}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchIconResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStoreSwitchStyleTitle()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setStoreSwitchStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    :cond_3
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V

    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V
    .locals 15

    if-nez p2, :cond_0

    const-string v2, "[MusicBrowserTabActivity]"

    const-string v14, "shouldn\'t call startActivity without intent!!"

    invoke-static {v2, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v14, 0x400

    and-int/2addr v2, v14

    if-lez v2, :cond_7

    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/htc/music/util/HistoryManager;->clearTop(Ljava/lang/String;)Lcom/htc/music/util/HistoryManager$ActivityHistory;

    const/16 p3, 0x3

    :cond_2
    const-string v2, "LaunchFromSwitcher"

    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string v2, "InnerActivityType"

    const/4 v14, 0x3

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v2, 0x3

    if-ne v2, v6, :cond_3

    if-eqz v10, :cond_3

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->clearCategoryHistory()V

    :cond_3
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v14, 0x2000

    or-int/2addr v2, v14

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryProgressVisible(Z)V

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-nez v2, :cond_8

    const/4 v2, 0x2

    if-eq v2, v6, :cond_8

    const/4 v2, 0x6

    if-eq v2, v6, :cond_8

    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->showInternalStorageErrorMode()V

    :goto_2
    const-string v2, "LaunchFromSwitcher"

    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v4, v9, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iget-object v5, v9, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v2, v0, :cond_9

    new-instance v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2, v1}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    :cond_5
    :goto_3
    if-eqz v11, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    const/4 v14, 0x1

    invoke-virtual {v2, v4, v14}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    :cond_6
    :goto_4
    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setTitleStyle(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    :cond_8
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->changeContentView(Landroid/view/View;)V

    goto :goto_2

    :catch_0
    move-exception v8

    const-string v2, "[MusicBrowserTabActivity]"

    const-string v14, "can\'t launch indicate activity!!"

    invoke-static {v2, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    if-nez p3, :cond_a

    const/4 v12, 0x1

    goto :goto_3

    :cond_a
    const/4 v2, 0x3

    move/from16 v0, p3

    if-eq v2, v0, :cond_5

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v2, v0, :cond_5

    new-instance v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2, v1}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    const/4 v11, 0x1

    goto :goto_3

    :cond_b
    if-eqz v12, :cond_6

    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2, v4}, Lcom/htc/music/util/HistoryManager;->removeHistory(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_0

    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "startMaActivityForResult called but mForResultCaller is not null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2

    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab startSearch...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcTabActivity1;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

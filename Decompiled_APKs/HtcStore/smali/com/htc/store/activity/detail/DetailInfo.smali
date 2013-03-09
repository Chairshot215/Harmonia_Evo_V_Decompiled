.class public Lcom/htc/store/activity/detail/DetailInfo;
.super Lcom/htc/store/activity/BaseActivity;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/detail/DetailInfo$PurchaseItemTask;,
        Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;,
        Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;,
        Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;,
        Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;,
        Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;,
        Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;,
        Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnServerTask;,
        Lcom/htc/store/activity/detail/DetailInfo$RefreshDetailInfoTask;,
        Lcom/htc/store/activity/detail/DetailInfo$GetDetailInfoOnDBTask;,
        Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;,
        Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;,
        Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;,
        Lcom/htc/store/activity/detail/DetailInfo$InfoItem;,
        Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;,
        Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    }
.end annotation


# static fields
.field private static final COLONS:Ljava/lang/String; = ": "

.field private static final DEFAULT_ITEM_ICON:I = 0x7f02000a

.field private static final DIALOG_WIDGET_HOME_RESET_UNINSTALL:I = 0x2

.field private static final DIALOG_WIDGET_HOME_RESET_UPDATE:I = 0x1

.field private static final DOWNLOAD_FINISHED:Ljava/lang/String; = "status=\'200\'"

.field private static final INFO_ITEM_TYPE_AUDIO:I = 0x1

.field private static final INFO_ITEM_TYPE_ONLY_TEXT:I = 0x0

.field private static final MENU_EDIT_TABS:I = 0x2

.field private static final MENU_PROPERTIES:I = 0x0

.field private static final MENU_SETTINGS:I = 0x1

.field private static final NON_UI_MESSAGE_GET_ITEM_STATUS_FROM_MY_ACTIVITY:I = 0x3

.field private static final NON_UI_MESSAGE_PLAY_AUDIO:I = 0x1

.field private static final NON_UI_MESSAGE_STOP_PLAY_AUDIO:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field private static final UI_MESSAGE_INIT_DETAIL_INFO:I = 0x1

.field private static final UI_MESSAGE_SET_AUDIO_SAMPLE_URI_DONE:I = 0x2

.field private static final UI_MESSAGE_SET_AUDIO_SAMPLE_URI_FAILED:I = 0x3

.field private static final UI_MESSAGE_UPDATE_ITEM_STATUS_FROM_MY_ACTIVITY:I = 0x4


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mActionButtonImageLeft:Landroid/widget/ImageButton;

.field private mActionButtonImageRight:Landroid/widget/ImageButton;

.field private mActionButtonImageSingle:Landroid/widget/ImageButton;

.field private mActionButtonText:Landroid/widget/Button;

.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioSamplesCount:I

.field private mAudioSamplesFailedCount:I

.field private mAudioSamplesFinishedCount:I

.field private mAudioSamplesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonLike:Lcom/htc/widget/HeaderBarImage;

.field private mButtonShare:Lcom/htc/widget/HeaderBarImage;

.field private mCommentIndicator:Landroid/widget/ImageView;

.field private mCommentNumberText:Landroid/widget/TextView;

.field private mDescriptionContent:Landroid/view/View;

.field private mDescriptionLayout:Landroid/widget/LinearLayout;

.field private mDetailInfoAdapter:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

.field private mDetailPreview:Lcom/htc/store/module/view/DetailPreview;

.field private mEmptyLayout:Landroid/view/View;

.field private mFirstCreate:Z

.field private mGetAudioSamplesTask:Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;

.field private mGetDetailInfoFailed:Z

.field private mGetDetailInfoFinished:Z

.field private mGetDetailInfoFromServer:Z

.field private mGetPreviewTask:Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;

.field private mHasDetailView:Z

.field private mHasToUpdateActionButton:Z

.field private mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

.field private mHtcListItemDrawAndNotSeparate:Lcom/htc/widget/HtcListItemSeparable;

.field private mHtcListItemDrawAndSeparate:Lcom/htc/widget/HtcListItemSeparable;

.field private mHtcListItemNotDrawAndSeparate:Lcom/htc/widget/HtcListItemSeparable;

.field private mIsFromInside:Z

.field private mIsPurchased:Z

.field private mIsUpdateAvailable:Z

.field private mItemIcon:Landroid/widget/ImageView;

.field private mItemItem:Lcom/htc/store/module/vo/ItemItem;

.field private mItemStatus:I

.field private mItemStatusObserver:Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;

.field private mItemTTL:J

.field private mItemTitle:Lcom/htc/widget/HeaderBarText;

.field private mLikeIndicator:Landroid/widget/ImageView;

.field private mLikeNumberText:Landroid/widget/TextView;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

.field private mOnClickListenerActionButtonCancel:Landroid/view/View$OnClickListener;

.field private mOnClickListenerActionButtonDownload:Landroid/view/View$OnClickListener;

.field private mOnClickListenerActionButtonOpen:Landroid/view/View$OnClickListener;

.field private mOnClickListenerActionButtonUninstall:Landroid/view/View$OnClickListener;

.field private mOnClickListenerHeaderButtonBack:Landroid/view/View$OnClickListener;

.field private mOnClickListenerHeaderButtonLike:Landroid/view/View$OnClickListener;

.field private mOnClickListenerHeaderButtonShare:Landroid/view/View$OnClickListener;

.field private mOnlineItemId:Ljava/lang/String;

.field private mOnlineItemType:I

.field private mOpenIntent:Landroid/content/Intent;

.field private mOptionalBundle:Landroid/os/Bundle;

.field private mOrientation:I

.field private mPreviewContent:Landroid/widget/LinearLayout;

.field private mPreviewItemsCount:I

.field private mPreviewItemsFailedCount:I

.field private mPreviewItemsFinishedCount:I

.field private mPreviewItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewLabel:Landroid/view/View;

.field private mRestHelper:Lcom/htc/store/module/rest/RestHelper;

.field private mTempStringBuilder:Ljava/lang/StringBuilder;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    .line 101
    iput v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    .line 102
    iput v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFinishedCount:I

    .line 103
    iput v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFailedCount:I

    .line 106
    iput v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    .line 107
    iput v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I

    .line 108
    iput v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I

    .line 138
    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mFirstCreate:Z

    .line 139
    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFromServer:Z

    .line 140
    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFinished:Z

    .line 141
    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFailed:Z

    .line 142
    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHasDetailView:Z

    .line 143
    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHasToUpdateActionButton:Z

    .line 144
    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z

    .line 145
    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mIsPurchased:Z

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mTempStringBuilder:Ljava/lang/StringBuilder;

    .line 540
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$3;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$3;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 577
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$4;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$4;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerHeaderButtonBack:Landroid/view/View$OnClickListener;

    .line 588
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$5;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$5;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerHeaderButtonLike:Landroid/view/View$OnClickListener;

    .line 608
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$6;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$6;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerHeaderButtonShare:Landroid/view/View$OnClickListener;

    .line 616
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$7;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$7;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonDownload:Landroid/view/View$OnClickListener;

    .line 654
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$8;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$8;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonCancel:Landroid/view/View$OnClickListener;

    .line 680
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$9;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$9;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonUninstall:Landroid/view/View$OnClickListener;

    .line 708
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$10;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$10;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonOpen:Landroid/view/View$OnClickListener;

    .line 1675
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$11;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$11;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHtcListItemNotDrawAndSeparate:Lcom/htc/widget/HtcListItemSeparable;

    .line 1687
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$12;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$12;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHtcListItemDrawAndSeparate:Lcom/htc/widget/HtcListItemSeparable;

    .line 1698
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$13;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$13;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHtcListItemDrawAndNotSeparate:Lcom/htc/widget/HtcListItemSeparable;

    .line 1715
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$14;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/detail/DetailInfo$14;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mUiHandler:Landroid/os/Handler;

    .line 2450
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10000(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10200(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10300(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10500(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10700(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10800(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->isHtcAccountExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/widget/HeaderBarImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showHeaderProgressBar()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->isHtcAccountExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->disableActionButton()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/store/activity/detail/DetailInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showNoNetworkDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/store/activity/detail/DetailInfo;Ljava/lang/String;IILcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/store/activity/detail/DetailInfo;->sendBroadcastToPicker(Ljava/lang/String;IILcom/htc/store/module/vo/ItemItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/store/activity/detail/DetailInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/store/activity/detail/DetailInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOpenIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/htc/store/activity/detail/DetailInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOpenIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/store/activity/detail/DetailInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo;->updateActionButton(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->initNonUiHandler()V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/store/activity/detail/DetailInfo;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/detail/DetailInfo;->showEmptyView(IZ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/store/activity/detail/DetailInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I

    return v0
.end method

.method static synthetic access$4508(Lcom/htc/store/activity/detail/DetailInfo;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/store/activity/detail/DetailInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/store/activity/detail/DetailInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I

    return v0
.end method

.method static synthetic access$4702(Lcom/htc/store/activity/detail/DetailInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I

    return p1
.end method

.method static synthetic access$4708(Lcom/htc/store/activity/detail/DetailInfo;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailInfoAdapter:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/htc/store/activity/detail/DetailInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mIsPurchased:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/htc/store/activity/detail/DetailInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHasToUpdateActionButton:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/htc/store/activity/detail/DetailInfo;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/provider/AccessHelper;)Lcom/htc/store/provider/AccessHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFromServer:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/htc/store/activity/detail/DetailInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFromServer:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo;->fillupDetailTitle(Lcom/htc/store/module/vo/ItemItem;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/store/activity/detail/DetailInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemTTL:J

    return-wide v0
.end method

.method static synthetic access$6302(Lcom/htc/store/activity/detail/DetailInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemTTL:J

    return-wide p1
.end method

.method static synthetic access$6402(Lcom/htc/store/activity/detail/DetailInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFinished:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo;->fillupDetailInfo(Lcom/htc/store/module/vo/ItemItem;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/rest/RestHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)Lcom/htc/store/module/vo/ItemItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/detail/DetailInfo;->keepItemInfoOnDetailItem(Lcom/htc/store/module/vo/ItemItem;Lcom/htc/store/module/vo/ItemItem;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    return v0
.end method

.method static synthetic access$7400(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    return v0
.end method

.method static synthetic access$7500(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showCommonErrorDialogToFinish()V

    return-void
.end method

.method static synthetic access$7702(Lcom/htc/store/activity/detail/DetailInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFailed:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/PreferenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8200(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->executeCommentLikeInfoTask()V

    return-void
.end method

.method static synthetic access$8300(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showCommonErrorDialog()V

    return-void
.end method

.method static synthetic access$8500(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8700(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    return v0
.end method

.method static synthetic access$8800(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showCommonErrorDialog()V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo;->updateCommentLikeInfoUI(Lcom/htc/store/module/vo/ItemItem;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9002(Lcom/htc/store/activity/detail/DetailInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFailedCount:I

    return p1
.end method

.method static synthetic access$9008(Lcom/htc/store/activity/detail/DetailInfo;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFailedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFailedCount:I

    return v0
.end method

.method static synthetic access$9100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9200(Lcom/htc/store/activity/detail/DetailInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHasDetailView:Z

    return v0
.end method

.method static synthetic access$9202(Lcom/htc/store/activity/detail/DetailInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHasDetailView:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->hideEmptyView()V

    return-void
.end method

.method static synthetic access$9400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/view/DetailPreview;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailPreview:Lcom/htc/store/module/view/DetailPreview;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/htc/store/activity/detail/DetailInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFinishedCount:I

    return v0
.end method

.method static synthetic access$9608(Lcom/htc/store/activity/detail/DetailInfo;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFinishedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFinishedCount:I

    return v0
.end method

.method static synthetic access$9700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/htc/store/activity/detail/DetailInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/store/activity/detail/DetailInfo;->createDownloadUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900(Lcom/htc/store/activity/detail/DetailInfo;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo;->isExternalStorageNeeded(I)Z

    move-result v0

    return v0
.end method

.method private addDetailHeader()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 773
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/detail/DetailInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    .line 774
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 775
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setSelector(I)V

    .line 782
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030003

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 783
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHtcListItemDrawAndNotSeparate:Lcom/htc/widget/HtcListItemSeparable;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 784
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 785
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 786
    .local v0, label:Landroid/widget/TextView;
    const v2, 0x7f0a0014

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 787
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mEmptyLayout:Landroid/view/View;

    .line 788
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v5, v4}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 791
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemIcon:Landroid/widget/ImageView;

    .line 792
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemIcon:Landroid/widget/ImageView;

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 793
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mCommentIndicator:Landroid/widget/ImageView;

    .line 794
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    const v3, 0x7f0c0010

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mLikeIndicator:Landroid/widget/ImageView;

    .line 795
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mCommentNumberText:Landroid/widget/TextView;

    .line 796
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    const v3, 0x7f0c0011

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mLikeNumberText:Landroid/widget/TextView;

    .line 797
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    .line 798
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    const v3, 0x7f0c0013

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    .line 799
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    .line 800
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    const v3, 0x7f0c0015

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    .line 801
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    const v3, 0x7f020012

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 802
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 803
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->resetActionButtonBackground()V

    .line 804
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->disableActionButton()V

    .line 807
    new-instance v2, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailInfoAdapter:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    .line 808
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailInfoAdapter:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 809
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailInfoAdapter:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 811
    return-void
.end method

.method private createDownloadUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "url"
    .parameter "id"

    .prologue
    const/4 v5, 0x2

    .line 1428
    sget-object v1, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "createDownloadUri - from url = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1429
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1430
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const-string v1, "visibility"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1432
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v1, "destination"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1434
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private createInfoItem(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    .locals 5
    .parameter "hasColons"
    .parameter "title"
    .parameter "info"
    .parameter "empty"

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mTempStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mTempStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1369
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1370
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mTempStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    :goto_0
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    .line 1383
    .local v0, infoItem:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mTempStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->setInfo(Ljava/lang/String;)V

    .line 1385
    return-object v0

    .line 1372
    .end local v0           #infoItem:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mTempStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1374
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mTempStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mTempStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1377
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mTempStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1379
    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mTempStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private createInfoItemAudio(Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    .locals 5
    .parameter "item"
    .parameter "title"
    .parameter "empty"

    .prologue
    const/4 v2, 0x0

    .line 1389
    if-nez p1, :cond_0

    move-object v0, v2

    .line 1410
    :goto_0
    return-object v0

    .line 1392
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1393
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesList:Ljava/util/ArrayList;

    .line 1394
    :cond_1
    iget v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1395
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesList:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    invoke-direct {v4, p0, v2}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1397
    :cond_2
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    .line 1398
    .local v0, infoItem:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setItemId(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v0, p2}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setInfo(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v1

    .line 1401
    .local v1, label:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1402
    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setSubInfo(Ljava/lang/String;)V

    .line 1405
    :goto_1
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineTrialContentURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setTrialContentUrl(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {v0, v2}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setAudioUri(Landroid/net/Uri;)V

    .line 1407
    invoke-virtual {v0, v2}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setDownloadObserver(Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;)V

    .line 1408
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setIsEnd(Z)V

    .line 1409
    iget v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    goto :goto_0

    .line 1404
    :cond_3
    invoke-virtual {v0, p3}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setSubInfo(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createPreviewItemList(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2211
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;

    .line 2213
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 2214
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;

    new-instance v3, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;

    invoke-direct {v3, p0, v1}, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;-><init>(Lcom/htc/store/activity/detail/DetailInfo;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2215
    .end local v1           #i:I
    :cond_0
    iget v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    if-ge v2, p1, :cond_1

    .line 2216
    iget v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    sub-int v0, p1, v2

    .line 2217
    .local v0, extend:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2218
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;

    new-instance v3, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;

    iget v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    add-int/2addr v4, v1

    invoke-direct {v3, p0, v4}, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;-><init>(Lcom/htc/store/activity/detail/DetailInfo;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2220
    .end local v0           #extend:I
    .end local v1           #i:I
    :cond_1
    iput p1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    .line 2221
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;

    return-object v2
.end method

.method private disableActionButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1179
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 1184
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 1186
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1187
    :cond_3
    return-void
.end method

.method private executeCommentLikeInfoTask()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1111
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->isHtcAccountExisted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1112
    sget-object v0, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "executeCommentLikeInfoTask - no account"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 1115
    :cond_0
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_1
    new-instance v0, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo$GetCommentLikeInfoTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private fillupDetailInfo(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 24
    .parameter "item"

    .prologue
    .line 895
    sget-object v20, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "fillupDetailInfo - start"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    if-nez p1, :cond_0

    .line 897
    sget-object v20, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const-string v21, "fillupDetailInfo - item = null"

    invoke-static/range {v20 .. v21}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :goto_0
    return-void

    .line 901
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/store/activity/detail/DetailInfo;->hideEmptyView()V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0c0003

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionContent:Landroid/view/View;

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionContent:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionContent:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0c0004

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 907
    .local v7, description_text:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineDescription()Ljava/lang/String;

    move-result-object v6

    .line 908
    .local v6, description:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .end local v6           #description:Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    new-instance v13, Ljava/util/ArrayList;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 913
    .local v13, info_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/activity/detail/DetailInfo$InfoItem;>;"
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    .line 914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 972
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setIsEnd(Z)V

    .line 974
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I

    .line 975
    new-instance v20, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Ljava/util/ArrayList;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/store/activity/detail/DetailInfo;->mGetAudioSamplesTask:Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mGetAudioSamplesTask:Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 981
    :cond_2
    const/4 v12, 0x0

    .line 982
    .local v12, info_end:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineAuthor()Ljava/lang/String;

    move-result-object v17

    .line 983
    .local v17, str:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 984
    const/16 v20, 0x1

    const v21, 0x7f0a000b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItem(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItem;

    move-result-object v10

    .line 985
    .local v10, info:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    move-object v12, v10

    .line 989
    .end local v10           #info:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v17

    .line 990
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 991
    const/16 v20, 0x1

    const v21, 0x7f0a0074

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItem(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItem;

    move-result-object v10

    .line 992
    .restart local v10       #info:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    move-object v12, v10

    .line 996
    .end local v10           #info:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineTimeStampPublished()J

    move-result-wide v21

    invoke-static/range {v20 .. v22}, Lcom/htc/store/util/DateTimeUtils;->getDateTimeStringFromSecond(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 997
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 998
    const/16 v20, 0x1

    const v21, 0x7f0a0043

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItem(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItem;

    move-result-object v10

    .line 999
    .restart local v10       #info:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    move-object v12, v10

    .line 1003
    .end local v10           #info:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineViewType()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->isAudioOrSoundsetViewType(I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1004
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineGenres()Ljava/lang/String;

    move-result-object v17

    .line 1005
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 1006
    const/16 v20, 0x1

    const v21, 0x7f0a0006

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItem(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItem;

    move-result-object v10

    .line 1007
    .restart local v10       #info:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    move-object v12, v10

    .line 1012
    .end local v10           #info:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSize()Ljava/lang/String;

    move-result-object v17

    .line 1013
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 1014
    const/16 v20, 0x1

    const v21, 0x7f0a0049

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItem(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItem;

    move-result-object v10

    .line 1015
    .restart local v10       #info:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    move-object v12, v10

    .line 1018
    .end local v10           #info:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    :cond_7
    if-eqz v12, :cond_8

    .line 1019
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;->setIsEnd(Z)V

    .line 1020
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1021
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineViewType()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->isAudioOrSoundsetViewType(I)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1023
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    const v21, 0x7f030008

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 1024
    .local v8, detail_view:Landroid/view/View;
    const v20, 0x7f0c0017

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1025
    .local v14, label:Landroid/widget/TextView;
    const v20, 0x7f0a0065

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    const v21, 0x7f030004

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 1030
    .local v19, view:Landroid/view/View;
    const v20, 0x7f0c000a

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1031
    .local v18, text:Landroid/widget/TextView;
    const v20, 0x7f0a002e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1032
    const v20, 0x7f0c0009

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ProgressBar;

    .line 1033
    .local v15, progress:Landroid/widget/ProgressBar;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1048
    .end local v8           #detail_view:Landroid/view/View;
    .end local v14           #label:Landroid/widget/TextView;
    .end local v15           #progress:Landroid/widget/ProgressBar;
    .end local v18           #text:Landroid/widget/TextView;
    .end local v19           #view:Landroid/view/View;
    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineViewType()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->isAudioOrSoundsetViewType(I)Z

    move-result v20

    if-nez v20, :cond_15

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewLabel:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0c0005

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewLabel:Landroid/view/View;

    .line 1051
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewContent:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0c0006

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewContent:Landroid/widget/LinearLayout;

    .line 1053
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewLabel:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewLabel:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0c0017

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1055
    .restart local v14       #label:Landroid/widget/TextView;
    const v20, 0x7f0a006b

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0c0007

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1057
    .local v9, divider:Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    const v20, 0x7f0a0069

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo;->showEmptyView(IZ)V

    .line 1060
    invoke-direct/range {p0 .. p1}, Lcom/htc/store/activity/detail/DetailInfo;->fillupDetailPreview(Lcom/htc/store/module/vo/ItemItem;)V

    .line 1065
    .end local v9           #divider:Landroid/view/View;
    .end local v14           #label:Landroid/widget/TextView;
    :cond_c
    :goto_4
    sget-object v20, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "fillupDetailInfo - end"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 908
    .end local v12           #info_end:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    .end local v13           #info_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/activity/detail/DetailInfo$InfoItem;>;"
    .end local v17           #str:Ljava/lang/String;
    .restart local v6       #description:Ljava/lang/String;
    :cond_d
    const v20, 0x7f0a002f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 916
    .end local v6           #description:Ljava/lang/String;
    .restart local v13       #info_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/activity/detail/DetailInfo$InfoItem;>;"
    :pswitch_0
    const v20, 0x7f0a0003

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItemAudio(Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    move-result-object v11

    .line 917
    .local v11, info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 920
    .end local v11           #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :pswitch_1
    const v20, 0x7f0a0032

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItemAudio(Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    move-result-object v11

    .line 921
    .restart local v11       #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 924
    .end local v11           #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :pswitch_2
    const v20, 0x7f0a0047

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItemAudio(Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    move-result-object v11

    .line 925
    .restart local v11       #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v11           #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :pswitch_3
    move-object/from16 v16, p1

    .line 928
    check-cast v16, Lcom/htc/store/module/vo/SoundsetItem;

    .line 929
    .local v16, soundset:Lcom/htc/store/module/vo/SoundsetItem;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/SoundsetItem;->getRingtoneItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    .line 930
    .local v5, audioItem:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v5, :cond_e

    .line 932
    const v20, 0x7f0a0047

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v5, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItemAudio(Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    move-result-object v11

    .line 933
    .restart local v11       #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    .end local v11           #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/SoundsetItem;->getAlarmItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    .line 936
    if-eqz v5, :cond_f

    .line 938
    const v20, 0x7f0a0003

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v5, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItemAudio(Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    move-result-object v11

    .line 939
    .restart local v11       #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    .end local v11           #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :cond_f
    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/SoundsetItem;->getNotificationItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    .line 942
    if-eqz v5, :cond_10

    .line 944
    const v20, 0x7f0a0032

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v5, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItemAudio(Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    move-result-object v11

    .line 945
    .restart local v11       #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    .end local v11           #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :cond_10
    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/SoundsetItem;->getMessageItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    .line 948
    if-eqz v5, :cond_11

    .line 950
    const v20, 0x7f0a0029

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v5, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItemAudio(Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    move-result-object v11

    .line 951
    .restart local v11       #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    .end local v11           #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :cond_11
    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/SoundsetItem;->getEmailItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    .line 954
    if-eqz v5, :cond_12

    .line 956
    const v20, 0x7f0a001b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v5, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItemAudio(Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    move-result-object v11

    .line 957
    .restart local v11       #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    .end local v11           #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :cond_12
    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/SoundsetItem;->getCalendarItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    .line 960
    if-eqz v5, :cond_13

    .line 962
    const v20, 0x7f0a0005

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v5, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItemAudio(Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    move-result-object v11

    .line 963
    .restart local v11       #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    .end local v11           #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    :cond_13
    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/SoundsetItem;->getTaskItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    .line 966
    if-eqz v5, :cond_1

    .line 967
    const v20, 0x7f0a0053

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v5, v1, v2}, Lcom/htc/store/activity/detail/DetailInfo;->createInfoItemAudio(Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    move-result-object v11

    .line 968
    .restart local v11       #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1038
    .end local v5           #audioItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v11           #info_audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    .end local v16           #soundset:Lcom/htc/store/module/vo/SoundsetItem;
    .restart local v12       #info_end:Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
    .restart local v17       #str:Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    const v21, 0x7f030008

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 1039
    .restart local v8       #detail_view:Landroid/view/View;
    const v20, 0x7f0c0017

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1040
    .restart local v14       #label:Landroid/widget/TextView;
    const v20, 0x7f0a0065

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailInfoAdapter:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->setDetailInfoList(Ljava/util/ArrayList;)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailInfoAdapter:Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/store/activity/detail/DetailInfo$DetailInfoAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 1062
    .end local v8           #detail_view:Landroid/view/View;
    .end local v14           #label:Landroid/widget/TextView;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    move/from16 v20, v0

    if-gtz v20, :cond_c

    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V

    goto/16 :goto_4

    .line 914
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fillupDetailPreview(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 11
    .parameter "item"

    .prologue
    const v10, 0x7f0a0030

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1069
    sget-object v5, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "fillupDetailPreview - start"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    if-nez p1, :cond_0

    .line 1071
    sget-object v5, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const-string v6, "fillupDetailPreview - item = null"

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :goto_0
    return-void

    .line 1075
    :cond_0
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSnapshotPortraitURL()Ljava/lang/String;

    move-result-object v3

    .line 1076
    .local v3, previewURL:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1077
    sget-object v5, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const-string v6, "fillupDetailPreview - preview url = null"

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-direct {p0, v10, v8}, Lcom/htc/store/activity/detail/DetailInfo;->showEmptyView(IZ)V

    .line 1079
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V

    goto :goto_0

    .line 1083
    :cond_1
    const-string v5, ";"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1084
    .local v4, previewUrlArray:[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v5, v4

    if-lez v5, :cond_4

    .line 1085
    array-length v1, v4

    .line 1086
    .local v1, length:I
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailPreview:Lcom/htc/store/module/view/DetailPreview;

    if-nez v5, :cond_2

    .line 1087
    new-instance v5, Lcom/htc/store/module/view/DetailPreview;

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/store/module/view/DetailPreview;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailPreview:Lcom/htc/store/module/view/DetailPreview;

    .line 1088
    :cond_2
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailPreview:Lcom/htc/store/module/view/DetailPreview;

    invoke-virtual {v5, v1}, Lcom/htc/store/module/view/DetailPreview;->setPreviewCount(I)V

    .line 1089
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailPreview:Lcom/htc/store/module/view/DetailPreview;

    invoke-virtual {v5}, Lcom/htc/store/module/view/DetailPreview;->updateLayout()V

    .line 1091
    invoke-direct {p0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->createPreviewItemList(I)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;

    .line 1092
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    if-ge v0, v5, :cond_3

    .line 1093
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;

    .line 1094
    .local v2, preview:Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailPreview:Lcom/htc/store/module/view/DetailPreview;

    invoke-virtual {v5, v0}, Lcom/htc/store/module/view/DetailPreview;->getPreviewWidth(I)I

    move-result v5

    iput v5, v2, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->width:I

    .line 1095
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailPreview:Lcom/htc/store/module/view/DetailPreview;

    invoke-virtual {v5, v0}, Lcom/htc/store/module/view/DetailPreview;->getPreviewHeight(I)I

    move-result v5

    iput v5, v2, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->height:I

    .line 1096
    aget-object v5, v4, v0

    iput-object v5, v2, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->url:Ljava/lang/String;

    .line 1097
    iput-boolean v8, v2, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->finished:Z

    .line 1092
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1099
    .end local v2           #preview:Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;
    :cond_3
    iput v8, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFinishedCount:I

    .line 1100
    new-instance v5, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    invoke-direct {v5, p0, v6, v7}, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Ljava/util/ArrayList;I)V

    iput-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetPreviewTask:Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;

    .line 1101
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetPreviewTask:Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1107
    .end local v0           #i:I
    .end local v1           #length:I
    :goto_2
    sget-object v5, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "fillupDetailPreview - end"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1103
    :cond_4
    sget-object v5, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const-string v6, "fillupDetailPreview - mPreviewUrlArray = null"

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-direct {p0, v10, v8}, Lcom/htc/store/activity/detail/DetailInfo;->showEmptyView(IZ)V

    .line 1105
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V

    goto :goto_2
.end method

.method private fillupDetailTitle(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 8
    .parameter "item"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 848
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "fillupDetailTitle - start"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    if-nez p1, :cond_0

    .line 850
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const-string v3, "fillupDetailTitle - item = null"

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :goto_0
    return-void

    .line 854
    :cond_0
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 856
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 857
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 862
    :goto_1
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSource()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 863
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonShare:Lcom/htc/widget/HeaderBarImage;

    const v3, 0x7f020018

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 864
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonShare:Lcom/htc/widget/HeaderBarImage;

    const v3, 0x7f0a0070

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 865
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonShare:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 870
    :goto_2
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->isHtcAccountExisted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 871
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo;->updateCommentLikeInfoUI(Lcom/htc/store/module/vo/ItemItem;)V

    .line 879
    :goto_3
    iget-boolean v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFinished:Z

    if-eqz v2, :cond_1

    .line 880
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonShare:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 881
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showHeaderProgressBar()V

    .line 882
    new-instance v2, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 883
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->executeCommentLikeInfoTask()V

    .line 886
    new-instance v2, Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    invoke-direct {v2, p0, v3, p1}, Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Landroid/os/Handler;Lcom/htc/store/module/vo/ItemItem;)V

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatusObserver:Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;

    .line 887
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatusObserver:Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 888
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    const/4 v3, 0x3

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 889
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 891
    .end local v0           #message:Landroid/os/Message;
    :cond_1
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "fillupDetailTitle - end"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 859
    :cond_2
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    goto :goto_1

    .line 867
    :cond_3
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonShare:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_2

    .line 873
    :cond_4
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 874
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    const v3, 0x7f0a0025

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 875
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_3
.end method

.method private getCommentNumberText(J)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1122
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1123
    const v0, 0x7f0a0008

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a0009

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDialogHomeResetWidget(Z)Landroid/app/Dialog;
    .locals 3
    .parameter "toUpdate"

    .prologue
    .line 520
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a006a

    new-instance v2, Lcom/htc/store/activity/detail/DetailInfo$2;

    invoke-direct {v2, p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$2;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/store/activity/detail/DetailInfo$1;

    invoke-direct {v1, p0}, Lcom/htc/store/activity/detail/DetailInfo$1;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private getLikeNumberText(J)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1129
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1130
    const v0, 0x7f0a0026

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a0027

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideEmptyView()V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mEmptyLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mEmptyLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    :cond_0
    return-void
.end method

.method private hideHeaderProgressBar()V
    .locals 4

    .prologue
    .line 819
    const/4 v0, 0x1

    .line 820
    .local v0, canHide:Z
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 821
    const/4 v0, 0x0

    .line 827
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->setProgressVisibility(I)V

    .line 829
    :cond_1
    return-void

    .line 822
    :cond_2
    iget v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    iget v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFinishedCount:I

    iget v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFailedCount:I

    add-int/2addr v2, v3

    if-eq v1, v2, :cond_3

    .line 823
    const/4 v0, 0x0

    goto :goto_0

    .line 824
    :cond_3
    iget v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    iget v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I

    iget v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFailedCount:I

    add-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    .line 825
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initNonUiHandler()V
    .locals 3

    .prologue
    .line 1862
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    if-eqz v1, :cond_0

    .line 1869
    :goto_0
    return-void

    .line 1865
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NonUiHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1866
    .local v0, thread:Landroid/os/HandlerThread;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1867
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1868
    new-instance v1, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    goto :goto_0
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 746
    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarMiddle;

    iput-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 747
    const v1, 0x7f0c001a

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    iput-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemTitle:Lcom/htc/widget/HeaderBarText;

    .line 748
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarText;->setSelected(Z)V

    .line 749
    const v1, 0x7f0c0019

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 750
    .local v0, backButton:Lcom/htc/widget/HeaderBarImage;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 751
    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 752
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    .line 753
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerHeaderButtonBack:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    const v1, 0x7f0c001b

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonShare:Lcom/htc/widget/HeaderBarImage;

    .line 756
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonShare:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 757
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonShare:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerHeaderButtonShare:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonShare:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 761
    const v1, 0x7f0c001c

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    .line 762
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 763
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerHeaderButtonLike:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 768
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->addDetailHeader()V

    .line 769
    return-void
.end method

.method private isAudioOrSoundsetViewType(I)Z
    .locals 1
    .parameter "view_type"

    .prologue
    .line 1341
    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    const/16 v0, 0x68

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExternalStorageNeeded(I)Z
    .locals 2
    .parameter "item_type"

    .prologue
    const/4 v0, 0x1

    .line 1346
    invoke-static {p1}, Lcom/htc/store/util/MediaUtils;->isAudioItem(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepItemInfoOnDetailItem(Lcom/htc/store/module/vo/ItemItem;Lcom/htc/store/module/vo/ItemItem;)V
    .locals 2
    .parameter "itemItem"
    .parameter "detailItem"

    .prologue
    .line 1438
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1441
    :cond_1
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLikeCount()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineLikeCount(J)V

    .line 1442
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineCommentCount()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineCommentCount(J)V

    .line 1443
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineUserFriendsLikeCount()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserFriendsLikeCount(J)V

    .line 1444
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineUserFriendsCommentCount()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserFriendsCommentCount(J)V

    .line 1445
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineUserLike()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserLike(I)V

    .line 1446
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineUserComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineUserComment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseActionButtonListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1190
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 1197
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1198
    :cond_3
    return-void
.end method

.method private releaseNonUiHandler()V
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1874
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    .line 1876
    :cond_0
    return-void
.end method

.method private resetActionButtonBackground()V
    .locals 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/util/CommonUtils;->getDetailButtonSingleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/util/CommonUtils;->getDetailButtonSingleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 1173
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/util/CommonUtils;->getDetailButtonLeftDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1174
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 1175
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/util/CommonUtils;->getDetailButtonRightDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1176
    :cond_3
    return-void
.end method

.method private sendBroadcastToPicker(Ljava/lang/String;IILcom/htc/store/module/vo/ItemItem;)V
    .locals 3
    .parameter "id"
    .parameter "type"
    .parameter "action"
    .parameter "item"

    .prologue
    .line 1351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.store.action.NOTIFY_OAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1352
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "online_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    const-string v1, "online_item_content_type"

    invoke-static {p2}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    const-string v1, "online_item_action"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1355
    const-string v1, "online_item_optional_data"

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOptionalBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1356
    if-eqz p4, :cond_0

    .line 1357
    const-string v1, "online_item_icon"

    invoke-virtual {p4}, Lcom/htc/store/module/vo/ItemItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1358
    const-string v1, "online_item_label"

    invoke-virtual {p4}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1359
    const-string v1, "online_item_preview"

    invoke-virtual {p4}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSnapshotPortraitURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    const-string v1, "online_item_preview_landscape"

    invoke-virtual {p4}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSnapshotLandscapeURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1361
    const-string v1, "online_item_size"

    invoke-virtual {p4}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/store/activity/detail/DetailInfo;->sendBroadcast(Landroid/content/Intent;)V

    .line 1364
    return-void
.end method

.method private showEmptyView(IZ)V
    .locals 5
    .parameter "strId"
    .parameter "showProgressBar"

    .prologue
    const/4 v3, 0x0

    .line 832
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mEmptyLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 833
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mEmptyLayout:Landroid/view/View;

    const v4, 0x7f0c000a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 834
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 835
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mEmptyLayout:Landroid/view/View;

    const v4, 0x7f0c0009

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 836
    .local v0, progress:Landroid/widget/ProgressBar;
    if-eqz p2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 837
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mEmptyLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 839
    .end local v0           #progress:Landroid/widget/ProgressBar;
    .end local v1           #text:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 836
    .restart local v0       #progress:Landroid/widget/ProgressBar;
    .restart local v1       #text:Landroid/widget/TextView;
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private showHeaderProgressBar()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->setProgressVisibility(I)V

    .line 816
    :cond_0
    return-void
.end method

.method private unregisterDownloadTrialContentObservers()V
    .locals 4

    .prologue
    .line 1414
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1415
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    if-ge v1, v3, :cond_1

    .line 1416
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    .line 1417
    .local v0, audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getDownloadObserver()Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;

    move-result-object v2

    .line 1418
    .local v2, obsever:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    if-eqz v2, :cond_0

    .line 1419
    invoke-virtual {v2}, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->cancel()V

    .line 1420
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->setDownloadObserver(Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;)V

    .line 1415
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1424
    .end local v0           #audio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
    .end local v1           #i:I
    .end local v2           #obsever:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    :cond_1
    return-void
.end method

.method private updateActionButton(I)V
    .locals 10
    .parameter "status"

    .prologue
    const v9, 0x7f020013

    const v8, 0x7f020011

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1201
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "updateActionButton - install status: "

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 1204
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1205
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1206
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1207
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1208
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1209
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1210
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1211
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1212
    iput-boolean v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z

    .line 1213
    packed-switch p1, :pswitch_data_0

    .line 1332
    :pswitch_0
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    const v3, 0x7f020012

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1333
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1334
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "updateActionButtion - status is unknown"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1216
    :pswitch_1
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1217
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1221
    :pswitch_2
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1222
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1223
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1227
    :pswitch_3
    iget v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I

    packed-switch v2, :pswitch_data_1

    .line 1279
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1280
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonUninstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1283
    :cond_1
    :goto_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 1284
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->disableActionButton()V

    goto :goto_0

    .line 1229
    :pswitch_4
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->isOnlinePackageTypePlugin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1230
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1231
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonUninstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    :goto_2
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/store/util/CommonUtils;->isSystemPrebuiltPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "item is system pre-built, disable uninstall button"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1233
    :cond_2
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    const v3, 0x7f020016

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1234
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonOpen:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1235
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1236
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1237
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonUninstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1238
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1239
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 1248
    :pswitch_5
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1249
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonUninstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1250
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/store/util/CommonUtils;->isSystemPrebuiltPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1251
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "item is system pre-built, disable uninstall button"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1252
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1259
    :pswitch_6
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1260
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonOpen:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1262
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1263
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonUninstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1264
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1265
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 1275
    :pswitch_7
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1276
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonOpen:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1288
    :pswitch_8
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePrice()F

    move-result v0

    .line 1289
    .local v0, price:F
    iget-boolean v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mIsPurchased:Z

    if-nez v2, :cond_3

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 1290
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/htc/store/util/CommonUtils;->getPriceString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v1

    .line 1291
    .local v1, str_price:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonDownload:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1293
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonText:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1294
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 1296
    .end local v1           #str_price:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    const v3, 0x7f020012

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1297
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonDownload:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1301
    .end local v0           #price:F
    :pswitch_9
    iput-boolean v6, p0, Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z

    .line 1302
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageSingle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1303
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1304
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonDownload:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageLeft:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1306
    iget v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I

    packed-switch v2, :pswitch_data_2

    .line 1324
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1325
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonUninstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1326
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 1310
    :pswitch_a
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1311
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnClickListenerActionButtonOpen:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1312
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mActionButtonImageRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 1213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1227
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 1306
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private updateCommentLikeInfoUI(Lcom/htc/store/module/vo/ItemItem;)V
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 1136
    if-nez p1, :cond_0

    .line 1137
    sget-object v1, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const-string v2, "updateCommentLikeInfoUI - item = null"

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :goto_0
    return-void

    .line 1140
    :cond_0
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineUserLike()I

    move-result v0

    .line 1141
    .local v0, liked:I
    if-ne v0, v7, :cond_2

    .line 1142
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1143
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f0a0044

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1151
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1153
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineCommentCount()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-ltz v1, :cond_3

    .line 1154
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mCommentNumberText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineCommentCount()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/htc/store/activity/detail/DetailInfo;->getCommentNumberText(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    :goto_2
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLikeCount()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-ltz v1, :cond_4

    .line 1160
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mLikeNumberText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLikeCount()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/htc/store/activity/detail/DetailInfo;->getLikeNumberText(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    :goto_3
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mLikeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1164
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mLikeNumberText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1145
    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1146
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1148
    if-eqz v0, :cond_1

    .line 1149
    sget-object v1, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "updateCommentLikeInfoUI - user like is unknown, "

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1156
    :cond_3
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mCommentNumberText:Landroid/widget/TextView;

    invoke-direct {p0, v5, v6}, Lcom/htc/store/activity/detail/DetailInfo;->getCommentNumberText(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1162
    :cond_4
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mLikeNumberText:Landroid/widget/TextView;

    invoke-direct {p0, v5, v6}, Lcom/htc/store/activity/detail/DetailInfo;->getLikeNumberText(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 448
    iget v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 449
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOrientation:I

    .line 450
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailPreview:Lcom/htc/store/module/view/DetailPreview;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHasDetailView:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mDetailPreview:Lcom/htc/store/module/view/DetailPreview;

    invoke-virtual {v0}, Lcom/htc/store/module/view/DetailPreview;->updateLayout()V

    .line 454
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 455
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 260
    iput-boolean v5, p0, Lcom/htc/store/activity/BaseActivity;->mHasToSetBackground:Z

    .line 261
    iput-boolean v6, p0, Lcom/htc/store/activity/detail/DetailInfo;->mFirstCreate:Z

    .line 262
    iput-boolean v5, p0, Lcom/htc/store/activity/BaseActivity;->mCheckAccountOnResume:Z

    .line 263
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 264
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/detail/DetailInfo;->setContentView(I)V

    .line 265
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->initViews()V

    .line 266
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOrientation:I

    .line 267
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getParent()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 268
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "store_inside"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mIsFromInside:Z

    .line 269
    iget-boolean v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mIsFromInside:Z

    if-eqz v2, :cond_3

    .line 270
    const-string v2, "item_item"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/htc/store/module/vo/ItemItem;

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    .line 271
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    if-eqz v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;

    .line 273
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v2

    iput v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I

    .line 278
    :goto_0
    iput v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I

    .line 290
    :goto_1
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const-string v3, "online item id is null"

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->finish()V

    .line 295
    :cond_0
    iget v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I

    if-nez v2, :cond_1

    .line 296
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "item type is not defined"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_1
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "item id = "

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "item type = "

    aput-object v4, v3, v5

    iget v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I

    invoke-static {v4}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    sget-object v2, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "item status = "

    aput-object v4, v3, v5

    iget v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    return-void

    .line 275
    :cond_2
    const-string v2, "online_item_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;

    .line 276
    const-string v2, "online_item_content_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I

    goto :goto_0

    .line 280
    :cond_3
    const-string v2, "online_item_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;

    .line 281
    iput v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I

    .line 284
    const-string v2, "online_item_content_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 286
    invoke-static {v0}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemType(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I

    .line 287
    :cond_4
    const-string v2, "online_item_optional_data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOptionalBundle:Landroid/os/Bundle;

    goto/16 :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, result:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 513
    invoke-super {p0, p1, p2}, Lcom/htc/store/activity/BaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 507
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getDialogHomeResetWidget(Z)Landroid/app/Dialog;

    move-result-object v0

    .line 508
    goto :goto_0

    .line 510
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->getDialogHomeResetWidget(Z)Landroid/app/Dialog;

    move-result-object v0

    .line 511
    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 463
    const v0, 0x7f0a0042

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a12

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 465
    const v0, 0x7f0a006f

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 467
    const v0, 0x7f0a001a

    invoke-interface {p1, v2, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208032f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 469
    return v3
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 414
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->releaseActionButtonListener()V

    .line 415
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 417
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetAudioSamplesTask:Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetAudioSamplesTask:Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->cancelTask()V

    .line 422
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->unregisterDownloadTrialContentObservers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    :try_start_1
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->releaseNonUiHandler()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 433
    :goto_1
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v1}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 436
    :cond_2
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onDestroy()V

    .line 437
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 431
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 486
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 497
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 488
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/store/util/ActivityUtils;->viewAppDetail(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 489
    goto :goto_0

    .line 491
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/ActivityUtils;->showSettings(Landroid/content/Context;)V

    move v0, v1

    .line 492
    goto :goto_0

    .line 494
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/store/activity/detail/DetailTab;

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailTab;->enterEditTab()V

    move v0, v1

    .line 495
    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 393
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onPause()V

    .line 395
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetPreviewTask:Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetPreviewTask:Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->cancelTask()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->sendEmptyMessage(I)Z

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatusObserver:Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatusObserver:Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatusObserver:Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->removeMessages(I)V

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 474
    iget v2, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 475
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 481
    :goto_0
    return v1

    .line 477
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->isHtcAccountChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "direct_to"

    const-string v4, "direct_to_detail"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v3, "default_tab_detail"

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v3, "store_inside"

    iget-boolean v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mIsFromInside:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    iget-boolean v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mIsFromInside:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    if-eqz v3, :cond_3

    .line 312
    const-string v3, "item_item"

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 316
    :goto_0
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    if-nez v3, :cond_0

    .line 317
    new-instance v3, Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Lcom/htc/store/provider/AccessHelper;->removeItemTTLItem(Ljava/lang/String;I)I

    .line 319
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->finish()V

    .line 320
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/htc/store/util/ActivityUtils;->restartStore(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 322
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onResume()V

    .line 323
    sget-object v3, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "mFirstCreate = "

    aput-object v5, v4, v6

    iget-boolean v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mFirstCreate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-boolean v3, p0, Lcom/htc/store/activity/BaseActivity;->mIsInternalStorageLow:Z

    if-eqz v3, :cond_4

    .line 325
    sget-object v3, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "internal storagr is low, return"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_2
    :goto_1
    return-void

    .line 314
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_3
    const-string v3, "online_item_id"

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 329
    sget-object v3, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "network is unavailable, return"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showNoNetworkDialogCancelToFinish()V

    goto :goto_1

    .line 333
    :cond_5
    iget-boolean v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mFirstCreate:Z

    if-nez v3, :cond_e

    .line 334
    iget-boolean v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHasToUpdateActionButton:Z

    if-eqz v3, :cond_6

    .line 335
    iput-boolean v6, p0, Lcom/htc/store/activity/detail/DetailInfo;->mHasToUpdateActionButton:Z

    .line 336
    iget v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I

    invoke-direct {p0, v3}, Lcom/htc/store/activity/detail/DetailInfo;->updateActionButton(I)V

    .line 338
    :cond_6
    iget-boolean v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFailed:Z

    if-eqz v3, :cond_7

    .line 339
    iput-boolean v6, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFailed:Z

    .line 340
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showCommonErrorDialogToFinish()V

    goto :goto_1

    .line 342
    :cond_7
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 343
    iget v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    if-lez v3, :cond_c

    iget v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    iget v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFinishedCount:I

    if-eq v3, v4, :cond_c

    .line 344
    new-instance v3, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsCount:I

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Ljava/util/ArrayList;I)V

    iput-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetPreviewTask:Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;

    .line 345
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetPreviewTask:Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 346
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showHeaderProgressBar()V

    .line 351
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesList:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 352
    iget v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    if-lez v3, :cond_d

    iget v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    iget v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesFinishedCount:I

    if-eq v3, v4, :cond_d

    .line 353
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetAudioSamplesTask:Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;

    if-eqz v3, :cond_9

    .line 354
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetAudioSamplesTask:Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;

    invoke-virtual {v3}, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->cancelTask()V

    .line 356
    :cond_9
    :try_start_0
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->unregisterDownloadTrialContentObservers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_3
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    new-instance v3, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mAudioSamplesCount:I

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Ljava/util/ArrayList;I)V

    iput-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetAudioSamplesTask:Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;

    .line 363
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetAudioSamplesTask:Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/htc/store/activity/detail/DetailInfo$GetAudioSamplesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 364
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showHeaderProgressBar()V

    .line 369
    :cond_a
    :goto_4
    iget-boolean v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFinished:Z

    if-eqz v3, :cond_2

    .line 370
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_b

    .line 371
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 372
    :cond_b
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->showHeaderProgressBar()V

    .line 373
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->executeCommentLikeInfoTask()V

    .line 374
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->disableActionButton()V

    .line 375
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatus:I

    .line 377
    new-instance v3, Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Landroid/os/Handler;Lcom/htc/store/module/vo/ItemItem;)V

    iput-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatusObserver:Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;

    .line 378
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemStatusObserver:Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 379
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-static {v3, v9, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 380
    .local v2, message:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 348
    .end local v2           #message:Landroid/os/Message;
    :cond_c
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V

    goto :goto_2

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 366
    .end local v1           #e:Ljava/lang/Exception;
    :cond_d
    invoke-direct {p0}, Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V

    goto :goto_4

    .line 384
    :cond_e
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailInfo;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_f

    .line 385
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 387
    :cond_f
    iput-boolean v6, p0, Lcom/htc/store/activity/detail/DetailInfo;->mFirstCreate:Z

    goto/16 :goto_1
.end method

.method protected onWindowFirstFocused()V
    .locals 4

    .prologue
    .line 442
    sget-object v0, Lcom/htc/store/activity/detail/DetailInfo;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onWindowFirstFocused()"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    return-void
.end method

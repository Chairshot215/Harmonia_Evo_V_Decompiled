.class public Lcom/htc/home/personalize/onlineskin/OnlineSkin;
.super Landroid/app/Activity;
.source "OnlineSkin.java"

# interfaces
.implements Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;
    }
.end annotation


# static fields
.field private static final ACTIVITY_RESULT_LOGIN_CS_ACCOUNT:I = 0xcce

.field private static final ACTIVITY_RESULT_TERM_OF_SERVICE:I = 0xccd

.field private static final ANIMATE_LOADING_VIEW:I = 0x3d

.field private static final CACHE_SIZE:I = 0xa

.field private static final COUNTOFLOADINGTEXTIDX:I = 0x4

.field private static final DEFAULT_ANIMATE_TIME:J = 0x3e8L

.field private static final ID_MENU_UIMODE:I = 0x1

.field public static final PREF_KEY_FLING_RATIO:Ljava/lang/String; = "PICKER_FLING_RATIO"

.field private static final TAG:Ljava/lang/String; = "SkinPicker.OnlineSkin"

.field private static mListView:Lcom/htc/widget/HtcListView;


# instance fields
.field private MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

.field private mCmdBtnLClickListener:Landroid/view/View$OnClickListener;

.field private mCmdBtnRClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDeckControl:Lcom/htc/widget/DeckControl;

.field private mDeckControlView:Lcom/htc/widget/DeckControlView;

.field private mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mHeaderBar:Lcom/htc/widget/HeaderBar;

.field private mHeaderCountText:Ljava/lang/String;

.field private mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mHeaderTitleText:Ljava/lang/String;

.field private mIdMenuItemNeedUpdate:Z

.field private mItemDownloadProgress:Landroid/widget/ProgressBar;

.field private mMessageBoard:Landroid/widget/TextView;

.field private mOnSkinItemClicked:Lcom/htc/widget/DeckControl$OnItemClickListener;

.field private mOnSkinItemSelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

.field private mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

.field private mOnlineSkinHandler:Landroid/os/Handler;

.field mPreloadBackground:Landroid/graphics/Bitmap;

.field private mSelectedSkinId:I

.field private mSelectedSkinStatus:I

.field private mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

.field private mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

.field private mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

.field private mTextLoading:Landroid/widget/TextView;

.field private mTextSkinName:Landroid/widget/TextView;

.field private mbIsControlsEnable:Z

.field private mbIsLoadingList:Z

.field private mnLoadingTextIdx:I

.field private mnOrientation:I

.field private mnViewType:I

.field private mstrCaller:Ljava/lang/String;

.field private mstrLoadingText:Ljava/lang/String;

.field private progressDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    iput v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    .line 78
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 79
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 82
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    .line 87
    iput-boolean v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mbIsControlsEnable:Z

    .line 88
    iput-boolean v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mIdMenuItemNeedUpdate:Z

    .line 89
    const/16 v0, 0x66

    iput v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    .line 90
    iput v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnOrientation:I

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinStatus:I

    .line 92
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrCaller:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextSkinName:Landroid/widget/TextView;

    .line 95
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    .line 96
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mItemDownloadProgress:Landroid/widget/ProgressBar;

    .line 98
    iput v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I

    .line 99
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    .line 100
    iput-boolean v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mbIsLoadingList:Z

    .line 106
    sget-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->PREPAREDOWNLOAD:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    .line 109
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->progressDialog:Landroid/app/Dialog;

    .line 111
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 113
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 114
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 115
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 116
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 117
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderTitleText:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderCountText:Ljava/lang/String;

    .line 442
    new-instance v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$6;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$6;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mCmdBtnLClickListener:Landroid/view/View$OnClickListener;

    .line 484
    new-instance v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$7;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$7;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mCmdBtnRClickListener:Landroid/view/View$OnClickListener;

    .line 513
    new-instance v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnSkinItemClicked:Lcom/htc/widget/DeckControl$OnItemClickListener;

    .line 543
    new-instance v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnSkinItemSelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    .line 884
    new-instance v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;

    .line 1293
    new-instance v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$14;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$14;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private CloseOnlinSkin()V
    .locals 7

    .prologue
    .line 581
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrCaller:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrCaller:Ljava/lang/String;

    const-string v5, "com.htc.home.personalize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 583
    const-string v4, "SkinPicker.OnlineSkin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller skinpicker. caller = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrCaller:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 585
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    iget v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->getSkinOnIndex(I)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v1

    .line 586
    .local v1, item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-eqz v1, :cond_0

    .line 588
    iget-object v2, v1, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    .line 589
    .local v2, strGUID:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    invoke-virtual {v4, v2}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, strPackageName:Ljava/lang/String;
    const-string v4, "PackageName"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    .end local v2           #strGUID:Ljava/lang/String;
    .end local v3           #strPackageName:Ljava/lang/String;
    :cond_0
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setResult(ILandroid/content/Intent;)V

    .line 597
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->finish()V

    .line 598
    return-void

    .line 594
    :cond_1
    const-string v4, "SkinPicker.OnlineSkin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller not skinpicker. caller = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrCaller:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->LaunchSkinPicker()V

    goto :goto_0
.end method

.method private LaunchSkinPicker()V
    .locals 4

    .prologue
    .line 573
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 574
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.ACTION_ONLINE_GOTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v1, "com.htc.skinpicker.EXTRA_FOCUSEDID"

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    iget v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getSkinOnIndex(I)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 577
    return-void
.end method

.method private MoveFocusToCurrentSkin()V
    .locals 3

    .prologue
    .line 1101
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1103
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    .line 1108
    :goto_0
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 1112
    :goto_1
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyDataSetChanged()V

    .line 1113
    return-void

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    iget v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->moveFocusToSkin(I)I

    goto :goto_0

    .line 1111
    :cond_1
    sget-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mListView:Lcom/htc/widget/HtcListView;

    iget v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_1
.end method

.method private ShowNetWorkErrorMsg()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x20c009e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c009f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000a

    new-instance v2, Lcom/htc/home/personalize/onlineskin/OnlineSkin$3;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$3;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/htc/home/personalize/onlineskin/OnlineSkin$2;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$2;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/home/personalize/onlineskin/OnlineSkin$1;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$1;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 326
    return-void
.end method

.method private ShowStorageFullMsg()V
    .locals 3

    .prologue
    .line 427
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x20c01c1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c01c2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000a

    new-instance v2, Lcom/htc/home/personalize/onlineskin/OnlineSkin$5;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$5;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c000a

    new-instance v2, Lcom/htc/home/personalize/onlineskin/OnlineSkin$4;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$4;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 441
    return-void
.end method

.method private StartOnLineSkin()V
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getSkinList()V

    .line 329
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->loadPreviousViewType()V

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateViewVisibility(Z)V

    .line 331
    return-void
.end method

.method private SwitchViewType(Landroid/view/MenuItem;)V
    .locals 4
    .parameter "item"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 777
    iput-boolean v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mIdMenuItemNeedUpdate:Z

    .line 779
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    if-ne v0, v3, :cond_0

    .line 781
    const/16 v0, 0x65

    iput v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    .line 782
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateViewVisibility(Z)V

    .line 783
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->pause()V

    .line 784
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->storeViewType()V

    .line 785
    sget-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mListView:Lcom/htc/widget/HtcListView;

    iget v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 794
    :goto_0
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateFocusInfo(I)V

    .line 795
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    iget v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->setViewType(I)V

    .line 796
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyDataSetChanged()V

    .line 797
    return-void

    .line 787
    :cond_0
    iput v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    .line 788
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateViewVisibility(Z)V

    .line 789
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->resume()V

    .line 790
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->storeViewType()V

    .line 791
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    goto :goto_0
.end method

.method private UpdateButton()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mItemDownloadProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    if-nez v0, :cond_1

    .line 375
    :cond_0
    const-string v0, "SkinPicker.OnlineSkin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid progress bar or cmdbar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mItemDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->isLoadingItem(I)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 381
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 388
    :goto_1
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updateSelectedSkinStatus()V

    .line 390
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinStatus:I

    packed-switch v0, :pswitch_data_0

    .line 406
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mItemDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 407
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "incorrect download status"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_1

    .line 393
    :pswitch_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mItemDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    goto :goto_0

    .line 397
    :pswitch_1
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mItemDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    goto :goto_0

    .line 401
    :pswitch_2
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mItemDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private UpdateFocusInfo(I)V
    .locals 0
    .parameter "nPos"

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateButton()V

    .line 770
    iput p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    .line 771
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateSkinNameText(I)V

    .line 772
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateIndexText(I)V

    .line 773
    return-void
.end method

.method private UpdateIndexText(I)V
    .locals 8
    .parameter "nPos"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 717
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-nez v2, :cond_0

    .line 719
    const-string v2, "SkinPicker.OnlineSkin"

    const-string v3, "can not find skin_index"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    if-nez v2, :cond_1

    .line 725
    const-string v2, "SkinPicker.OnlineSkin"

    const-string v3, "invalid mDeckControlView"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 729
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getCount()I

    move-result v0

    .line 730
    .local v0, count:I
    iget v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    if-nez v0, :cond_3

    .line 731
    :cond_2
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderCountText:Ljava/lang/String;

    .line 735
    :goto_1
    const-string v2, "%s %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderTitleText:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderCountText:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, strHeaderText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 733
    .end local v1           #strHeaderText:Ljava/lang/String;
    :cond_3
    const-string v2, "(%d/%d)"

    new-array v3, v7, [Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderCountText:Ljava/lang/String;

    goto :goto_1
.end method

.method private UpdateSkinNameText(I)V
    .locals 3
    .parameter "nPos"

    .prologue
    .line 741
    iget v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 764
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextSkinName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    if-nez v1, :cond_2

    .line 745
    :cond_1
    const-string v1, "SkinPicker.OnlineSkin"

    const-string v2, "can not find skin_name or mOnlineAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->isLoadingItem(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 751
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextSkinName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 755
    :cond_3
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getSkinOnIndex(I)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v0

    .line 756
    .local v0, item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-nez v0, :cond_4

    .line 758
    const-string v1, "SkinPicker.OnlineSkin"

    const-string v2, "can not find valid item"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextSkinName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 763
    :cond_4
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextSkinName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private UpdateViewVisibility(Z)V
    .locals 10
    .parameter "bHideAll"

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    const/high16 v7, -0x100

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 801
    const-string v2, "SkinPicker.OnlineSkin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateViewVisibility "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const v2, 0x7f0b0046

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 803
    .local v0, layoutList:Landroid/view/View;
    const v2, 0x7f0b0044

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 804
    .local v1, layoutPanel:Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 806
    :cond_0
    const-string v2, "SkinPicker.OnlineSkin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid list or panel. list = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", panel ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_1
    :goto_0
    return-void

    .line 810
    :cond_2
    if-ne p1, v6, :cond_3

    .line 812
    invoke-direct {p0, v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updatePanelViewVisibility(Z)V

    .line 813
    invoke-direct {p0, v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updateListViewVisibility(Z)V

    .line 814
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 815
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 816
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 818
    :cond_3
    iget v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_5

    .line 820
    invoke-direct {p0, v6}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updatePanelViewVisibility(Z)V

    .line 821
    invoke-direct {p0, v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updateListViewVisibility(Z)V

    .line 822
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 823
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 824
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 826
    :cond_4
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 827
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 828
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 831
    :cond_5
    invoke-direct {p0, v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updatePanelViewVisibility(Z)V

    .line 832
    invoke-direct {p0, v6}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updateListViewVisibility(Z)V

    .line 833
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 834
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 835
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 837
    :cond_6
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 838
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 839
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;)Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->StartOnLineSkin()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateButton()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->ShowStorageFullMsg()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->CloseOnlinSkin()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mbIsControlsEnable:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateFocusInfo(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->showDownloadingCursor()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->dismissDownloadingCursor()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->dismissLodaingText()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->enableControls(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updateSelectedSkinStatus()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updatePanelViewVisibility(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updateListViewVisibility(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->checkLaunchIntent()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->checkAndUpdateSkinStatus()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mbIsLoadingList:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I

    return v0
.end method

.method static synthetic access$2602(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I

    return p1
.end method

.method static synthetic access$2608(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setLoadingString(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->isLoadingItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinStatus:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/widget/DeckControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    return-object v0
.end method

.method static synthetic access$3100()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getSkinList()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->startLoginWizardIfNeed()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->hasCSLoggedIn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    return-object v0
.end method

.method private checkAndUpdateSkinStatus()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1326
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->getSkinList()Ljava/util/ArrayList;

    move-result-object v12

    .line 1327
    .local v12, skinlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/storedatamanager/StoreItem;>;"
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1328
    const-string v1, ""

    .line 1329
    .local v1, strProductID:Ljava/lang/String;
    const-string v3, ""

    .line 1330
    .local v3, strPackageName:Ljava/lang/String;
    const-string v4, ""

    .line 1331
    .local v4, strDisplayName:Ljava/lang/String;
    const-string v5, ""

    .line 1332
    .local v5, strVersion:Ljava/lang/String;
    const/4 v8, -0x1

    .line 1334
    .local v8, nStatus:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 1335
    .local v11, skin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    iget-object v1, v11, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    .line 1336
    iget-object v3, v11, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appPackageName:Ljava/lang/String;

    .line 1337
    iget-object v4, v11, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    .line 1338
    iget-object v5, v11, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    .line 1339
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->GetDownloadStatus(Ljava/lang/String;)I

    move-result v8

    .line 1341
    const/4 v0, 0x2

    if-ne v8, v0, :cond_0

    .line 1343
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1344
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/16 v0, 0x100

    invoke-virtual {v10, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1345
    .local v9, pi:Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_1

    .line 1346
    const-string v0, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " is installed"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1352
    .end local v9           #pi:Landroid/content/pm/PackageInfo;
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    .line 1353
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NameNotFoundException"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const-string v0, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " is not installed"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateButton()V

    goto/16 :goto_0

    .line 1348
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #pi:Landroid/content/pm/PackageInfo;
    .restart local v10       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    const-string v0, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " is not installed"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateButton()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1361
    .end local v1           #strProductID:Ljava/lang/String;
    .end local v3           #strPackageName:Ljava/lang/String;
    .end local v4           #strDisplayName:Ljava/lang/String;
    .end local v5           #strVersion:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #nStatus:I
    .end local v9           #pi:Landroid/content/pm/PackageInfo;
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    .end local v11           #skin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :cond_2
    return-void
.end method

.method private checkLaunchIntent()V
    .locals 3

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1119
    .local v0, intentLaunch:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 1121
    const-string v2, "notification_item_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1123
    const-string v2, "notification_item_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1124
    .local v1, strGUID:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setFocusedSkin(Ljava/lang/String;)V

    .line 1130
    .end local v1           #strGUID:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->MoveFocusToCurrentSkin()V

    .line 1131
    :cond_1
    return-void
.end method

.method private dismissDownloadingCursor()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-nez v0, :cond_0

    .line 705
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "headerBar not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method private dismissLodaingText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 647
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 649
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "showLoadingText can not get text view loading_text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :goto_0
    return-void

    .line 653
    :cond_0
    iput v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I

    .line 654
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setLoadingString(I)V

    .line 655
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    iput-boolean v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mbIsLoadingList:Z

    goto :goto_0
.end method

.method private dismiss_alert()V
    .locals 3

    .prologue
    .line 1280
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->progressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 1283
    :try_start_0
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->progressDialog:Landroid/app/Dialog;

    .line 1291
    :cond_0
    return-void

    .line 1285
    :catch_0
    move-exception v0

    .line 1286
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "SkinPicker.OnlineSkin"

    const-string v2, "dismiss_alert: IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableControls(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mbIsControlsEnable:Z

    .line 877
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->setIsListDownloaded(Z)V

    .line 878
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 879
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 880
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlView;->setEnabled(Z)V

    .line 881
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyDataSetChanged()V

    .line 882
    return-void
.end method

.method private getFlingRatio()F
    .locals 2

    .prologue
    .line 171
    const/high16 v0, 0x3f80

    .line 173
    .local v0, ret:F
    :try_start_0
    const-string v1, "PICKER_FLING_RATIO"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getSkinList()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    sget-object v1, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->DOWNLODING:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    if-ne v0, v1, :cond_0

    .line 602
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "Had start download skinlist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->showDownloadingCursor()V

    .line 606
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->showLoadingText()V

    .line 607
    sget-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->DOWNLODING:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    .line 608
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->retrieveSkinList()V

    goto :goto_0
.end method

.method private hasAcceptedTermOfService()Z
    .locals 4

    .prologue
    .line 1015
    const-string v0, "1"

    .line 1016
    .local v0, accepted:Ljava/lang/String;
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOS accepted? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private hasCSLoggedIn()Z
    .locals 4

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->isCSActive(Landroid/content/Context;)Z

    move-result v0

    .line 1009
    .local v0, isCSActive:Z
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCSActive? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return v0
.end method

.method private initDefaultView()V
    .locals 5

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000e

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 162
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f0b0037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 164
    .local v1, wallpaper:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v2, v0}, Lcom/htc/widget/DeckControl;->setDefaultView(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method private initUI()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1161
    const v4, 0x7f030016

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setContentView(I)V

    .line 1162
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setupHeaderFooter()V

    .line 1164
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1165
    .local v1, itemWidth:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1166
    .local v0, itemHeight:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1168
    .local v3, reflectionHeight:I
    const v4, 0x7f0b0030

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/DeckControlView;

    iput-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 1169
    new-instance v4, Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    const/16 v7, 0xa

    invoke-direct {v4, v5, v6, v7}, Lcom/htc/widget/DeckControl;-><init>(Landroid/content/Context;Lcom/htc/widget/DeckControlView;I)V

    iput-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 1170
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControlView;->addView(Lcom/htc/sunny/SView;)V

    .line 1171
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1172
    .local v2, refColor:I
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v2, v2, v2}, Lcom/htc/widget/DeckControl;->setReflectionColor(III)V

    .line 1173
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v3}, Lcom/htc/widget/DeckControl;->setReflectionHeight(I)V

    .line 1174
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v1, v0}, Lcom/htc/widget/DeckControl;->setItemSize(II)V

    .line 1175
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setYOffset(F)V

    .line 1177
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setAdapter(Lcom/htc/widget/DeckControlAdapter;)V

    .line 1178
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnSkinItemSelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setOnItemSelectedListener(Lcom/htc/widget/DeckControl$OnItemSelectedListener;)V

    .line 1179
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnSkinItemClicked:Lcom/htc/widget/DeckControl$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setOnItemClickListener(Lcom/htc/widget/DeckControl$OnItemClickListener;)V

    .line 1180
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setBackground(I)V

    .line 1183
    const v4, 0x7f0b0014

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    sput-object v4, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mListView:Lcom/htc/widget/HtcListView;

    .line 1184
    sget-object v4, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1185
    sget-object v4, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1189
    sget-object v4, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v5, Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1203
    sget-object v4, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v5, Lcom/htc/home/personalize/onlineskin/OnlineSkin$12;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$12;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1224
    const v4, 0x7f0b0034

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextSkinName:Landroid/widget/TextView;

    .line 1225
    const v4, 0x7f0b0033

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mItemDownloadProgress:Landroid/widget/ProgressBar;

    .line 1227
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v5, 0x7f090007

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1228
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mCmdBtnLClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1231
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mCmdBtnRClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1233
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    .line 1234
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-virtual {v4, p0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->RegisterDownloadEventListener(Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;)V

    .line 1236
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderTitleText:Ljava/lang/String;

    .line 1237
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderTitleText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderCountText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 1239
    iget-boolean v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mbIsControlsEnable:Z

    invoke-direct {p0, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->enableControls(Z)V

    .line 1241
    const v4, 0x7f0b0048

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    .line 1243
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCornerStrokeColor(I)V

    .line 1244
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    new-instance v5, Lcom/htc/home/personalize/onlineskin/OnlineSkin$13;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$13;-><init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1255
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->loadPreviousViewType()V

    .line 1256
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setOrientation(I)V

    .line 1257
    invoke-direct {p0, v8}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateViewVisibility(Z)V

    .line 1258
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->init()V

    .line 1259
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyDataSetChanged()V

    .line 1261
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mbIsControlsEnable:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1263
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-static {}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->DownloadPreviews()V

    .line 1265
    :cond_0
    return-void
.end method

.method private isCSPackageInstalled()Z
    .locals 4

    .prologue
    .line 1002
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 1003
    .local v0, isCSPackageInstalled:Z
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCSPackageInstalled? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return v0
.end method

.method private isLoadingItem(I)Z
    .locals 2
    .parameter "nPos"

    .prologue
    const/4 v0, 0x1

    .line 713
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-static {}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->hasNextPage()Z

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPreviousViewType()V
    .locals 4

    .prologue
    .line 348
    const-string v1, "SkinPicker.OnlineSkin"

    const-string v2, "loadPreviousViewType + Online "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    const-string v2, "pref_skinpicker"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 351
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_mode"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    .line 352
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    iget v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->setViewType(I)V

    .line 353
    iget v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 354
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->pause()V

    .line 357
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mIdMenuItemNeedUpdate:Z

    .line 358
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPreviousViewType - Online "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->resume()V

    goto :goto_0
.end method

.method private onLoginWizardFinished()V
    .locals 2

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->hasCSLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "Still not logged in after login wizard complete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->finish()V

    .line 1070
    :cond_0
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "Login complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void
.end method

.method private onTermsOfServiceFinished()V
    .locals 2

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->hasAcceptedTermOfService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "Still not accept after Term of Service Page complete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->finish()V

    .line 1079
    :cond_0
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "TOS accepted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->startLoginWizardIfNeed()V

    .line 1083
    return-void
.end method

.method private setFocusedSkin(Ljava/lang/String;)V
    .locals 4
    .parameter "strGUID"

    .prologue
    .line 1087
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1089
    :cond_0
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid input guid in setFocusedSkin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_1
    :goto_0
    return-void

    .line 1093
    :cond_2
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusedSkin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getIdxOfSkin(Ljava/lang/String;)I

    move-result v0

    .line 1095
    .local v0, nIdx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1096
    iput v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    goto :goto_0
.end method

.method private setLoadingString(I)V
    .locals 4
    .parameter "nIdx"

    .prologue
    .line 661
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 663
    const-string v1, "SkinPicker.OnlineSkin"

    const-string v2, "setLoadingString mTextLoading is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 669
    const v1, 0x20c00a3

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    .line 670
    :goto_1
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 672
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    goto :goto_1

    .line 676
    :cond_1
    const/4 v0, 0x0

    .line 678
    .local v0, strLoading:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 693
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incorrect index value in getLoadingString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    :goto_2
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set loading text "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 681
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    goto :goto_2

    .line 684
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    goto :goto_2

    .line 687
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    goto :goto_2

    .line 690
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    goto :goto_2

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setOrientation(I)V
    .locals 2
    .parameter "nOrientation"

    .prologue
    .line 1147
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnOrientation:I

    if-ne v0, p1, :cond_0

    .line 1149
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "same orientation, return"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :goto_0
    return-void

    .line 1153
    :cond_0
    iput p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnOrientation:I

    .line 1154
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    iget v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->setOrientation(I)V

    .line 1155
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->init()V

    .line 1156
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private showDownloadingCursor()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-nez v0, :cond_0

    .line 614
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "headerBar not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method private showLoadingText()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 622
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 624
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "showLoadingText can not get text view loading_text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_0
    return-void

    .line 628
    :cond_0
    iput v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I

    .line 629
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setLoadingString(I)V

    .line 630
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 631
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 637
    :goto_1
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    invoke-direct {p0, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updatePanelViewVisibility(Z)V

    .line 640
    invoke-direct {p0, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updateListViewVisibility(Z)V

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mbIsLoadingList:Z

    .line 642
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;

    const/16 v1, 0x3d

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 635
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private startLoginWizardIfNeed()V
    .locals 5

    .prologue
    .line 1042
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->hasCSLoggedIn()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1043
    const-string v2, "SkinPicker.OnlineSkin"

    const-string v3, "Has been logged in"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_0
    return-void

    .line 1047
    :cond_0
    const-string v2, "SkinPicker.OnlineSkin"

    const-string v3, "Not logged in yet"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const-string v2, "SkinPicker.OnlineSkin"

    const-string v3, "Starting login wizard..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1052
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.cs"

    const-string v3, "com.htc.cs.activity.accountactivities.CS_login"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    const-string v2, "IntentSource"

    const-string v3, "thirdPartyWIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    const/16 v2, 0xcce

    invoke-virtual {p0, v1, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1056
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1057
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SkinPicker.OnlineSkin"

    const-string v3, "Can\'t start Activitry: com.htc.cs.activity.accountactivities.CS_login"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1059
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    const-string v3, "Cannot launch login wizard"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1060
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->finish()V

    goto :goto_0
.end method

.method private startTermOfService()V
    .locals 6

    .prologue
    .line 1022
    const-string v3, "SkinPicker.OnlineSkin"

    const-string v4, "Starting Term of Service..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1025
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.wdm.activity.TermOfServicePage"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    const-string v2, ""

    .line 1027
    .local v2, tosUrl:Ljava/lang/String;
    const-string v3, "SkinPicker.OnlineSkin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TOS Url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v3, "TermOfServiceHttpURL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    const/16 v3, 0xccd

    invoke-virtual {p0, v1, v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #tosUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SkinPicker.OnlineSkin"

    const-string v4, "Can\'t start Activitry: Term Of Service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1034
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    const-string v4, "Cannot show Term of Service"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1035
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->finish()V

    goto :goto_0
.end method

.method private storeViewType()V
    .locals 5

    .prologue
    .line 363
    const-string v2, "SkinPicker.OnlineSkin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeViewType + Online "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    const-string v3, "pref_skinpicker"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 366
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 367
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ui_mode"

    iget v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 369
    const-string v2, "SkinPicker.OnlineSkin"

    const-string v3, "storeViewType - Online"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method

.method private updateListViewVisibility(Z)V
    .locals 4
    .parameter "bVisible"

    .prologue
    .line 862
    const v1, 0x7f0b0046

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 863
    .local v0, layoutList:Landroid/view/View;
    if-nez v0, :cond_0

    .line 864
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid list = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :goto_0
    return-void

    .line 867
    :cond_0
    if-eqz p1, :cond_1

    .line 868
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 870
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePanelViewVisibility(Z)V
    .locals 4
    .parameter "bVisible"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 845
    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 846
    .local v0, layoutPanel:Landroid/view/View;
    if-nez v0, :cond_0

    .line 847
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid panel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_0
    return-void

    .line 850
    :cond_0
    if-eqz p1, :cond_1

    .line 851
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 853
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->resume()V

    goto :goto_0

    .line 855
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 856
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 857
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->pause()V

    goto :goto_0
.end method

.method private updateSelectedSkinStatus()V
    .locals 4

    .prologue
    .line 414
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    iget v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getSkinOnIndex(I)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v0

    .line 415
    .local v0, objSelectedSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-nez v0, :cond_0

    .line 417
    const-string v1, "SkinPicker.OnlineSkin"

    const-string v2, "get skin fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinStatus:I

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    iget-object v2, v0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->GetDownloadStatus(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinStatus:I

    .line 423
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectedSkinStatus => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 963
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 278
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    const-string v0, "SkinPicker.OnlineSkin"

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

    .line 280
    sparse-switch p1, :sswitch_data_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 283
    :sswitch_0
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "CS login wizard finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :sswitch_1
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "Term of Service finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->onTermsOfServiceFinished()V

    goto :goto_0

    .line 291
    :sswitch_2
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 293
    if-nez p2, :cond_0

    goto :goto_0

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0xccd -> :sswitch_1
        0xcce -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1136
    const-string v0, "SkinPicker.OnlineSkin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setOrientation(I)V

    .line 1138
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->storeViewType()V

    .line 1139
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->reloadPanelItemBackground()V

    .line 1141
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->initUI()V

    .line 1142
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1143
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 123
    const-string v2, "SkinPicker.OnlineSkin"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/content/ContextWrapper;

    iput-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    .line 127
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->checkLangChange(Landroid/content/Context;)Z

    .line 129
    const-string v2, "common_app_bkg"

    const v3, 0x20806b7

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 130
    .local v0, background:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 132
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->requestWindowFeature(I)Z

    .line 133
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrCaller:Ljava/lang/String;

    .line 134
    const-string v2, "SkinPicker.OnlineSkin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mstrCaller:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/home/personalize/util/SkinPickerDefines;->SetAppContext(Landroid/content/Context;)V

    .line 137
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    .line 139
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 140
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 141
    new-instance v2, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;

    const v4, 0x7f030010

    const v5, 0x7f030009

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;-><init>(Landroid/content/Context;IILandroid/util/DisplayMetrics;)V

    iput-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    .line 142
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->init()V

    .line 144
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->initUI()V

    .line 146
    const v2, 0x7f0b002b

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    .line 148
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mTextLoading:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCornerStrokeColor(I)V

    .line 150
    invoke-static {p0}, Lcom/htc/home/personalize/util/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->ShowNetWorkErrorMsg()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    sget-object v2, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->REDAYDOWNLOAD:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    iput-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 248
    const/4 v1, 0x1

    const v2, 0x7f090004

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 249
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x208032a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->deInit()V

    .line 184
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->UnRegisterDownloadEventListener(Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;)V

    .line 185
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->clearSkinList()V

    .line 186
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->destroy()V

    .line 187
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControlView;->release()V

    .line 188
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mPreloadBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    return-void
.end method

.method public onDownloadStateChanged(Ljava/lang/String;I)V
    .locals 4
    .parameter "strGUID"
    .parameter "nState"

    .prologue
    .line 981
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadStateChanged onlineskin. guid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 983
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 985
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 986
    return-void
.end method

.method public onInterrupt()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 966
    return-void
.end method

.method public onListRetrieved(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "retCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/StoreItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 969
    .local p1, listSkin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/storedatamanager/StoreItem;>;"
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 971
    :cond_0
    const-string v1, "SkinPicker.OnlineSkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 975
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 976
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->setSkinList(Ljava/util/ArrayList;)V

    .line 977
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNotificationClick(Ljava/lang/String;Z)V
    .locals 3
    .parameter "strGUID"
    .parameter "bDownloadComplete"

    .prologue
    .line 990
    const-string v0, "SkinPicker.OnlineSkin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationClick+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 993
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "finish onlineskinpicker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->finish()V

    .line 999
    :goto_0
    return-void

    .line 997
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setFocusedSkin(Ljava/lang/String;)V

    .line 998
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->MoveFocusToCurrentSkin()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 334
    const-string v0, "SkinPicker.OnlineSkin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 343
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 339
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->SwitchViewType(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 237
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->pause()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->setViewType(I)V

    .line 241
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-boolean v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mIdMenuItemNeedUpdate:Z

    if-nez v1, :cond_0

    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 273
    :goto_0
    return v1

    .line 260
    :cond_0
    iput-boolean v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mIdMenuItemNeedUpdate:Z

    .line 262
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 263
    .local v0, itemUIMode:Landroid/view/MenuItem;
    iget v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I

    packed-switch v1, :pswitch_data_0

    .line 273
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 265
    :pswitch_0
    const v1, 0x7f09001a

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 266
    const v1, 0x20809b9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 269
    :pswitch_1
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 270
    const v1, 0x208032a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreviewDownloaded(Ljava/lang/String;)V
    .locals 3
    .parameter "strGUID"

    .prologue
    .line 955
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 956
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 957
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 958
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 197
    const-string v1, "SkinPicker.OnlineSkin"

    const-string v2, "OnlineSkin.onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->isCSPackageInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    const-string v1, "SkinPicker.OnlineSkin"

    const-string v2, "CS not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->finish()V

    .line 232
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->loadPreviousViewType()V

    .line 219
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateViewVisibility(Z)V

    .line 220
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    sget-object v2, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->DOWNLOADED:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    sget-object v2, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->PREPAREDOWNLOAD:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->getSkinList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    .line 224
    :cond_2
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getSkinList()V

    .line 226
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setOrientation(I)V

    .line 227
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->init()V

    .line 228
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyDataSetChanged()V

    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.home.personalize.storedatamanager.ACTION_MYCSEXCEPTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->MyCSExceptionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setupHeaderFooter()V
    .locals 2

    .prologue
    .line 1268
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 1269
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 1270
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 1272
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 1273
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 1275
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 1276
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1277
    return-void
.end method

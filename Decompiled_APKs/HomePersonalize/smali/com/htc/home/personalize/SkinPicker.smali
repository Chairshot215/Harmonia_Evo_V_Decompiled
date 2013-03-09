.class public Lcom/htc/home/personalize/SkinPicker;
.super Landroid/app/Activity;
.source "SkinPicker.java"

# interfaces
.implements Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;


# static fields
.field public static final CACHE_SIZE:I = 0xa

.field protected static final DEFAULT_SKIN_PACKAGE_NAME:Ljava/lang/String; = "default"

.field private static final ID_MENU_DELETE:I = 0x2

.field private static final ID_MENU_UIMODE:I = 0x1

.field public static final PREF_KEY_FLING_RATIO:Ljava/lang/String; = "PICKER_FLING_RATIO"

.field private static final TAG:Ljava/lang/String; = "SkinPicker"


# instance fields
.field private mCmdBtnLClickListener:Landroid/view/View$OnClickListener;

.field private mCmdBtnRClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDeckControl:Lcom/htc/widget/DeckControl;

.field private mDeckControlView:Lcom/htc/widget/DeckControlView;

.field private mDeleteProgressDlg:Lcom/htc/widget/HtcAlertDialog;

.field private mFooterBar:Lcom/htc/widget/HtcFooter;

.field private mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mHeaderCountText:Ljava/lang/String;

.field private mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mHeaderTitleText:Ljava/lang/String;

.field private mIsDeleteMode:Z

.field private mIsForeground:Z

.field private mIsMenuItemNeedUpdate:Z

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mOnSkinItemClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

.field private mOnSkinItemSelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

.field mPreloadBackground:Landroid/graphics/Bitmap;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectedSkinId:I

.field private mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

.field private mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

.field private mSkinPickerHandler:Landroid/os/Handler;

.field private mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

.field private mTextDeleteWarn:Landroid/widget/TextView;

.field private mTextSkinName:Landroid/widget/TextView;

.field private mnViewType:I

.field private progressDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 79
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    .line 83
    iput-boolean v2, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    .line 84
    iput-boolean v2, p0, Lcom/htc/home/personalize/SkinPicker;->mIsMenuItemNeedUpdate:Z

    .line 85
    const/16 v0, 0x66

    iput v0, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    .line 87
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mDeleteProgressDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 88
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->progressDialog:Landroid/app/Dialog;

    .line 89
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/SkinPicker;->mIsForeground:Z

    .line 91
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 94
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mTextSkinName:Landroid/widget/TextView;

    .line 95
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mTextDeleteWarn:Landroid/widget/TextView;

    .line 97
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 98
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 99
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 100
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 101
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderTitleText:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderCountText:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 569
    new-instance v0, Lcom/htc/home/personalize/SkinPicker$3;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/SkinPicker$3;-><init>(Lcom/htc/home/personalize/SkinPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mCmdBtnLClickListener:Landroid/view/View$OnClickListener;

    .line 617
    new-instance v0, Lcom/htc/home/personalize/SkinPicker$4;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/SkinPicker$4;-><init>(Lcom/htc/home/personalize/SkinPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mCmdBtnRClickListener:Landroid/view/View$OnClickListener;

    .line 666
    new-instance v0, Lcom/htc/home/personalize/SkinPicker$5;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/SkinPicker$5;-><init>(Lcom/htc/home/personalize/SkinPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mOnSkinItemClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

    .line 868
    new-instance v0, Lcom/htc/home/personalize/SkinPicker$6;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/SkinPicker$6;-><init>(Lcom/htc/home/personalize/SkinPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mOnSkinItemSelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    .line 887
    new-instance v0, Lcom/htc/home/personalize/SkinPicker$7;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/SkinPicker$7;-><init>(Lcom/htc/home/personalize/SkinPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerHandler:Landroid/os/Handler;

    return-void
.end method

.method private MoveFocusToCurrentSkin()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 845
    iget v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    if-ne v1, v2, :cond_1

    .line 847
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, strCurrentSkin:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->moveFocusToSkin(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    .line 849
    iget v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    if-ne v1, v2, :cond_0

    .line 851
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    .line 857
    .end local v0           #strCurrentSkin:Ljava/lang/String;
    :cond_0
    :goto_0
    iget v1, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 858
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v2, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 860
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v2, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DeckControl;->notifyDataSetChanged(I)V

    .line 864
    :goto_1
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->notifyDataSetChanged()V

    .line 865
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->UpdateFocusInfo()V

    .line 866
    return-void

    .line 854
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    iget v2, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->moveFocusToSkin(I)I

    goto :goto_0

    .line 862
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mListView:Lcom/htc/widget/HtcListView;

    iget v2, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_1
.end method

.method private StartOnlineSkin()V
    .locals 2

    .prologue
    .line 495
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 496
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.skinpicker.action.ONLINESKINFROMSKINPICKER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/htc/home/personalize/SkinPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 498
    return-void
.end method

.method private SwitchDeleteMode()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 822
    iget-boolean v0, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    .line 823
    iget-boolean v0, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    if-nez v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->updateDeleteSkinToNormalMode()V

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    iget-boolean v3, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    iget v4, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-virtual {v0, v3, v4}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->SetDeleteMode(ZI)V

    .line 826
    const-string v0, "SkinPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetDeleteMode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->notifyDataSetChanged()V

    .line 828
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    .line 829
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->UpdateFocusInfo()V

    .line 830
    iget-boolean v0, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->switchTitleText(Z)V

    .line 831
    iput-boolean v1, p0, Lcom/htc/home/personalize/SkinPicker;->mIsMenuItemNeedUpdate:Z

    .line 833
    iget-boolean v0, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    if-ne v0, v1, :cond_2

    .line 834
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 840
    :goto_1
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->UpdateButton()V

    .line 841
    return-void

    :cond_1
    move v0, v2

    .line 822
    goto :goto_0

    .line 837
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private SwitchViewType(Landroid/view/MenuItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 733
    const-string v0, "SkinPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitchViewType +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iput-boolean v4, p0, Lcom/htc/home/personalize/SkinPicker;->mIsMenuItemNeedUpdate:Z

    .line 736
    iget v0, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    if-ne v0, v5, :cond_0

    .line 738
    const/16 v0, 0x65

    iput v0, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    .line 739
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    iget v1, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->setViewType(I)V

    .line 740
    invoke-direct {p0, v3}, Lcom/htc/home/personalize/SkinPicker;->UpdateViewVisibility(Z)V

    .line 741
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->pause()V

    .line 742
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->storeViewType()V

    .line 743
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mListView:Lcom/htc/widget/HtcListView;

    iget v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 752
    :goto_0
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->UpdateFocusInfo()V

    .line 753
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->notifyDataSetChanged()V

    .line 754
    return-void

    .line 745
    :cond_0
    iput v5, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    .line 746
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    iget v1, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->setViewType(I)V

    .line 747
    invoke-direct {p0, v3}, Lcom/htc/home/personalize/SkinPicker;->UpdateViewVisibility(Z)V

    .line 748
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->resume()V

    .line 749
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->storeViewType()V

    .line 750
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    goto :goto_0
.end method

.method private UpdateButton()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 408
    iget-boolean v4, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    if-ne v4, v2, :cond_1

    .line 409
    iget-object v4, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v4}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getSelectedDeletesSkinCount()I

    move-result v0

    .line 410
    .local v0, nDeletedCount:I
    const-string v4, "%s (%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f090005

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/SkinPicker;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, strDelete:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v4, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 417
    .end local v0           #nDeletedCount:I
    .end local v1           #strDelete:Ljava/lang/String;
    :goto_1
    return-void

    .restart local v0       #nDeletedCount:I
    .restart local v1       #strDelete:Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 412
    goto :goto_0

    .line 414
    .end local v0           #nDeletedCount:I
    .end local v1           #strDelete:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 415
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private UpdateFocusInfo()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    iget v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->moveFocusToSkin(I)I

    .line 400
    iget v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getSkinListSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iget v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->UpdateSkinNameText(I)V

    .line 403
    iget v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->UpdateIndexText(I)V

    goto :goto_0
.end method

.method private UpdateIndexText(I)V
    .locals 7
    .parameter "nPos"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 420
    iget v1, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 421
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderCountText:Ljava/lang/String;

    .line 425
    :goto_0
    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderTitleText:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderCountText:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, strHeaderText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 427
    return-void

    .line 423
    .end local v0           #strHeaderText:Ljava/lang/String;
    :cond_0
    const-string v1, "(%d/%d)"

    new-array v2, v6, [Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderCountText:Ljava/lang/String;

    goto :goto_0
.end method

.method private UpdateSkinNameText(I)V
    .locals 6
    .parameter "nPos"

    .prologue
    const/4 v5, 0x1

    .line 432
    iget v3, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_0

    .line 476
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mTextSkinName:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mTextDeleteWarn:Landroid/widget/TextView;

    if-nez v3, :cond_2

    .line 437
    :cond_1
    const-string v3, "SkinPicker"

    const-string v4, "invalid text view (skin name or warning message)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :cond_2
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v3, p1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getSkinPackageNameByIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, strPackageName:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 445
    const-string v3, "SkinPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid packagename found. index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mTextSkinName:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 450
    :cond_3
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v3, v1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getSkinNameByPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, strSkinName:Ljava/lang/String;
    if-nez v2, :cond_4

    .line 454
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mTextSkinName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 458
    :cond_4
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 460
    .local v0, bIsCurrentSkin:Z
    if-ne v0, v5, :cond_5

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f09001f

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/SkinPicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    :cond_5
    if-ne v0, v5, :cond_6

    iget-boolean v3, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    if-ne v3, v5, :cond_6

    .line 467
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mTextDeleteWarn:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    const-string v3, "SkinPicker"

    const-string v4, "Show warning description"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_1
    const-string v3, "SkinPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateSkinNameText : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mTextSkinName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 471
    :cond_6
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mTextDeleteWarn:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private UpdateViewVisibility(Z)V
    .locals 7
    .parameter "bHideAll"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 758
    const-string v2, "SkinPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateViewVisibility "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const v2, 0x7f0b0046

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/SkinPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 760
    .local v0, layoutList:Landroid/view/View;
    const v2, 0x7f0b0044

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/SkinPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 761
    .local v1, layoutPanel:Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 763
    :cond_0
    const-string v2, "SkinPicker"

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

    .line 789
    :goto_0
    return-void

    .line 767
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 769
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 770
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 771
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 772
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v2}, Lcom/htc/widget/DeckControl;->pause()V

    .line 773
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 775
    :cond_2
    iget v2, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 777
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 778
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 779
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v2, v6}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 780
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v2}, Lcom/htc/widget/DeckControl;->resume()V

    .line 781
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 783
    :cond_3
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 784
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 785
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 786
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v2}, Lcom/htc/widget/DeckControl;->pause()V

    .line 787
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/SkinPicker;)Lcom/htc/home/personalize/widget/SkinPickerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->StartOnlineSkin()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/home/personalize/SkinPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/home/personalize/SkinPicker;->mIsMenuItemNeedUpdate:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->UpdateFocusInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->updateSkinList()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->dismissDeletingCursor()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/home/personalize/SkinPicker;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->skinChangeUserLog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->alertNoEnoughStorage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->showDeletingCursor()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/SkinPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/home/personalize/SkinPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/SkinPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->UpdateButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/home/personalize/SkinPicker;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->progressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->showDeleteConfirmMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/SkinPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->launchHome()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->SwitchDeleteMode()V

    return-void
.end method

.method private alertNoEnoughStorage()V
    .locals 3

    .prologue
    .line 525
    const-string v1, "SkinPicker"

    const-string v2, "Storage not enough..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    .local v0, tmp:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c00e3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 528
    const v1, 0x20c00e4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 529
    const v1, 0x20c0009

    new-instance v2, Lcom/htc/home/personalize/SkinPicker$2;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/SkinPicker$2;-><init>(Lcom/htc/home/personalize/SkinPicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 538
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->progressDialog:Landroid/app/Dialog;

    .line 539
    return-void
.end method

.method private dismissDeletingCursor()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mDeleteProgressDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mDeleteProgressDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mDeleteProgressDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mDeleteProgressDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->SwitchDeleteMode()V

    .line 522
    return-void
.end method

.method private getFlingRatio()F
    .locals 2

    .prologue
    .line 285
    const/high16 v0, 0x3f80

    .line 287
    .local v0, ret:F
    :try_start_0
    const-string v1, "PICKER_FLING_RATIO"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 291
    :goto_0
    return v0

    .line 288
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private hasCSLoggedIn()Z
    .locals 4

    .prologue
    .line 661
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->isCSActive(Landroid/content/Context;)Z

    move-result v0

    .line 662
    .local v0, isCSActive:Z
    const-string v1, "SkinPicker"

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

    .line 663
    return v0
.end method

.method private initDefaultView()V
    .locals 5

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000e

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 276
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f0b0037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 278
    .local v1, wallpaper:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 280
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v2, v0}, Lcom/htc/widget/DeckControl;->setDefaultView(Landroid/view/View;)V

    .line 281
    return-void
.end method

.method private isCSPackageInstalled()Z
    .locals 4

    .prologue
    .line 963
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 964
    .local v0, isCSPackageInstalled:Z
    const-string v1, "SkinPicker"

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

    .line 965
    return v0
.end method

.method private launchHome()V
    .locals 5

    .prologue
    .line 595
    const-string v3, "SkinPicker"

    const-string v4, "launchHome()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, category:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    const-string v4, "uimode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 599
    .local v2, uiModeMgr:Landroid/app/UiModeManager;
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 607
    const-string v0, "android.intent.category.HOME"

    .line 610
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 613
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 614
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->finish()V

    .line 615
    return-void

    .line 601
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_0
    const-string v0, "android.intent.category.CAR_DOCK"

    .line 602
    goto :goto_0

    .line 604
    :pswitch_1
    const-string v0, "android.intent.category.DESK_DOCK"

    .line 605
    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadPreviousViewType()V
    .locals 4

    .prologue
    .line 793
    const-string v1, "SkinPicker"

    const-string v2, "loadPreviousViewType + Local "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    const-string v2, "pref_skinpicker"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 796
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_mode"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    .line 797
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    iget v2, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->setViewType(I)V

    .line 798
    iget v1, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 800
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->pause()V

    .line 805
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/home/personalize/SkinPicker;->mIsMenuItemNeedUpdate:Z

    .line 806
    const-string v1, "SkinPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPreviousViewType - Local "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->resume()V

    goto :goto_0
.end method

.method private setFocusedSkin(Ljava/lang/String;)V
    .locals 4
    .parameter "strGUID"

    .prologue
    .line 981
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    invoke-virtual {v1, p1}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, strPackageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 983
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getIndexByPackageName(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    .line 984
    :cond_0
    const-string v1, "SkinPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusedSkin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void
.end method

.method private showDeleteConfirmMessage()V
    .locals 3

    .prologue
    .line 928
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 929
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 930
    const v1, 0x7f090016

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/SkinPicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 931
    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 932
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 933
    const v1, 0x20c013d

    new-instance v2, Lcom/htc/home/personalize/SkinPicker$8;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/SkinPicker$8;-><init>(Lcom/htc/home/personalize/SkinPicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 940
    const v1, 0x20c013c

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/SkinPicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/home/personalize/SkinPicker$9;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/SkinPicker$9;-><init>(Lcom/htc/home/personalize/SkinPicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 949
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 950
    return-void
.end method

.method private showDeletingCursor()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 502
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030018

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 503
    .local v0, layout:Landroid/view/View;
    const v3, 0x7f0b004d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 504
    .local v2, objProgressBar:Landroid/widget/ProgressBar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 505
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    .local v1, mProgressDlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f090018

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/SkinPicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 507
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 508
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 509
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 511
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mDeleteProgressDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 512
    return-void
.end method

.method private skinChangeUserLog()V
    .locals 4

    .prologue
    .line 1001
    iget v2, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    iget v3, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getSkinPackageNameByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, strPackageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1006
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getSkinNameByPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1007
    .local v1, strSkinName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/htc/home/personalize/util/UserLogger;->logSkinPicker(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    .end local v0           #strPackageName:Ljava/lang/String;
    .end local v1           #strSkinName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private startLoginWizardIfNeed()V
    .locals 5

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->hasCSLoggedIn()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 640
    const-string v2, "SkinPicker"

    const-string v3, "Has been logged in"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :goto_0
    return-void

    .line 644
    :cond_0
    const-string v2, "SkinPicker"

    const-string v3, "Not logged in yet"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v2, "SkinPicker"

    const-string v3, "Starting login wizard..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 649
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.cs"

    const-string v3, "com.htc.cs.activity.accountactivities.CS_login"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    const-string v2, "IntentSource"

    const-string v3, "thirdPartyWIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const/16 v2, 0xcce

    invoke-virtual {p0, v1, v2}, Lcom/htc/home/personalize/SkinPicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SkinPicker"

    const-string v3, "Can\'t start Activitry: com.htc.cs.activity.accountactivities.CS_login"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 656
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    const-string v3, "Cannot launch login wizard"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 657
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->finish()V

    goto :goto_0
.end method

.method private storeViewType()V
    .locals 5

    .prologue
    .line 811
    const-string v2, "SkinPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeViewType + Local "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    const-string v3, "pref_skinpicker"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 814
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 815
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ui_mode"

    iget v3, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 816
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 817
    const-string v2, "SkinPicker"

    const-string v3, "storeViewType - Local "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-void
.end method

.method private switchTitleText(Z)V
    .locals 3
    .parameter "deleting"

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1

    const v0, 0x7f09001d

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderTitleText:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderTitleText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderCountText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 365
    :cond_0
    return-void

    .line 361
    :cond_1
    const v0, 0x7f090008

    goto :goto_0
.end method

.method private updateSkinList()V
    .locals 3

    .prologue
    .line 970
    const-string v0, "SkinPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSkinList. isforeground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/home/personalize/SkinPicker;->mIsForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    if-nez v0, :cond_0

    .line 977
    :goto_0
    return-void

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->updateSkinList()V

    .line 974
    iget-boolean v0, p0, Lcom/htc/home/personalize/SkinPicker;->mIsForeground:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 975
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->reset()V

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 543
    const-string v1, "SkinPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult requestcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 548
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 550
    const/16 v1, 0x3d

    if-ne p2, v1, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->updateSkinList()V

    .line 561
    :cond_0
    const-string v0, ""

    .line 562
    .local v0, strPackageName:Ljava/lang/String;
    if-eqz p3, :cond_1

    const-string v1, "PackageName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 564
    const-string v1, "PackageName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->moveFocusToSkin(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I

    .line 567
    .end local v0           #strPackageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 555
    :cond_2
    const/16 v1, 0xcce

    if-ne p1, v1, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->hasCSLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 112
    const-string v7, "SkinPicker"

    const-string v8, "SkinPicker onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    .line 116
    iput-boolean v12, p0, Lcom/htc/home/personalize/SkinPicker;->mIsForeground:Z

    .line 117
    const-string v7, "common_app_bkg"

    const v8, 0x20806b7

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, background:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 120
    invoke-virtual {p0, v12}, Lcom/htc/home/personalize/SkinPicker;->requestWindowFeature(I)Z

    .line 121
    const v7, 0x7f030016

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/SkinPicker;->setContentView(I)V

    .line 122
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->setupHeaderFooter()V

    .line 124
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/home/personalize/util/SkinPickerDefines;->SetAppContext(Landroid/content/Context;)V

    .line 125
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    .line 127
    new-instance v7, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;

    iget-object v8, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    const v9, 0x7f030010

    const v10, 0x7f030008

    invoke-direct {v7, v8, v9, v10}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    .line 128
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    iget-object v8, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->setHandler(Landroid/os/Handler;)V

    .line 130
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->updateSkinList()V

    .line 132
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 133
    .local v3, itemWidth:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 134
    .local v2, itemHeight:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 136
    .local v5, reflectionHeight:I
    const v7, 0x7f0b0030

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/SkinPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/DeckControlView;

    iput-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 137
    new-instance v7, Lcom/htc/widget/DeckControl;

    iget-object v8, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    const/16 v10, 0xa

    invoke-direct {v7, v8, v9, v10}, Lcom/htc/widget/DeckControl;-><init>(Landroid/content/Context;Lcom/htc/widget/DeckControlView;I)V

    iput-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 138
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    iget-object v8, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v7, v8}, Lcom/htc/widget/DeckControlView;->addView(Lcom/htc/sunny/SView;)V

    .line 139
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 140
    .local v4, refColor:I
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v7, v4, v4, v4}, Lcom/htc/widget/DeckControl;->setReflectionColor(III)V

    .line 141
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v7, v5}, Lcom/htc/widget/DeckControl;->setReflectionHeight(I)V

    .line 142
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v7, v3, v2}, Lcom/htc/widget/DeckControl;->setItemSize(II)V

    .line 143
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/DeckControl;->setYOffset(F)V

    .line 145
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v8, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v7, v8}, Lcom/htc/widget/DeckControl;->setAdapter(Lcom/htc/widget/DeckControlAdapter;)V

    .line 146
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v8, p0, Lcom/htc/home/personalize/SkinPicker;->mOnSkinItemSelected:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/DeckControl;->setOnItemSelectedListener(Lcom/htc/widget/DeckControl$OnItemSelectedListener;)V

    .line 147
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v8, p0, Lcom/htc/home/personalize/SkinPicker;->mOnSkinItemClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/DeckControl;->setOnItemClickListener(Lcom/htc/widget/DeckControl$OnItemClickListener;)V

    .line 148
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->initDefaultView()V

    .line 149
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/DeckControl;->setBackground(I)V

    .line 151
    const v7, 0x7f0b0014

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/SkinPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListView;

    iput-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mListView:Lcom/htc/widget/HtcListView;

    .line 152
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 153
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v8, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    const v7, 0x7f0b0034

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/SkinPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mTextSkinName:Landroid/widget/TextView;

    .line 156
    const v7, 0x7f0b0035

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/SkinPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mTextDeleteWarn:Landroid/widget/TextView;

    .line 157
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mTextDeleteWarn:Landroid/widget/TextView;

    const v8, 0x7f090020

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 159
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->loadPreviousViewType()V

    .line 160
    invoke-direct {p0, v11}, Lcom/htc/home/personalize/SkinPicker;->UpdateViewVisibility(Z)V

    .line 162
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v8, Lcom/htc/home/personalize/SkinPicker$1;

    invoke-direct {v8, p0}, Lcom/htc/home/personalize/SkinPicker$1;-><init>(Lcom/htc/home/personalize/SkinPicker;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 187
    .local v1, intentLaunch:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 189
    const-string v7, "com.htc.skinpicker.EXTRA_FOCUSEDID"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 191
    const-string v7, "com.htc.skinpicker.EXTRA_FOCUSEDID"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, strGUID:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/htc/home/personalize/SkinPicker;->setFocusedSkin(Ljava/lang/String;)V

    .line 206
    .end local v6           #strGUID:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->MoveFocusToCurrentSkin()V

    .line 208
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v8, 0x7f090001

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 209
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    iget-object v8, p0, Lcom/htc/home/personalize/SkinPicker;->mCmdBtnLClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v8, 0x20c013d

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 212
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    iget-object v8, p0, Lcom/htc/home/personalize/SkinPicker;->mCmdBtnRClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v7, v12}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 215
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const v8, 0x20808d9

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 216
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const v8, 0x7f090006

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 217
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    iget-object v8, p0, Lcom/htc/home/personalize/SkinPicker;->mCmdBtnRClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 220
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->isCSPackageInstalled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 221
    const-string v7, "SkinPicker"

    const-string v8, "CS not enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v7, v13}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 225
    :cond_1
    invoke-direct {p0, v11}, Lcom/htc/home/personalize/SkinPicker;->switchTitleText(Z)V

    .line 227
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    .line 228
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    if-eqz v7, :cond_2

    .line 229
    iget-object v7, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-virtual {v7, p0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->RegisterDownloadEventListener(Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;)V

    .line 230
    :cond_2
    return-void

    .line 194
    :cond_3
    const-string v7, "online_item_id"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 196
    const-string v7, "online_item_id"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    .restart local v6       #strGUID:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/htc/home/personalize/SkinPicker;->setFocusedSkin(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v6           #strGUID:Ljava/lang/String;
    :cond_4
    const-string v7, "notification_item_id"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 201
    const-string v7, "notification_item_id"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 202
    .restart local v6       #strGUID:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/htc/home/personalize/SkinPicker;->setFocusedSkin(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 989
    const-string v0, "SkinPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    packed-switch p1, :pswitch_data_0

    .line 998
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 992
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 993
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x20c00a3

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/SkinPicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 995
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 996
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 348
    const/4 v1, 0x1

    const v2, 0x7f090004

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 349
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x208032a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 352
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->isCSPackageInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const/4 v1, 0x2

    const v2, 0x7f090005

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 354
    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 357
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    const-string v0, "SkinPicker"

    const-string v1, "SkinPicker onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/SkinPicker;->mIsForeground:Z

    .line 299
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->deInit()V

    .line 300
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->UnRegisterDownloadEventListener(Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;)V

    .line 301
    invoke-virtual {p0}, Lcom/htc/home/personalize/SkinPicker;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 305
    iput-object v2, p0, Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->destroy()V

    .line 308
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControlView;->release()V

    .line 309
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 312
    :cond_1
    return-void
.end method

.method public onDownloadStateChanged(Ljava/lang/String;I)V
    .locals 4
    .parameter "strGUID"
    .parameter "nState"

    .prologue
    .line 879
    const-string v1, "SkinPicker"

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

    .line 880
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 885
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 884
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onListRetrieved(Ljava/util/ArrayList;I)V
    .locals 0
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
    .line 953
    .local p1, listSkin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/storedatamanager/StoreItem;>;"
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 235
    const-string v1, "SkinPicker"

    const-string v2, "skinpicker onNewIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz p1, :cond_0

    .line 239
    const-string v1, "com.htc.skinpicker.EXTRA_FOCUSEDID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    const-string v1, "com.htc.skinpicker.EXTRA_FOCUSEDID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, strGUID:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->setFocusedSkin(Ljava/lang/String;)V

    .line 257
    .end local v0           #strGUID:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->MoveFocusToCurrentSkin()V

    .line 258
    return-void

    .line 245
    :cond_1
    const-string v1, "online_item_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    const-string v1, "online_item_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .restart local v0       #strGUID:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->setFocusedSkin(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v0           #strGUID:Ljava/lang/String;
    :cond_2
    const-string v1, "notification_item_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const-string v1, "notification_item_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .restart local v0       #strGUID:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->setFocusedSkin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNotificationClick(Ljava/lang/String;Z)V
    .locals 3
    .parameter "strGUID"
    .parameter "bDownloadComplete"

    .prologue
    .line 919
    const-string v0, "SkinPicker"

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

    .line 920
    if-nez p2, :cond_0

    .line 924
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/SkinPicker;->setFocusedSkin(Ljava/lang/String;)V

    .line 923
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->MoveFocusToCurrentSkin()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 480
    const-string v0, "SkinPicker"

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

    .line 482
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 491
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 485
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/SkinPicker;->SwitchViewType(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 488
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->SwitchDeleteMode()V

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 316
    const-string v0, "SkinPicker"

    const-string v1, "SkinPicker onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/SkinPicker;->mIsForeground:Z

    .line 319
    iget v0, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->pause()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->setViewType(I)V

    .line 325
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 369
    iget-boolean v3, p0, Lcom/htc/home/personalize/SkinPicker;->mIsMenuItemNeedUpdate:Z

    if-nez v3, :cond_1

    .line 370
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 394
    :cond_0
    :goto_0
    return v2

    .line 372
    :cond_1
    iput-boolean v4, p0, Lcom/htc/home/personalize/SkinPicker;->mIsMenuItemNeedUpdate:Z

    .line 374
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 375
    .local v1, itemUIMode:Landroid/view/MenuItem;
    iget v3, p0, Lcom/htc/home/personalize/SkinPicker;->mnViewType:I

    packed-switch v3, :pswitch_data_0

    .line 385
    :goto_1
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->isCSPackageInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 388
    .local v0, itemDelete:Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/htc/home/personalize/SkinPicker;->mIsDeleteMode:Z

    if-eqz v3, :cond_2

    .line 389
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 377
    .end local v0           #itemDelete:Landroid/view/MenuItem;
    :pswitch_0
    const v3, 0x7f09001a

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/SkinPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 378
    const v3, 0x20809b9

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 381
    :pswitch_1
    const v3, 0x7f090004

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/SkinPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 382
    const v3, 0x208032a

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 391
    .restart local v0       #itemDelete:Landroid/view/MenuItem;
    :cond_2
    iget-object v3, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->hasDownloadedSkins()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreviewDownloaded(Ljava/lang/String;)V
    .locals 0
    .parameter "strGUID"

    .prologue
    .line 958
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 329
    const-string v0, "SkinPicker"

    const-string v1, "SkinPicker onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/SkinPicker;->mIsForeground:Z

    .line 333
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->reset()V

    .line 334
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->updateSkinList()V

    .line 335
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->loadPreviousViewType()V

    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->UpdateViewVisibility(Z)V

    .line 337
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->notifyDataSetChanged()V

    .line 338
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->MoveFocusToCurrentSkin()V

    .line 340
    invoke-direct {p0}, Lcom/htc/home/personalize/SkinPicker;->UpdateFocusInfo()V

    .line 341
    return-void
.end method

.method public setupHeaderFooter()V
    .locals 2

    .prologue
    .line 261
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 262
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 264
    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooter;

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterBar:Lcom/htc/widget/HtcFooter;

    .line 265
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 266
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/SkinPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 268
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 269
    return-void
.end method

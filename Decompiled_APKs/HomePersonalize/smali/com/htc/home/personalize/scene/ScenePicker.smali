.class public Lcom/htc/home/personalize/scene/ScenePicker;
.super Landroid/app/Activity;
.source "ScenePicker.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;,
        Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;,
        Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;,
        Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;,
        Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;,
        Lcom/htc/home/personalize/scene/ScenePicker$OptionMenuItem;,
        Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;
    }
.end annotation


# static fields
.field public static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final CACHE_SIZE:I = 0xa

.field private static final DELETE_MODE:I = 0x2

.field private static final DIALOG_DELETE_SCENE_ID:I = 0x1

.field private static final DIALOG_MAXIMUM_SCENE_ID:I = 0x3

.field private static final DIALOG_NEW_SCENE_ID:I = 0x0

.field private static final DIALOG_RENAME_SCENE_ID:I = 0x2

.field private static final GETSCENECONTENTURI:Ljava/lang/String; = "/scenes/data?id="

.field private static final GETSCENELISTURI:Ljava/lang/String; = "/scenes"

.field static final KEY_SCENE_IS_PICKER_MODE:Ljava/lang/String; = "scene_picker_mode"

.field static final LIST_MODE:I = 0xc8

.field private static final MENU_ADD_ID:I = 0x3

.field private static final MENU_DELETE_ID:I = 0x4

.field static final MENU_DELETE_MODE:I = 0x12c

.field public static final MENU_PICKER_LIST_VIEW_ID:I = 0x1

.field public static final MENU_PICKER_PANEL_VIEW_ID:I = 0x2

.field private static final MENU_RENAME_SCENE_ID:I = 0x5

.field public static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field static final PANEL_MODE:I = 0x64

.field public static final PREF_KEY_FLING_RATIO:Ljava/lang/String; = "PICKER_FLING_RATIO"

.field private static final REQUEST_CODE:I = 0x384

.field private static final SELECT_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScenePicker"

.field public static final WIDGET_PREVIEW_PATH:Ljava/lang/String; = "/data/data/com.htc.launcher/files/scenes_picker.png"

.field private static final localLOG:Z

.field private static mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;


# instance fields
.field private handler:Landroid/os/Handler;

.field protected mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

.field private mBuilderSceneDownloaded:Z

.field public mCSPackageInstalled:Z

.field private mCurScenePos:I

.field private mCurrentMode:I

.field private mDatabase:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

.field private mDeckControl:Lcom/htc/widget/DeckControl;

.field private mDeckControlView:Lcom/htc/widget/DeckControlView;

.field private mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mHeaderCountText:Ljava/lang/String;

.field private mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mHeaderTitleText:Ljava/lang/String;

.field private mInstalledSceneReceiver:Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;

.field private mIsPanelView:Z

.field private mIsShowHeaderView:Z

.field private mListLayout:Landroid/view/View;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mNetworkChangeReceiver:Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;

.field private mPanelItemClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

.field private mPanelLayout:Landroid/view/View;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSceneName:Landroid/widget/TextView;

.field private mSelectId:I

.field private mUpdateSceneListReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;

.field private mUpdateScenePreviewReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;

.field private mnOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    .line 118
    iput v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    .line 125
    iput-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 126
    iput-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 129
    iput-boolean v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsShowHeaderView:Z

    .line 131
    iput v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mnOrientation:I

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    .line 157
    iput-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 158
    iput-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 159
    iput-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 160
    iput-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderTitleText:Ljava/lang/String;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    .line 164
    iput-boolean v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mBuilderSceneDownloaded:Z

    .line 838
    new-instance v0, Lcom/htc/home/personalize/scene/ScenePicker$9;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/scene/ScenePicker$9;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelItemClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

    .line 1386
    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/scene/ScenePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/scene/ScenePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->startNewSceneActivity()V

    return-void
.end method

.method static synthetic access$1600()Lcom/htc/htcSceneManager/scene/SceneManager;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->startRenameSceneActivity()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/home/personalize/scene/ScenePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mBuilderSceneDownloaded:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/home/personalize/scene/ScenePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mBuilderSceneDownloaded:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/home/personalize/scene/ScenePicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/DeckControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->showUpdateCurrentSceneToast()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDatabase:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/scene/ScenePicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/ScenePicker;->switchMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->startBrowserHtcDirect()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/home/personalize/scene/ScenePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->isScreenCacheModified()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/scene/ScenePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/home/personalize/scene/ScenePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/scene/ScenePicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/ScenePicker;->updateSceneTitle(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/scene/ScenePicker;Lcom/htc/home/personalize/scene/ScenePickerItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/ScenePicker;->createRenameSceneDialog(Lcom/htc/home/personalize/scene/ScenePickerItem;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method private changeListViewToDeleteMode(Z)V
    .locals 6
    .parameter "isDeleteMode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 732
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 733
    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListLayout:Landroid/view/View;

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1

    const v0, 0x7f09004e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderTitleText:Ljava/lang/String;

    .line 736
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderTitleText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 739
    if-eqz p1, :cond_2

    .line 740
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 750
    :goto_1
    if-eqz p1, :cond_4

    .line 751
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c01fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 754
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20c013d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 764
    :goto_2
    if-eqz p1, :cond_5

    .line 765
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 769
    :goto_3
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 770
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->updateSceneTitle(I)V

    .line 771
    return-void

    .line 735
    :cond_1
    const v0, 0x7f09004d

    goto :goto_0

    .line 742
    :cond_2
    iget-boolean v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCSPackageInstalled:Z

    if-eqz v0, :cond_3

    .line 743
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    goto :goto_1

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    goto :goto_1

    .line 756
    :cond_4
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 757
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 759
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 760
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x20808d9

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 761
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    goto :goto_2

    .line 767
    :cond_5
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    goto :goto_3
.end method

.method private changePanelViewToDeleteMode(Z)V
    .locals 10
    .parameter "isDeleteMode"

    .prologue
    const v9, 0x20c01fc

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 634
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelLayout:Landroid/view/View;

    if-nez v2, :cond_0

    .line 635
    const v2, 0x7f0b0044

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/scene/ScenePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelLayout:Landroid/view/View;

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_3

    const v2, 0x7f09004e

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderTitleText:Ljava/lang/String;

    .line 638
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderTitleText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 640
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelLayout:Landroid/view/View;

    const v3, 0x7f0b0034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneName:Landroid/widget/TextView;

    .line 642
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 643
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v2}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v0

    .line 644
    .local v0, currentSelectIndex:I
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->addDeleteIndex(I)V

    .line 645
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 648
    .end local v0           #currentSelectIndex:I
    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 649
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    :cond_2
    if-eqz p1, :cond_4

    .line 654
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 655
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 665
    :goto_1
    if-eqz p1, :cond_7

    .line 666
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 667
    const-string v2, "%s (%d)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getDeleteItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, strFooterButtonRightText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 676
    :goto_2
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x20c013d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 685
    .end local v1           #strFooterButtonRightText:Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v2}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/home/personalize/scene/ScenePicker;->updateSceneTitle(I)V

    .line 686
    return-void

    .line 637
    :cond_3
    const v2, 0x7f09004d

    goto/16 :goto_0

    .line 656
    :cond_4
    iget-boolean v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCSPackageInstalled:Z

    if-eqz v2, :cond_5

    .line 657
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 658
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    goto :goto_1

    .line 660
    :cond_5
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 661
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    goto :goto_1

    .line 671
    :cond_6
    const-string v2, "%s (%d)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 672
    .restart local v1       #strFooterButtonRightText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_2

    .line 678
    .end local v1           #strFooterButtonRightText:Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 679
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 681
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 682
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const v3, 0x20808d9

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 683
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    goto :goto_3
.end method

.method private createRenameSceneDialog(Lcom/htc/home/personalize/scene/ScenePickerItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 1247
    invoke-virtual {p1}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSelectId:I

    .line 1248
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSelectId:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemName(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050001

    new-instance v3, Lcom/htc/home/personalize/scene/ScenePicker$14;

    invoke-direct {v3, p0}, Lcom/htc/home/personalize/scene/ScenePicker$14;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1258
    .local v0, renameSceneDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1259
    return-void
.end method

.method private getFlingRatio()F
    .locals 2

    .prologue
    .line 595
    const v0, 0x3f19999a

    .line 597
    .local v0, ret:F
    :try_start_0
    const-string v1, "PICKER_FLING_RATIO"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 601
    :goto_0
    return v0

    .line 598
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initButtonListener()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/home/personalize/scene/ScenePicker$1;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/scene/ScenePicker$1;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/home/personalize/scene/ScenePicker$2;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/scene/ScenePicker$2;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    :cond_1
    iget-boolean v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCSPackageInstalled:Z

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    new-instance v1, Lcom/htc/home/personalize/scene/ScenePicker$3;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/scene/ScenePicker$3;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    :cond_2
    return-void
.end method

.method private initDefaultView()V
    .locals 6

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000d

    invoke-static {}, Lcom/htc/home/personalize/util/BitmapUtils;->getWallpaperOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 556
    .local v1, mPreloadBackground:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030010

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 557
    .local v0, layout:Landroid/view/View;
    new-instance v2, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;

    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;-><init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;)V

    .line 558
    .local v2, viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;
    const v3, 0x7f0b0037

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 559
    const v3, 0x7f0b0038

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mDeleteIcon:Landroid/widget/ImageView;

    .line 560
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 561
    iget-object v3, v2, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 562
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v3, v0}, Lcom/htc/widget/DeckControl;->setDefaultView(Landroid/view/View;)V

    .line 563
    return-void
.end method

.method private initListPicker()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 691
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 692
    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListLayout:Landroid/view/View;

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0, v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setViewMode(Z)V

    .line 697
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListLayout:Landroid/view/View;

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    .line 698
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 700
    iget-boolean v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsShowHeaderView:Z

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 702
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    new-instance v1, Lcom/htc/home/personalize/widget/HtcSimpleSeparable;

    const-string v2, "isHeader"

    invoke-direct {v1, v2}, Lcom/htc/home/personalize/widget/HtcSimpleSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setTag(Ljava/lang/Object;)V

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 707
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 709
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 710
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v1, Lcom/htc/home/personalize/scene/ScenePicker$8;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/scene/ScenePicker$8;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 724
    invoke-direct {p0, v3}, Lcom/htc/home/personalize/scene/ScenePicker;->changeListViewToDeleteMode(Z)V

    .line 725
    return-void
.end method

.method private initPanelPicker()V
    .locals 7

    .prologue
    .line 488
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelLayout:Landroid/view/View;

    if-nez v4, :cond_0

    .line 489
    const v4, 0x7f0b0044

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/scene/ScenePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelLayout:Landroid/view/View;

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 492
    .local v1, itemWidth:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 493
    .local v0, itemHeight:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 495
    .local v3, reflectionHeight:I
    const v4, 0x7f0b0030

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/scene/ScenePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/DeckControlView;

    iput-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    .line 496
    new-instance v4, Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    const/16 v6, 0xa

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/widget/DeckControl;-><init>(Landroid/content/Context;Lcom/htc/widget/DeckControlView;I)V

    iput-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    .line 497
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControlView;->addView(Lcom/htc/sunny/SView;)V

    .line 498
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 499
    .local v2, refColor:I
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v2, v2, v2}, Lcom/htc/widget/DeckControl;->setReflectionColor(III)V

    .line 500
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v3}, Lcom/htc/widget/DeckControl;->setReflectionHeight(I)V

    .line 501
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4, v1, v0}, Lcom/htc/widget/DeckControl;->setItemSize(II)V

    .line 502
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setYOffset(F)V

    .line 504
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setAdapter(Lcom/htc/widget/DeckControlAdapter;)V

    .line 505
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelItemClick:Lcom/htc/widget/DeckControl$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setOnItemClickListener(Lcom/htc/widget/DeckControl$OnItemClickListener;)V

    .line 506
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSelectSceneId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 507
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->initDefaultView()V

    .line 508
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setBackground(I)V

    .line 509
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    new-instance v5, Lcom/htc/home/personalize/scene/ScenePicker$5;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/scene/ScenePicker$5;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setOnItemSelectedListener(Lcom/htc/widget/DeckControl$OnItemSelectedListener;)V

    .line 518
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    new-instance v5, Lcom/htc/home/personalize/scene/ScenePicker$6;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/scene/ScenePicker$6;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/DeckControl;->setOnItemLongClickListener(Lcom/htc/sunny/SPresentation$OnItemLongClickListener;)V

    .line 532
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    new-instance v5, Lcom/htc/home/personalize/scene/ScenePicker$7;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/scene/ScenePicker$7;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 547
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/htc/home/personalize/scene/ScenePicker;->changePanelViewToDeleteMode(Z)V

    .line 549
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->registerReceivers()V

    .line 550
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCSPackageInstalled:Z

    .line 236
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->initPanelPicker()V

    .line 237
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->initListPicker()V

    .line 238
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setViewMode(Z)V

    .line 239
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->initButtonListener()V

    .line 244
    invoke-direct {p0, v2}, Lcom/htc/home/personalize/scene/ScenePicker;->switchMode(I)V

    .line 245
    return-void
.end method

.method private isScreenCacheModified()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 390
    invoke-static {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v0

    .line 391
    .local v0, currentScene:Lcom/htc/htcSceneManager/scene/Scene;
    if-nez v0, :cond_1

    .line 392
    const-string v9, "ScenePicker"

    const-string v10, "SceneManager.getCurrentScene() = null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    :goto_0
    return v8

    .line 395
    :cond_1
    invoke-virtual {v0}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, scenesPickerPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/data/com.htc.launcher/files/scenes_picker.png"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v5, screenCacheFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 398
    const-string v9, "ScenePicker"

    const-string v10, "no screen capture, do not need to draw preview image"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    :cond_2
    if-nez v4, :cond_3

    .line 402
    const-string v8, "ScenePicker"

    const-string v10, "no preview path, need to draw preview image"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 403
    goto :goto_0

    .line 405
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v1, scenePickerFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 407
    .local v6, screenCacheTime:J
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 408
    .local v2, scenePickerTime:J
    const-string v10, "ScenePicker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "screenCacheTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", scenePickerTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    cmp-long v10, v2, v6

    if-eqz v10, :cond_0

    move v8, v9

    .line 410
    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 605
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mInstalledSceneReceiver:Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;

    if-nez v4, :cond_0

    .line 606
    new-instance v4, Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;

    invoke-direct {v4, p0, v5}, Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;Lcom/htc/home/personalize/scene/ScenePicker$1;)V

    iput-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mInstalledSceneReceiver:Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;

    .line 607
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "com.htc.launcher.scene.ACTION_DOWNLOAD_SCENE_SAVED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.launcher.scene.ACTION_UPDATE_SCENE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 609
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mInstalledSceneReceiver:Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 611
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateSceneListReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;

    if-nez v4, :cond_1

    .line 612
    new-instance v4, Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;

    invoke-direct {v4, p0, v5}, Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;Lcom/htc/home/personalize/scene/ScenePicker$1;)V

    iput-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateSceneListReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;

    .line 613
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.htc.home.personalize.updateSceneList"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 614
    .local v2, updateListFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateSceneListReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/htc/home/personalize/scene/ScenePicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 617
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateScenePreviewReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;

    if-nez v4, :cond_2

    .line 618
    new-instance v4, Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;

    invoke-direct {v4, p0, v5}, Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;Lcom/htc/home/personalize/scene/ScenePicker$1;)V

    iput-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateScenePreviewReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;

    .line 619
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.htc.home.personalize.finishCreatePreview"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 620
    .local v3, updatePreviewFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateScenePreviewReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;

    invoke-virtual {p0, v4, v3}, Lcom/htc/home/personalize/scene/ScenePicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 623
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mNetworkChangeReceiver:Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;

    if-nez v4, :cond_3

    .line 624
    new-instance v4, Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;

    invoke-direct {v4, p0, v5}, Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;Lcom/htc/home/personalize/scene/ScenePicker$1;)V

    iput-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mNetworkChangeReceiver:Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;

    .line 625
    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 626
    .local v1, networkChangeFile:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mNetworkChangeReceiver:Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 627
    return-void
.end method

.method private setOrientation(I)V
    .locals 2
    .parameter "nOrientation"

    .prologue
    .line 471
    iget v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mnOrientation:I

    if-ne v0, p1, :cond_0

    .line 473
    const-string v0, "ScenePicker"

    const-string v1, "same orientation, return"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_0
    iput p1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mnOrientation:I

    .line 480
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setOrientation(I)V

    goto :goto_0
.end method

.method private showUpdateCurrentSceneToast()V
    .locals 2

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/home/personalize/scene/ScenePicker$15;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/scene/ScenePicker$15;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1384
    return-void
.end method

.method private startBrowserHtcDirect()V
    .locals 6

    .prologue
    const v5, 0x7f090050

    const/4 v4, 0x0

    .line 884
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 885
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.personalizer.action.ONLINERESPICKER_SCENE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    iget-boolean v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v2, :cond_0

    .line 888
    const-string v2, "VIEW_ASPECT"

    const-string v3, "THUMBNAIL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 904
    :goto_1
    return-void

    .line 890
    :cond_0
    const-string v2, "VIEW_ASPECT"

    const-string v3, "LIST"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 896
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 897
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 899
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private startNewSceneActivity()V
    .locals 3

    .prologue
    .line 870
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 871
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->showDialog(I)V

    .line 878
    :goto_0
    return-void

    .line 874
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 875
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.launcher.NewSceneActivity.action.new_scene"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string v1, "launch_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startRenameSceneActivity()V
    .locals 3

    .prologue
    .line 907
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 908
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.launcher.NewSceneActivity.action.new_scene"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    const-string v1, "launch_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 910
    const-string v1, "select_id"

    iget v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSelectId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 911
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 912
    return-void
.end method

.method private switchMode(I)V
    .locals 4
    .parameter "whichMode"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1109
    iget-boolean v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v0, :cond_0

    .line 1110
    packed-switch p1, :pswitch_data_0

    .line 1137
    :goto_0
    :pswitch_0
    return-void

    .line 1112
    :pswitch_1
    iput v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    .line 1113
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setAdapterMode(I)V

    .line 1114
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->changePanelViewToDeleteMode(Z)V

    goto :goto_0

    .line 1117
    :pswitch_2
    iput v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    .line 1118
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setAdapterMode(I)V

    .line 1119
    invoke-direct {p0, v2}, Lcom/htc/home/personalize/scene/ScenePicker;->changePanelViewToDeleteMode(Z)V

    goto :goto_0

    .line 1123
    :cond_0
    packed-switch p1, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 1125
    :pswitch_4
    iput v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    .line 1126
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setAdapterMode(I)V

    .line 1127
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->changeListViewToDeleteMode(Z)V

    goto :goto_0

    .line 1130
    :pswitch_5
    iput v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    .line 1131
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setAdapterMode(I)V

    .line 1132
    invoke-direct {p0, v2}, Lcom/htc/home/personalize/scene/ScenePicker;->changeListViewToDeleteMode(Z)V

    goto :goto_0

    .line 1110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1123
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private switchView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1078
    iget-boolean v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v1, :cond_1

    .line 1079
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListLayout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1080
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->initListPicker()V

    .line 1081
    :cond_0
    iput-boolean v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    .line 1082
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v1, v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setViewMode(Z)V

    .line 1083
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1085
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->pause()V

    .line 1087
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    iget v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 1088
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 1102
    :goto_0
    iget v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->updateSceneTitle(I)V

    .line 1103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.scene.ACTION_ASPECT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_ASPECT_ISTHUMB"

    iget-boolean v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1105
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 1106
    return-void

    .line 1090
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelLayout:Landroid/view/View;

    if-nez v1, :cond_2

    .line 1091
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->initPanelPicker()V

    .line 1092
    :cond_2
    iput-boolean v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    .line 1093
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setViewMode(Z)V

    .line 1094
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 1096
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->resume()V

    .line 1098
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 1099
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private updateSceneTitle(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 566
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 567
    :cond_0
    const-string v3, "ScenePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSceneTitle position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneName:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    .line 571
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderTitleText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 592
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3, p1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 577
    .local v0, id:J
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setSelectSceneId(I)V

    .line 579
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCurrentSceneId()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    .line 580
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneName:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5, v0, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :goto_1
    iget-boolean v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v3, :cond_3

    .line 586
    const-string v3, "(%d/%d)"

    new-array v4, v9, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    .line 590
    :goto_2
    const-string v3, "%s %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderTitleText:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, strHeaderText:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    .end local v2           #strHeaderText:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v4, v0, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 588
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public checkNetworkAvailable()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 287
    const-string v3, "ScenePicker"

    const-string v4, "checkNetworkAvailable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/scene/ScenePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 289
    .local v1, connectivity:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 290
    const-string v3, "ScenePicker"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return v2

    .line 293
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 294
    .local v0, activeInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 295
    :cond_1
    const-string v3, "ScenePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkInfo is null or NetworkInfo is not connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 299
    const-string v3, "ScenePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkInfo is not available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 917
    const/16 v3, 0x64

    if-ne p1, v3, :cond_b

    .line 918
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 919
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->update()V

    .line 920
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 921
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->updateSceneName()V

    .line 922
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 924
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCurrentSceneId()I

    move-result v3

    iget v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSelectId:I

    if-ne v3, v4, :cond_1

    .line 925
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneName:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget v7, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    :goto_0
    iget-boolean v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v3, :cond_2

    .line 930
    const-string v3, "(%d/%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    .line 934
    :goto_1
    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderTitleText:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, strHeaderText:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 994
    .end local v2           #strHeaderText:Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 995
    return-void

    .line 927
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 932
    :cond_2
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    goto :goto_1

    .line 938
    :cond_3
    const/4 v3, 0x4

    if-ne p2, v3, :cond_8

    .line 939
    const/4 v0, -0x1

    .line 940
    .local v0, scene:I
    if-eqz p3, :cond_4

    const-string v3, "delete_scene_id"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 941
    const-string v3, "delete_scene_id"

    const/4 v4, -0x1

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 942
    const-string v3, "ScenePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCENE_DELETED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 944
    const-string v3, "ScenePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete scene id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", and current scene id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCurrentSceneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCurrentSceneId()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 946
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->onDelete(I)Z

    .line 947
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setSelectSceneId(I)V

    .line 948
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->onApply()V

    .line 953
    :goto_3
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->updateSceneName()V

    .line 956
    iget v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSelectId:I

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCurrentSceneId()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSelectId:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 960
    .local v1, sceneName:Ljava/lang/String;
    :goto_4
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    .end local v1           #sceneName:Ljava/lang/String;
    :cond_4
    iget v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    .line 966
    iget-boolean v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v3, :cond_7

    .line 967
    const-string v3, "(%d/%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v6}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    .line 971
    :goto_5
    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderTitleText:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 972
    .restart local v2       #strHeaderText:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 950
    .end local v2           #strHeaderText:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSelectId:I

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setSelectSceneId(I)V

    .line 951
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->onDelete(I)Z

    goto/16 :goto_3

    .line 959
    :cond_6
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSelectId:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemName(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #sceneName:Ljava/lang/String;
    goto :goto_4

    .line 969
    .end local v1           #sceneName:Ljava/lang/String;
    :cond_7
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderCountText:Ljava/lang/String;

    goto :goto_5

    .line 974
    .end local v0           #scene:I
    :cond_8
    const/4 v3, 0x5

    if-ne p2, v3, :cond_a

    .line 975
    if-eqz p3, :cond_9

    const-string v3, "delete_scene_id"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 976
    const-string v3, "delete_scene_id"

    const/4 v4, -0x1

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 977
    .restart local v0       #scene:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_9

    .line 978
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->onDelete(I)Z

    .line 981
    .end local v0           #scene:I
    :cond_9
    invoke-static {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 982
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/scene/ScenePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 983
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->finish()V

    goto/16 :goto_2

    .line 985
    :cond_a
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    .line 986
    invoke-static {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 987
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/scene/ScenePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 988
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->finish()V

    goto/16 :goto_2

    .line 990
    :cond_b
    const/16 v3, 0x384

    if-ne p1, v3, :cond_0

    goto/16 :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 462
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 463
    const-string v0, "ScenePicker"

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

    .line 465
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->initUI()V

    .line 466
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->setOrientation(I)V

    .line 467
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    const-string v9, "PersonalizeSummary"

    invoke-virtual {p0, v9, v12}, Lcom/htc/home/personalize/scene/ScenePicker;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPreferences:Landroid/content/SharedPreferences;

    .line 172
    const-string v9, "common_app_bkg"

    const v10, 0x20806b7

    invoke-static {p0, v9, v10}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, background:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 175
    invoke-virtual {p0, v13}, Lcom/htc/home/personalize/scene/ScenePicker;->requestWindowFeature(I)Z

    .line 176
    const v9, 0x7f030016

    invoke-virtual {p0, v9}, Lcom/htc/home/personalize/scene/ScenePicker;->setContentView(I)V

    .line 177
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->setupHeaderFooter()V

    .line 179
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 180
    .local v4, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 182
    const/4 v6, -0x1

    .line 183
    .local v6, sceneId:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 184
    .local v3, initialIntent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 185
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, strAction:Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v9, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 187
    const-string v9, "com.htc.home.personalize.builderSceneGuid"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, strGUID:Ljava/lang/String;
    const-string v9, "ScenePicker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ScenePicker onCreate GUID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v9, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v9, v8}, Lcom/htc/htcSceneManager/scene/SceneManager;->getBuilderSceneById(Ljava/lang/String;)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v5

    .line 190
    .local v5, scene:Lcom/htc/htcSceneManager/scene/Scene;
    if-eqz v5, :cond_0

    .line 191
    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v6

    .line 201
    .end local v5           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v7           #strAction:Ljava/lang/String;
    .end local v8           #strGUID:Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v9, Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-direct {v9, p0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    .line 202
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->initUI()V

    .line 205
    iget-object v9, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v9, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSceneIndexOrCurrentSceneIndexById(I)I

    move-result v9

    iput v9, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    .line 207
    invoke-static {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v9

    sput-object v9, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    .line 208
    invoke-static {p0}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDatabase:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    .line 210
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/htc/home/personalize/scene/ScenePicker;->handler:Landroid/os/Handler;

    .line 212
    iget-object v9, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v9, v12}, Lcom/htc/home/personalize/util/Utilities;->editReDrawFlag(Landroid/content/SharedPreferences;Z)V

    .line 214
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->checkNetworkAvailable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 215
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSActive(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 216
    new-instance v1, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;

    invoke-direct {v1, p0, p0}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;Landroid/content/Context;)V

    .line 217
    .local v1, downloadBuilderScene:Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;
    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->start()V

    .line 219
    iput-boolean v13, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mBuilderSceneDownloaded:Z

    .line 222
    .end local v1           #downloadBuilderScene:Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;
    :cond_1
    return-void

    .line 194
    .restart local v7       #strAction:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 195
    .local v2, extra:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 196
    const-string v9, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    const/4 v10, -0x1

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    const v2, 0x20c013c

    .line 1153
    packed-switch p1, :pswitch_data_0

    .line 1241
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1155
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f05

    new-instance v2, Lcom/htc/home/personalize/scene/ScenePicker$10;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/scene/ScenePicker$10;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1172
    :pswitch_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x20c01fc

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/home/personalize/scene/ScenePicker$12;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/scene/ScenePicker$12;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c013d

    new-instance v2, Lcom/htc/home/personalize/scene/ScenePicker$11;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/scene/ScenePicker$11;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1225
    :pswitch_3
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/home/personalize/scene/ScenePicker$13;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/scene/ScenePicker$13;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1002
    const/4 v1, 0x3

    const v2, 0x7f090051

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1003
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1005
    const/16 v1, 0xc8

    const v2, 0x7f09001a

    invoke-interface {p1, v1, v6, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1006
    const v1, 0x20809b9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1008
    const/16 v1, 0x64

    const v2, 0x7f090004

    invoke-interface {p1, v1, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1009
    const v1, 0x208032a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1011
    const/16 v1, 0x12c

    const/4 v2, 0x4

    const v3, 0x20c01fc

    invoke-interface {p1, v1, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1012
    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1014
    const/4 v1, 0x5

    const v2, 0x7f090052

    invoke-interface {p1, v5, v1, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1015
    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1017
    return v4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mInstalledSceneReceiver:Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mInstalledSceneReceiver:Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 430
    iput-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mInstalledSceneReceiver:Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateSceneListReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateSceneListReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 436
    iput-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateSceneListReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateScenePreviewReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateScenePreviewReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    iput-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mUpdateScenePreviewReceiver:Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mNetworkChangeReceiver:Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;

    if-eqz v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mNetworkChangeReceiver:Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 448
    iput-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mNetworkChangeReceiver:Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->releasePreview()V

    .line 453
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->destroy()V

    .line 454
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControlView;->release()V

    .line 456
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 457
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .local p1, parent:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 817
    iget-boolean v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v2, :cond_0

    .line 818
    iget v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    if-nez v2, :cond_1

    .line 819
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v4}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setSelectSceneId(I)V

    .line 820
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->onApply()V

    .line 821
    invoke-static {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 822
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/scene/ScenePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 823
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->finish()V

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    if-ne v2, v3, :cond_0

    .line 825
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2, p3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->addDeleteIndex(I)V

    .line 826
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 827
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getDeleteItemCount()I

    move-result v0

    .line 828
    .local v0, deleteItemCount:I
    const-string v2, "%s (%d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20c01fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, strButtonRightText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 830
    if-lez v0, :cond_2

    .line 831
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 833
    :cond_2
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 782
    iget-boolean v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-nez v3, :cond_1

    .line 783
    iget v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    if-nez v3, :cond_5

    .line 784
    iget-boolean v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsShowHeaderView:Z

    if-eqz v3, :cond_3

    .line 785
    if-nez p3, :cond_2

    .line 786
    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/scene/ScenePicker;->showDialog(I)V

    .line 798
    :goto_0
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 811
    :cond_0
    :goto_1
    iput p3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    .line 813
    :cond_1
    return-void

    .line 788
    :cond_2
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v4, p3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setSelectSceneId(I)V

    goto :goto_0

    .line 792
    :cond_3
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3, p3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v3

    long-to-int v1, v3

    .line 793
    .local v1, i:I
    int-to-long v3, v1

    cmp-long v3, v3, p4

    if-eqz v3, :cond_4

    .line 794
    const-string v3, "ScenePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong id mapping when clicking id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", and getItemId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_4
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v4, p3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setSelectSceneId(I)V

    goto :goto_0

    .line 800
    .end local v1           #i:I
    :cond_5
    iget v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    if-ne v3, v4, :cond_0

    .line 801
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3, p3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->addDeleteIndex(I)V

    .line 802
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 803
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getDeleteItemCount()I

    move-result v0

    .line 804
    .local v0, deleteItemCount:I
    const-string v3, "%s (%d)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20c01fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, strFooterButtonText:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 806
    if-lez v0, :cond_6

    .line 807
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 809
    :cond_6
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1141
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1143
    iget v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    if-eqz v0, :cond_0

    .line 1144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->switchMode(I)V

    .line 1145
    const/4 v0, 0x1

    .line 1148
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 308
    if-eqz p1, :cond_1

    .line 309
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, strAction:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v5, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 311
    const-string v5, "com.htc.home.personalize.builderSceneGuid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, strGUID:Ljava/lang/String;
    const-string v5, "ScenePicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ScenePicker onNewIntent GUID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sget-object v5, Lcom/htc/home/personalize/scene/ScenePicker;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v5, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getBuilderSceneById(Ljava/lang/String;)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v1

    .line 314
    .local v1, scene:Lcom/htc/htcSceneManager/scene/Scene;
    if-eqz v1, :cond_1

    .line 315
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSceneIndexOrCurrentSceneIndexById(I)I

    move-result v5

    iput v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    .line 316
    iget-boolean v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v5, :cond_2

    .line 317
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    if-eqz v5, :cond_0

    .line 318
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v5, v6, v8}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 323
    :cond_0
    :goto_0
    iget v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-direct {p0, v5}, Lcom/htc/home/personalize/scene/ScenePicker;->updateSceneTitle(I)V

    .line 347
    .end local v1           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v3           #strAction:Ljava/lang/String;
    .end local v4           #strGUID:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 321
    .restart local v1       #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .restart local v3       #strAction:Ljava/lang/String;
    .restart local v4       #strGUID:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    iget v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 326
    .end local v1           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v4           #strGUID:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 327
    .local v0, extra:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 328
    const-string v5, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 330
    .local v2, sceneId:I
    if-ltz v2, :cond_1

    .line 331
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5, v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSceneIndexOrCurrentSceneIndexById(I)I

    move-result v5

    iput v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    .line 332
    iget-boolean v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v5, :cond_5

    .line 333
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    if-eqz v5, :cond_4

    .line 334
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v5, v6, v8}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 336
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/DeckControl;->notifyDataSetChanged(I)V

    .line 341
    :cond_4
    :goto_2
    iget v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-direct {p0, v5}, Lcom/htc/home/personalize/scene/ScenePicker;->updateSceneTitle(I)V

    goto :goto_1

    .line 339
    :cond_5
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    iget v6, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1022
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1040
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 1025
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->switchView()V

    goto :goto_0

    .line 1029
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->startNewSceneActivity()V

    goto :goto_1

    .line 1032
    :pswitch_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->switchMode(I)V

    goto :goto_1

    .line 1035
    :pswitch_3
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSelectSceneId()I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mSelectId:I

    .line 1036
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePicker;->startRenameSceneActivity()V

    goto :goto_1

    .line 1022
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 419
    iget-boolean v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl;->pause()V

    .line 423
    :cond_0
    const-string v0, "Scene"

    invoke-static {p0, v0}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->resetDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/16 v7, 0x12c

    const/16 v5, 0xc8

    const/16 v4, 0x64

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1045
    iget-boolean v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v3, :cond_2

    .line 1046
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1047
    invoke-interface {p1, v4, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1053
    :goto_0
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 1054
    invoke-interface {p1, v7, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1059
    :goto_1
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1060
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 1061
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSelectSceneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSceneIndexById(I)I

    move-result v1

    .line 1062
    .local v1, selectedIndex:I
    const-string v3, "ScenePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareOptionsMenu : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSelectSceneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_4

    .line 1064
    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1070
    .end local v1           #selectedIndex:I
    :cond_1
    :goto_2
    iget v3, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I

    if-eqz v3, :cond_5

    .line 1072
    :goto_3
    return v2

    .line 1049
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_2
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1050
    invoke-interface {p1, v5, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0

    .line 1056
    :cond_3
    invoke-interface {p1, v7, v6}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_1

    .line 1066
    .restart local v0       #item:Landroid/view/MenuItem;
    .restart local v1       #selectedIndex:I
    :cond_4
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1072
    .end local v1           #selectedIndex:I
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_3
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 356
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 357
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "scene_picker_mode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    .line 358
    iget-boolean v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v1, v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setViewMode(Z)V

    .line 360
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 362
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->resume()V

    .line 364
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 365
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    iget v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/DeckControl;->notifyDataSetChanged(I)V

    .line 375
    :goto_0
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 376
    iget v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->updateSceneTitle(I)V

    .line 378
    const-string v1, "Scene"

    invoke-static {p0, v1}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->resetDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/home/personalize/scene/ScenePicker$4;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/scene/ScenePicker$4;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 387
    .local v0, drawPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 388
    return-void

    .line 368
    .end local v0           #drawPreviewThread:Ljava/lang/Thread;
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v1, v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setViewMode(Z)V

    .line 369
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mPanelLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControlView:Lcom/htc/widget/DeckControlView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/DeckControlView;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->pause()V

    .line 372
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;

    iget v2, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 352
    return-void
.end method

.method public setupHeaderFooter()V
    .locals 2

    .prologue
    .line 225
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 226
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderImageRight:Lcom/htc/widget/HeaderBarImage;

    .line 228
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 229
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 231
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 232
    return-void
.end method

.class public Lcom/htc/album/picker/PickerMultiItemScene;
.super Lcom/htc/album/picker/PickerMultiItemBaseScene;
.source "PickerMultiItemScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;,
        Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;
    }
.end annotation


# static fields
.field private static final DIALOG_STYLE_LOADING:I = 0x2b11

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MSG_HIDE_LOADING:I = 0x2b12

.field private static final MSG_LOAD_COMPLETE:I = 0x2b10

.field private static final MSG_SHOW_LOADING:I = 0x2b11


# instance fields
.field private mGoStop:Z

.field private mHideMaxCount:Z

.field private mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

.field private mMaxPickCount:I

.field private mPickerResult:Landroid/content/Intent;

.field private mTextConfirm:Ljava/lang/String;

.field private mTextTitle:Ljava/lang/String;

.field private mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/htc/album/picker/PickerMultiItemBaseScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 49
    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    .line 50
    iput-boolean v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    .line 52
    iput-boolean v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mHideMaxCount:Z

    .line 53
    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextTitle:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextConfirm:Ljava/lang/String;

    .line 558
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private selectAll(Z)V
    .locals 8
    .parameter "selectAll"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 378
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v5, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    .line 382
    .local v1, nCount:I
    const/4 v2, 0x0

    .line 384
    .local v2, nCountPicker:I
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_1
    if-le v1, v3, :cond_2

    .line 386
    invoke-virtual {p0, v3}, Lcom/htc/album/picker/PickerMultiItemScene;->isItemPicked(I)Z

    move-result v4

    .line 388
    .local v4, selected:Z
    const/4 v5, -0x1

    iget v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-eq v5, v6, :cond_3

    if-eqz p1, :cond_3

    .line 390
    iget-object v5, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 391
    iget v5, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-ne v5, v2, :cond_3

    .line 393
    invoke-virtual {p0, v3}, Lcom/htc/album/picker/PickerMultiItemScene;->isItemPicked(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 395
    sget-object v5, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][PickerMultiItemTemplateBase][selectAll]: max pick reached: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .end local v4           #selected:Z
    :cond_2
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 410
    iget-object v5, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v5

    iget-object v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mIsSelectAll:Z

    .line 411
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemScene;->invalidateControlBars()V

    goto :goto_0

    .line 402
    .restart local v4       #selected:Z
    :cond_3
    xor-int v5, v4, p1

    if-eqz v5, :cond_4

    .line 404
    invoke-virtual {p0, v3}, Lcom/htc/album/picker/PickerMultiItemScene;->pickItem(I)V

    .line 384
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 410
    .end local v4           #selected:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private sendBackResult(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .parameter "activity"
    .parameter "pickerResult"

    .prologue
    .line 328
    if-eqz p2, :cond_0

    .line 330
    :try_start_0
    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[handleActivityMessage] Result OK"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v1, -0x1

    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 338
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 344
    :goto_1
    return-void

    .line 335
    :cond_0
    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[handleActivityMessage] Result Failed"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 342
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleActivityMessage] Activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PickerResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected getConfirmText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextConfirm:Ljava/lang/String;

    return-object v0
.end method

.method protected getGridViewItemStyle()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getSelectionCount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mHideMaxCount:Z

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getSelectionCount()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getSelectionCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onConfirm()V
    .locals 3

    .prologue
    .line 228
    new-instance v1, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    .line 229
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v0}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->start()V

    .line 230
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, dialog:Landroid/app/Dialog;
    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v3, p1, p2}, Lcom/htc/album/processor/ImageProcessorManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 90
    :cond_0
    if-nez v1, :cond_1

    const/16 v3, 0x2b11

    if-ne p1, v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 93
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 94
    .local v2, progDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v3, Lcom/htc/album/picker/PickerMultiItemScene$1;

    invoke-direct {v3, p0, v0}, Lcom/htc/album/picker/PickerMultiItemScene$1;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 111
    move-object v1, v2

    .line 114
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #progDlg:Lcom/htc/app/HtcProgressDialog;
    :cond_1
    if-eqz v1, :cond_2

    .line 117
    .end local v1           #dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .restart local v1       #dialog:Landroid/app/Dialog;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 72
    const-string v0, "max_pick"

    const/16 v1, 0x3e7

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    .line 73
    const-string v0, "hide_max_pick_hint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mHideMaxCount:Z

    .line 74
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextTitle:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextConfirm:Ljava/lang/String;

    .line 76
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method protected onItemSelected(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 174
    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/album/picker/PickerMultiItemScene;->isItemPicked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 177
    .local v0, pickerCount:I
    iget v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-ne v1, v0, :cond_0

    .line 179
    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onItemSelected]: max pick reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v0           #pickerCount:I
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mIsSelectAll:Z

    .line 186
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onItemSelected(I)V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 160
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x20c013a

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/album/picker/PickerMultiItemScene;->selectAll(Z)V

    .line 161
    return v1

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 14
    .parameter "message"

    .prologue
    const/16 v12, 0x2b11

    const/4 v10, 0x0

    .line 248
    iget-object v11, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v11, :cond_1

    .line 249
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v10

    .line 321
    :cond_0
    :goto_0
    return v10

    .line 252
    :cond_1
    iget-object v11, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 254
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v10

    goto :goto_0

    .line 256
    :cond_2
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 317
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v10

    goto :goto_0

    .line 260
    :pswitch_0
    invoke-virtual {v0, v12}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-virtual {v0, v12}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v11, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    iget-boolean v11, v11, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    if-nez v11, :cond_0

    .line 273
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 274
    .local v5, intentCaller:Landroid/content/Intent;
    iget-object v9, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    .line 276
    .local v9, pickerResult:Landroid/content/Intent;
    const/4 v8, 0x0

    .line 277
    .local v8, pick3DPhotos:Z
    if-eqz v9, :cond_3

    .line 279
    const-string v11, "3d_image_index_list"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 280
    .local v6, list3D:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v11, "disable_2d_conversion"

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 281
    .local v7, noConversion:Z
    if-nez v7, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    const-string v11, "video/*"

    invoke-virtual {v9}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v8, 0x1

    .line 285
    .end local v6           #list3D:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7           #noConversion:Z
    :cond_3
    :goto_1
    if-eqz v8, :cond_8

    .line 287
    iget-object v11, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v11}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->getConversionIntent()Landroid/content/Intent;

    move-result-object v1

    .line 289
    .local v1, conversionIntent:Landroid/content/Intent;
    new-instance v11, Lcom/htc/album/processor/ImageProcessorManager;

    new-instance v12, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/picker/PickerMultiItemScene$1;)V

    invoke-direct {v11, v0, v12}, Lcom/htc/album/processor/ImageProcessorManager;-><init>(Landroid/app/Activity;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V

    iput-object v11, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 292
    const/16 v2, 0xcb

    .line 293
    .local v2, dialogId:I
    const-string v11, "force_2d_result"

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 294
    .local v4, force2D:Z
    const-string v11, "do_share"

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 295
    .local v3, doShare:Z
    if-eqz v3, :cond_6

    .line 297
    if-eqz v4, :cond_5

    const/16 v2, 0xcc

    .line 307
    :goto_2
    iget-object v11, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v11, v2, v1}, Lcom/htc/album/processor/ImageProcessorManager;->startProcessing(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .end local v1           #conversionIntent:Landroid/content/Intent;
    .end local v2           #dialogId:I
    .end local v3           #doShare:Z
    .end local v4           #force2D:Z
    .restart local v6       #list3D:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7       #noConversion:Z
    :cond_4
    move v8, v10

    .line 281
    goto :goto_1

    .line 297
    .end local v6           #list3D:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7           #noConversion:Z
    .restart local v1       #conversionIntent:Landroid/content/Intent;
    .restart local v2       #dialogId:I
    .restart local v3       #doShare:Z
    .restart local v4       #force2D:Z
    :cond_5
    const/16 v2, 0xcb

    goto :goto_2

    .line 303
    :cond_6
    if-eqz v4, :cond_7

    const/16 v2, 0xca

    :goto_3
    goto :goto_2

    :cond_7
    const/16 v2, 0xc9

    goto :goto_3

    .line 311
    .end local v1           #conversionIntent:Landroid/content/Intent;
    .end local v2           #dialogId:I
    .end local v3           #doShare:Z
    .end local v4           #force2D:Z
    :cond_8
    invoke-direct {p0, v0, v9}, Lcom/htc/album/picker/PickerMultiItemScene;->sendBackResult(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x2b10
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    const/4 v10, -0x1

    const v9, 0x20c01dc

    const v8, 0x20c013a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 128
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_0

    .line 150
    :goto_0
    return v4

    .line 131
    :cond_0
    iget-object v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "max_pick"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 132
    .local v1, nMaxPick:I
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    .line 133
    .local v2, nTotal:I
    if-eq v10, v1, :cond_1

    if-le v1, v2, :cond_2

    .line 135
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 136
    .local v3, pickCount:I
    if-ne v2, v3, :cond_3

    .line 138
    invoke-interface {p1, v5, v9, v4, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x208033c

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_2
    move v4, v5

    .line 150
    goto :goto_0

    .end local v3           #pickCount:I
    :cond_2
    move v2, v1

    .line 133
    goto :goto_1

    .line 140
    .restart local v3       #pickCount:I
    :cond_3
    if-nez v3, :cond_4

    .line 142
    invoke-interface {p1, v5, v8, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x2080334

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 146
    :cond_4
    invoke-interface {p1, v4, v8, v4, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x2080334

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 147
    invoke-interface {p1, v5, v9, v4, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x208033c

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z

    .line 351
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v1}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->stopLoading()V

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v1}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 364
    :cond_0
    iput-object v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    .line 366
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v1}, Lcom/htc/album/processor/ImageProcessorManager;->release()V

    .line 370
    :cond_1
    iput-object v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 372
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onStop()V

    .line 373
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

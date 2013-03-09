.class public Lcom/htc/home/personalize/scene/NewSceneActivity;
.super Landroid/app/Activity;
.source "NewSceneActivity.java"


# static fields
.field public static final ACTION_NEW_ITEM:Ljava/lang/String; = "com.htc.launcher.NewSceneActivity.action.new_scene"

.field public static final CREATE_SCENE:I = 0x0

.field public static final DELETE_SCENE_ID:Ljava/lang/String; = "delete_scene_id"

.field public static final DIALOG_INVALIDATE_SCENE_NAME:I = 0x16

.field public static final KEY_LAUNCH_MODE:Ljava/lang/String; = "launch_mode"

.field public static final KEY_SELECT_ID:Ljava/lang/String; = "select_id"

.field public static final RENAME_SCENE:I = 0x1

.field public static final REQUEST_RESULT:I = 0x64

.field public static final SCENE_CREATED:I = 0x3

.field public static final SCENE_DELETED:I = 0x4

.field public static final SCENE_NAME_CHANGED:I = 0x2

.field public static final SCENE_REPLACED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "NewSceneActivity"

.field private static final localLOGV:Z


# instance fields
.field private mCurrentUsingSceneName:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mEditTextWatcher:Landroid/text/TextWatcher;

.field private mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mLaunchMode:I

.field private mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

.field private mSelectId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mLaunchMode:I

    .line 71
    iput-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 72
    iput-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 73
    iput-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/scene/NewSceneActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mLaunchMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/scene/NewSceneActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/scene/NewSceneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getOrgSceneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/scene/NewSceneActivity;)Lcom/htc/htcSceneManager/scene/SceneManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/scene/NewSceneActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->createNewScene()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/home/personalize/scene/NewSceneActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSelectId:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/scene/NewSceneActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->checkSceneNameNotChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/scene/NewSceneActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->renameScene()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/scene/NewSceneActivity;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->checkNullOrAllSpaceString(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/scene/NewSceneActivity;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method private checkNullOrAllSpaceString(Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 393
    if-nez p1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v2

    .line 395
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 396
    .local v1, stringLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 397
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 402
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkSceneNameNotChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 411
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSelectId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mCurrentUsingSceneName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNewScene()V
    .locals 6

    .prologue
    .line 324
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->createNewScene(Ljava/lang/String;)I

    move-result v1

    .line 325
    .local v1, currentSceneId:I
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v3, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->setCurrentScene(I)Z

    move-result v0

    .line 326
    .local v0, bApply:Z
    if-eqz v0, :cond_1

    .line 327
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.launcher.ThemeChooser.action.theme_change"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v3, "workspace_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    sget-boolean v3, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_0

    .line 331
    const-string v3, "NewSceneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new scene "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/scene/NewSceneActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    invoke-static {}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->getInstance()Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->setInSceneChange()V

    .line 335
    invoke-static {p0, v1}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper;->loadHomeWallpaper(Landroid/content/Context;I)V

    .line 337
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    sget-boolean v3, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_2

    .line 338
    const-string v3, "NewSceneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create Scene("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_2
    return-void
.end method

.method private deleteScene(I)V
    .locals 8
    .parameter "sceneId"

    .prologue
    .line 359
    sget-boolean v5, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    if-eqz v5, :cond_0

    .line 360
    const-string v5, "NewSceneActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rename scene and delete the scene with the same scene name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    if-gez p1, :cond_1

    .line 384
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v5, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v5, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v3

    .line 364
    .local v3, scene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, previewPathForPortrait:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, previewPathForLandscape:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, wallpaperPath:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 369
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, deleteScene:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 371
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 373
    .end local v0           #deleteScene:Ljava/io/File;
    :cond_2
    if-eqz v1, :cond_3

    .line 374
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .restart local v0       #deleteScene:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 378
    .end local v0           #deleteScene:Ljava/io/File;
    :cond_3
    if-eqz v4, :cond_4

    .line 379
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .restart local v0       #deleteScene:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 381
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 383
    .end local v0           #deleteScene:Ljava/io/File;
    :cond_4
    iget-object v5, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v5, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->removeScene(I)I

    goto :goto_0
.end method

.method static generateHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "con"

    .prologue
    .line 420
    const/4 v0, 0x1

    .line 422
    .local v0, index:I
    const/16 v1, 0x32

    .line 423
    .local v1, maxdisplayNameLen:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20c00f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, strHint:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_0

    .line 425
    const-string v3, "get Mojibake from com.htc.R.string.phone_type_custom please check com.htc.R.string.phone_type_custom"

    .line 426
    const-string v4, "NewSceneActivity"

    invoke-static {v4, v3}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, newString:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->containSceneName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    add-int/lit8 v0, v0, 0x1

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 433
    :cond_1
    return-object v2
.end method

.method private getOrgSceneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "sceneName"

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, defaultNames:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, orgNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 468
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    aget-object p1, v2, v1

    .line 472
    .end local p1
    :cond_0
    return-object p1

    .line 467
    .restart local p1
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    .line 117
    iget v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mLaunchMode:I

    if-nez v3, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, titleName:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20c0130

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 141
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    invoke-direct {v4, p0}, Lcom/htc/home/personalize/scene/NewSceneActivity$1;-><init>(Lcom/htc/home/personalize/scene/NewSceneActivity;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20c013d

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 228
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/htc/home/personalize/scene/NewSceneActivity$2;

    invoke-direct {v4, p0}, Lcom/htc/home/personalize/scene/NewSceneActivity$2;-><init>(Lcom/htc/home/personalize/scene/NewSceneActivity;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v3, 0x7f0b0026

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09005c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 235
    const v3, 0x7f0b0027

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    .line 236
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/htc/home/personalize/scene/NewSceneActivity$3;

    invoke-direct {v4, p0}, Lcom/htc/home/personalize/scene/NewSceneActivity$3;-><init>(Lcom/htc/home/personalize/scene/NewSceneActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 257
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "app_selection_highlight"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 258
    .local v0, colorID:I
    if-eqz v0, :cond_0

    .line 260
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 262
    :cond_0
    iget v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mLaunchMode:I

    if-nez v3, :cond_4

    .line 263
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->generateHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 279
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 280
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 282
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/htc/home/personalize/scene/NewSceneActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/htc/home/personalize/scene/NewSceneActivity$4;-><init>(Lcom/htc/home/personalize/scene/NewSceneActivity;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    new-instance v3, Lcom/htc/home/personalize/scene/NewSceneActivity$5;

    invoke-direct {v3, p0}, Lcom/htc/home/personalize/scene/NewSceneActivity$5;-><init>(Lcom/htc/home/personalize/scene/NewSceneActivity;)V

    iput-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 314
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    sget-boolean v3, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_2

    .line 317
    const-string v3, "NewSceneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NewSceneActivity -> mCurrentUsingSceneName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mCurrentUsingSceneName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_2
    return-void

    .line 120
    .end local v0           #colorID:I
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #titleName:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #titleName:Ljava/lang/String;
    goto/16 :goto_0

    .line 264
    .restart local v0       #colorID:I
    :cond_4
    iget v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mLaunchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 265
    iget v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSelectId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 266
    const-string v3, "NewSceneActivity"

    const-string v4, "Select id is invalidate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->finish()V

    goto :goto_1

    .line 269
    :cond_5
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    iget v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSelectId:I

    invoke-virtual {v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 270
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    iget v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSelectId:I

    invoke-virtual {v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/htc/home/personalize/PersonalizeMain;->getSceneName(Lcom/htc/htcSceneManager/scene/Scene;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mCurrentUsingSceneName:Ljava/lang/String;

    .line 271
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mCurrentUsingSceneName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 273
    :cond_6
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private renameScene()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    iget v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSelectId:I

    iget-object v2, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->renameScene(Landroid/content/Context;ILjava/lang/String;)V

    .line 348
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->setResult(I)V

    .line 349
    sget-boolean v0, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "NewSceneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rename Scene("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSelectId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->finish()V

    .line 352
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->requestWindowFeature(I)Z

    .line 88
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->setupHeaderFooter()V

    .line 91
    invoke-static {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    .line 93
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "launch_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mLaunchMode:I

    .line 94
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "select_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mSelectId:I

    .line 96
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->init()V

    .line 98
    const-string v1, "common_app_bkg"

    const v2, 0x20806b7

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, background:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 100
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 477
    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    .line 478
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090059

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005b

    new-instance v2, Lcom/htc/home/personalize/scene/NewSceneActivity$7;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/scene/NewSceneActivity$7;-><init>(Lcom/htc/home/personalize/scene/NewSceneActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c013d

    new-instance v2, Lcom/htc/home/personalize/scene/NewSceneActivity$6;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/scene/NewSceneActivity$6;-><init>(Lcom/htc/home/personalize/scene/NewSceneActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 108
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 111
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    return-void
.end method

.method public setupHeaderFooter()V
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 78
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 79
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 81
    iget-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 82
    return-void
.end method

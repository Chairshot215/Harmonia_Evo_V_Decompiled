.class public Lcom/htc/home/personalize/scene/ScenePickerAdapter;
.super Lcom/htc/widget/DeckControlAdapter;
.source "ScenePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/scene/ScenePickerAdapter$1;,
        Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;,
        Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;,
        Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;,
        Lcom/htc/home/personalize/scene/ScenePickerAdapter$PreviewLoader;
    }
.end annotation


# static fields
.field public static final DELETE_MODE:I = 0x1

.field public static final ICON_PATH:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files/scenes_picker_list_"

.field public static final ICON_PATH_LAND:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files/scenes_picker_list_land_"

.field private static final INVALID_ID:J = -0x1L

.field private static final INVALID_SCENE_ID:I = -0x1

.field private static final NOTIFIED_DATASET_CHANGED:I = 0x64

.field public static final PREVIEW_PATH:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files/scenes_picker_"

.field public static final PREVIEW_PATH_LAND:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files/scenes_picker_land_"

.field public static final SELECT_MODE:I = 0x0

.field public static final STRING_FORMAT_ICON_PATH:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files/scenes_picker_list_%d.png"

.field public static final STRING_FORMAT_ICON_PATH_LAND:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files/scenes_picker_list_land_%d.png"

.field public static final STRING_FORMAT_PREVIEW_PATH:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files/scenes_picker_%d.png"

.field public static final STRING_FORMAT_PREVIEW_PATH_LAND:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files/scenes_picker_land_%d.png"

.field private static final TAG:Ljava/lang/String; = "ScenePickerAdapter"

.field private static final VIEW_TYPE_DELETE_ITEM:I = 0x3

.field private static final VIEW_TYPE_GALLERY_DELETE_ITEM:I = 0x5

.field private static final VIEW_TYPE_GALLERY_ITEM:I = 0x4

.field private static final VIEW_TYPE_MAX_COUNT:I = 0x6

.field private static final VIEW_TYPE_SELECTED_ITEM:I = 0x1

.field private static final VIEW_TYPE_UNDELETE_ITEM:I = 0x2

.field private static final VIEW_TYPE_UNSELECTED_ITEM:I = 0x0

.field private static final localLOGV:Z = true

.field private static mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/scene/ScenePickerItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mSceneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private static mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;


# instance fields
.field protected final COLOR_SELECT:I

.field protected final COLOR_UNSELECT:I

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mCurrentSceneId:I

.field private mHandler:Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDeleteCurrentScene:Z

.field private mIsPanelMode:Z

.field private mSelectSceneId:I

.field protected mbmpDeleteIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/htc/widget/DeckControlAdapter;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;-><init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;Lcom/htc/home/personalize/scene/ScenePickerAdapter$1;)V

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mHandler:Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;

    .line 100
    iput v1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mCurrentMode:I

    .line 104
    iput-boolean v1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mIsDeleteCurrentScene:Z

    .line 106
    iput-object v2, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mbmpDeleteIcon:Landroid/graphics/Bitmap;

    .line 108
    const/high16 v0, -0x7100

    iput v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->COLOR_SELECT:I

    .line 109
    iput v1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->COLOR_UNSELECT:I

    .line 113
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    .line 117
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->init()V

    .line 118
    return-void
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300()Lcom/htc/htcSceneManager/scene/SceneManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/home/personalize/scene/ScenePickerAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Scene;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getPanelViewBitmap(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Scene;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/scene/ScenePickerAdapter;)Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mHandler:Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;

    return-object v0
.end method

.method private getDummyPreviewImage(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"

    .prologue
    .line 648
    const-string v2, "ScenePickerAdapter"

    const-string v3, "getDummyPreviewImage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, src:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 651
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 652
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 653
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000d

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 654
    return-object v1
.end method

.method private static getPanelViewBitmap(Landroid/content/Context;Lcom/htc/home/personalize/scene/ScenePickerItem;Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "item"
    .parameter "isPanelMode"

    .prologue
    const v9, 0x7f02000d

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 606
    invoke-static {p0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->isPortrait(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_1

    const-string v2, "/data/data/com.htc.home.personalize/files/scenes_picker_%d.png"

    .line 610
    .local v2, pathFormat:Ljava/lang/String;
    :goto_0
    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 613
    .local v3, src:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 614
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 615
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 617
    if-eqz p2, :cond_4

    .line 618
    if-nez v3, :cond_0

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v9, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    move-object v4, v3

    .line 635
    .end local v3           #src:Landroid/graphics/Bitmap;
    .local v4, src:Landroid/graphics/Bitmap;
    :goto_1
    return-object v4

    .line 606
    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #pathFormat:Ljava/lang/String;
    .end local v4           #src:Landroid/graphics/Bitmap;
    :cond_1
    const-string v2, "/data/data/com.htc.home.personalize/files/scenes_picker_list_%d.png"

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string v2, "/data/data/com.htc.home.personalize/files/scenes_picker_land_%d.png"

    goto :goto_0

    :cond_3
    const-string v2, "/data/data/com.htc.home.personalize/files/scenes_picker_list_land_%d.png"

    goto :goto_0

    .line 624
    .restart local v0       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v2       #pathFormat:Ljava/lang/String;
    .restart local v3       #src:Landroid/graphics/Bitmap;
    :cond_4
    if-nez v3, :cond_5

    .line 626
    invoke-static {p0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->isPortrait(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v2, "/data/data/com.htc.home.personalize/files/scenes_picker_%d.png"

    .line 627
    :goto_2
    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 630
    if-nez v3, :cond_5

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v9, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_5
    move-object v4, v3

    .line 635
    .end local v3           #src:Landroid/graphics/Bitmap;
    .restart local v4       #src:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 626
    .end local v4           #src:Landroid/graphics/Bitmap;
    .restart local v3       #src:Landroid/graphics/Bitmap;
    :cond_6
    const-string v2, "/data/data/com.htc.home.personalize/files/scenes_picker_land_%d.png"

    goto :goto_2
.end method

.method private static getPanelViewBitmap(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Scene;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "scene"
    .parameter "isPanelMode"

    .prologue
    .line 640
    invoke-static {p0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, path:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 642
    .local v1, src:Landroid/graphics/Bitmap;
    const-string v2, "ScenePickerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPanelViewBitmap : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-object v1

    .line 640
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #src:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSceneFileName(ZI)Ljava/lang/String;
    .locals 5
    .parameter "isPortrait"
    .parameter "sceneId"

    .prologue
    .line 665
    if-eqz p0, :cond_0

    .line 667
    const-string v1, "/data/data/com.htc.home.personalize/files/scenes_picker_%d.png"

    .line 673
    .local v1, fileNameFormat:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, fileName:Ljava/lang/String;
    return-object v0

    .line 671
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #fileNameFormat:Ljava/lang/String;
    :cond_0
    const-string v1, "/data/data/com.htc.home.personalize/files/scenes_picker_land_%d.png"

    .restart local v1       #fileNameFormat:Ljava/lang/String;
    goto :goto_0
.end method

.method private getTranslateName(Lcom/htc/home/personalize/scene/ScenePickerItem;)Ljava/lang/String;
    .locals 4
    .parameter "sceneItem"

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getTranslateId()I

    move-result v1

    .line 274
    .local v1, translateId:I
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, names:[Ljava/lang/String;
    if-eqz v0, :cond_0

    if-ltz v1, :cond_0

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 279
    :goto_0
    return-object v2

    :cond_1
    aget-object v2, v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 12

    .prologue
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 165
    .local v4, startTime:J
    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    sput-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    .line 166
    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v0

    .line 167
    .local v0, currentSceneId:I
    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 168
    .local v3, size:I
    const-string v6, "ScenePickerAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSceneList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", SceneListSize : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currentSceneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    .line 170
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 172
    sget-object v7, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/htc/home/personalize/scene/ScenePickerItem;

    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcSceneManager/scene/Scene;

    iget-object v9, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Lcom/htc/htcSceneManager/scene/Scene;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v10

    const/4 v11, 0x0

    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getTranslateId()I

    move-result v6

    invoke-direct {v8, v9, v10, v11, v6}, Lcom/htc/home/personalize/scene/ScenePickerItem;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v7, "ScenePickerAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "widgetWorkspaces["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "], displayName = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcSceneManager/scene/Scene;

    iget-object v9, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Lcom/htc/htcSceneManager/scene/Scene;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v6

    if-ne v0, v6, :cond_0

    .line 176
    iput v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    iput v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mCurrentSceneId:I

    .line 170
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 180
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 181
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 182
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 183
    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020003

    invoke-static {v6, v7, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mbmpDeleteIcon:Landroid/graphics/Bitmap;

    .line 185
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 188
    const-string v6, "ScenePickerAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initial data takes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method private static isPortrait(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 659
    .local v0, orientation:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startLoadImage()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PreviewLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PreviewLoader;-><init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;Lcom/htc/home/personalize/scene/ScenePickerAdapter$1;)V

    .line 210
    .local v0, previewLoader:Lcom/htc/home/personalize/scene/ScenePickerAdapter$PreviewLoader;
    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PreviewLoader;->start()V

    .line 211
    return-void
.end method


# virtual methods
.method public addDeleteIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 587
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/scene/ScenePickerItem;

    sget-object v1, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/ScenePickerItem;->isMarked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setMarked(Z)V

    .line 588
    return-void

    .line 587
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentSceneId()I
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mCurrentSceneId:I

    return v0
.end method

.method public getDeleteItemCount()I
    .locals 4

    .prologue
    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, i:I
    sget-object v3, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 593
    .local v2, item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerItem;->isMarked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    .end local v2           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 240
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 246
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 248
    :cond_0
    const-wide/16 v0, -0x1

    .line 249
    :goto_0
    return-wide v0

    :cond_1
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemName(J)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 258
    sget-object v1, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 259
    const-string v1, "ScenePickerAdapter"

    const-string v2, "Current scene list is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v1, ""

    .line 269
    :goto_0
    return-object v1

    .line 262
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 263
    sget-object v1, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 264
    sget-object v1, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getTranslateName(Lcom/htc/home/personalize/scene/ScenePickerItem;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 262
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_2
    const-string v1, "ScenePickerAdapter"

    const-string v2, "Can not get scene item name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v1, ""

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x4

    .line 395
    iget-boolean v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mIsPanelMode:Z

    if-eqz v0, :cond_2

    .line 396
    iget v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mCurrentMode:I

    if-nez v0, :cond_0

    move v0, v1

    .line 414
    :goto_0
    return v0

    .line 399
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePickerItem;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    move v0, v1

    .line 402
    goto :goto_0

    .line 405
    :cond_2
    iget v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mCurrentMode:I

    if-nez v0, :cond_4

    .line 406
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v0

    iget v2, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 407
    const/4 v0, 0x1

    goto :goto_0

    .line 409
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 411
    :cond_4
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePickerItem;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 412
    const/4 v0, 0x3

    goto :goto_0

    .line 414
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getSceneIndexById(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 716
    sget-object v3, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 717
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 718
    sget-object v3, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 719
    .local v1, item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 722
    .end local v0           #i:I
    .end local v1           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :goto_1
    return v0

    .line 717
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    .end local v1           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSceneIndexOrCurrentSceneIndexById(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSceneIndexById(I)I

    move-result v0

    .line 728
    .local v0, sceneIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 729
    iget v1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mCurrentSceneId:I

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSceneIndexById(I)I

    move-result v0

    .line 731
    :cond_0
    return v0
.end method

.method public getSelectSceneId()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    return v0
.end method

.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 287
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mIsPanelMode:Z

    if-eqz v6, :cond_3

    .line 288
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;

    if-eqz v6, :cond_0

    .line 289
    move-object v3, p2

    .line 298
    .local v3, temp:Landroid/view/View;
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;

    .line 299
    .local v5, viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;
    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v6}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getPreview()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 301
    .local v4, tmp:Landroid/graphics/Bitmap;
    if-nez v4, :cond_2

    .line 302
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v10, :cond_1

    if-nez v4, :cond_1

    .line 305
    :try_start_1
    iget-object v8, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcSceneManager/scene/Scene;

    const/4 v9, 0x1

    invoke-static {v8, v6, v9}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getPanelViewBitmap(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Scene;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 306
    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v6, v4}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setPreview(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    .end local v1           #i:I
    .end local v3           #temp:Landroid/view/View;
    .end local v4           #tmp:Landroid/graphics/Bitmap;
    .end local v5           #viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030010

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 292
    .restart local v3       #temp:Landroid/view/View;
    new-instance v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;-><init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;)V

    .line 293
    .restart local v5       #viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;
    const v6, 0x7f0b0037

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 294
    const v6, 0x7f0b0038

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mDeleteIcon:Landroid/widget/ImageView;

    .line 295
    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 387
    .end local v3           #temp:Landroid/view/View;
    .end local v5           #viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "ScenePickerAdapter"

    const-string v8, "EXCEPTION OCCURS IN GETVIEW "

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v7

    .line 389
    .end local v0           #e:Ljava/lang/Exception;
    :goto_3
    monitor-exit p0

    return-object v3

    .line 307
    .restart local v1       #i:I
    .restart local v3       #temp:Landroid/view/View;
    .restart local v4       #tmp:Landroid/graphics/Bitmap;
    .restart local v5       #viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;
    :catch_1
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 309
    const-string v6, "ScenePickerAdapter"

    const-string v8, "getPanelViewBitmap: exception on create bitmap for panel view."

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 287
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v1           #i:I
    .end local v3           #temp:Landroid/view/View;
    .end local v4           #tmp:Landroid/graphics/Bitmap;
    .end local v5           #viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 312
    .restart local v1       #i:I
    .restart local v3       #temp:Landroid/view/View;
    .restart local v4       #tmp:Landroid/graphics/Bitmap;
    .restart local v5       #viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;
    :cond_1
    if-nez v4, :cond_2

    .line 313
    :try_start_5
    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getDummyPreviewImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 316
    .end local v1           #i:I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemViewType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 318
    :pswitch_0
    iget-object v6, v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 319
    iget-object v6, v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mImageView:Landroid/widget/ImageView;

    const/high16 v8, -0x100

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 320
    iget-object v6, v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mImageView:Landroid/widget/ImageView;

    new-instance v8, Lcom/htc/home/personalize/util/FastBitmapDrawable;

    iget-object v9, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lcom/htc/home/personalize/util/FastBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object v6, v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mDeleteIcon:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 324
    :pswitch_1
    iget-object v6, v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mImageView:Landroid/widget/ImageView;

    const/high16 v8, -0x7100

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 325
    iget-object v6, v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mImageView:Landroid/widget/ImageView;

    const/high16 v8, -0x100

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 326
    iget-object v6, v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mImageView:Landroid/widget/ImageView;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v6, v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mDeleteIcon:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    iget-object v6, v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;->mDeleteIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mbmpDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 334
    .end local v3           #temp:Landroid/view/View;
    .end local v4           #tmp:Landroid/graphics/Bitmap;
    .end local v5           #viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$PanelViewHolder;
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;

    if-eqz v6, :cond_4

    .line 335
    move-object v3, p2

    .line 345
    .restart local v3       #temp:Landroid/view/View;
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;

    .line 346
    .local v5, viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;
    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v6}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getPreview()Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    .line 348
    .restart local v4       #tmp:Landroid/graphics/Bitmap;
    if-nez v4, :cond_6

    .line 349
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    if-ge v1, v10, :cond_5

    if-nez v4, :cond_5

    .line 352
    :try_start_6
    iget-object v8, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcSceneManager/scene/Scene;

    const/4 v9, 0x0

    invoke-static {v8, v6, v9}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getPanelViewBitmap(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Scene;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 353
    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v6, v4}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setPreview(Landroid/graphics/Bitmap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 349
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 337
    .end local v1           #i:I
    .end local v3           #temp:Landroid/view/View;
    .end local v4           #tmp:Landroid/graphics/Bitmap;
    .end local v5           #viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;
    :cond_4
    :try_start_7
    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030019

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 338
    .restart local v3       #temp:Landroid/view/View;
    new-instance v5, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;

    const-string v6, "notHeader"

    invoke-direct {v5, p0, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;-><init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;Ljava/lang/String;)V

    .line 339
    .restart local v5       #viewHolder:Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;
    const v6, 0x7f0b004e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    #setter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mImageView:Landroid/widget/ImageView;
    invoke-static {v5, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->access$802(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 340
    const v6, 0x7f0b004f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    #setter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v5, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->access$902(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;Landroid/widget/CheckedTextView;)Landroid/widget/CheckedTextView;

    .line 342
    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 354
    .restart local v1       #i:I
    .restart local v4       #tmp:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v0

    .line 355
    .restart local v0       #e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 356
    const-string v6, "ScenePickerAdapter"

    const-string v8, "getPanelViewBitmap: exception on create bitmap for list view."

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 359
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    if-nez v4, :cond_6

    .line 360
    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getDummyPreviewImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 363
    .end local v1           #i:I
    :cond_6
    #getter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mImageView:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->access$800(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    new-instance v8, Lcom/htc/home/personalize/util/FastBitmapDrawable;

    iget-object v9, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lcom/htc/home/personalize/util/FastBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    #getter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->access$900(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v8

    sget-object v6, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v6}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v6

    int-to-long v9, v6

    invoke-virtual {p0, v9, v10}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemName(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    const-string v8, "common_radiobutton"

    const v9, 0x20804c5

    invoke-static {v6, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 367
    .local v2, markID:I
    if-eqz v2, :cond_7

    .line 368
    #getter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->access$900(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 369
    :cond_7
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemViewType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_3

    .line 374
    :pswitch_2
    #getter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->access$900(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_3

    .line 371
    :pswitch_3
    #getter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->access$900(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_3

    .line 377
    :pswitch_4
    #getter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->access$900(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v6

    const v8, 0x2080014

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto/16 :goto_3

    .line 380
    :pswitch_5
    #getter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->access$900(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v6

    const v8, 0x2080014

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 381
    #getter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->access$900(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 369
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x6

    return v0
.end method

.method public onApply()V
    .locals 7

    .prologue
    .line 444
    iget v4, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    iget v5, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mCurrentSceneId:I

    if-eq v4, v5, :cond_1

    .line 445
    sget-object v4, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    iget v5, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    invoke-virtual {v4, v5}, Lcom/htc/htcSceneManager/scene/SceneManager;->setCurrentScene(I)Z

    move-result v0

    .line 450
    .local v0, bApply:Z
    sget-object v4, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    iget v5, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    invoke-virtual {v4, v5}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v2

    .line 451
    .local v2, scene:Lcom/htc/htcSceneManager/scene/Scene;
    if-eqz v2, :cond_0

    .line 452
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v3

    .line 453
    .local v3, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v4, "com.htc.launcher"

    invoke-virtual {v3, v4}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    const-string v5, "scene"

    invoke-interface {v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 454
    const-string v4, "scene_ID"

    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 455
    invoke-static {v3}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 456
    invoke-virtual {v3}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 460
    .end local v3           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    if-eqz v0, :cond_1

    .line 461
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 462
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.htc.launcher.ThemeChooser.action.theme_change"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v4, "workspace_id"

    iget v5, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    const-string v4, "ScenePickerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Apply scene "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 467
    invoke-static {}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->getInstance()Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->setInSceneChange()V

    .line 468
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    invoke-static {v4, v5}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper;->loadHomeWallpaper(Landroid/content/Context;I)V

    .line 472
    .end local v0           #bApply:Z
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    :cond_1
    return-void
.end method

.method public onDelete()Z
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 517
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v11}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v4

    .line 518
    .local v4, initialId:I
    const-string v11, "ScenePickerAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "current scene : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v1, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-boolean v14, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mIsDeleteCurrentScene:Z

    .line 521
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_5

    .line 522
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 523
    .local v5, item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerItem;->isMarked()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 524
    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v9

    .line 525
    .local v9, sceneId:I
    if-ne v4, v9, :cond_0

    .line 526
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mIsDeleteCurrentScene:Z

    .line 527
    :cond_0
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v11, v9}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v8

    .line 528
    .local v8, scene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual {v8}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v7

    .line 529
    .local v7, previewPathForPortrait:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, previewPathForLandscape:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v10

    .line 532
    .local v10, wallpaperPath:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 533
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v2, deleteScene:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 535
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 537
    .end local v2           #deleteScene:Ljava/io/File;
    :cond_1
    if-eqz v6, :cond_2

    .line 538
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    .restart local v2       #deleteScene:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 540
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 542
    .end local v2           #deleteScene:Ljava/io/File;
    :cond_2
    if-eqz v10, :cond_3

    .line 543
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .restart local v2       #deleteScene:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 545
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 547
    .end local v2           #deleteScene:Ljava/io/File;
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    const-string v11, "ScenePickerAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "delete scene("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v6           #previewPathForLandscape:Ljava/lang/String;
    .end local v7           #previewPathForPortrait:Ljava/lang/String;
    .end local v8           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v9           #sceneId:I
    .end local v10           #wallpaperPath:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 551
    .end local v5           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v0, v11, [I

    .line 552
    .local v0, deleteAry:[I
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_6

    .line 553
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v0, v3

    .line 552
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 555
    :cond_6
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v11, v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->removeScenes([I)I

    .line 557
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    :goto_2
    if-ltz v3, :cond_8

    .line 558
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 559
    .restart local v5       #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerItem;->isMarked()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 560
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 561
    iget-object v11, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v12

    invoke-static {v11, v12}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->resetDownloadSceneId(Landroid/content/Context;I)V

    .line 557
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 564
    .end local v5           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_8
    iget-boolean v11, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mIsDeleteCurrentScene:Z

    if-eqz v11, :cond_9

    .line 565
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_a

    .line 566
    const/4 v11, -0x1

    iput v11, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    .line 571
    :goto_3
    const-string v11, "ScenePickerAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "delete current scene, current scene id change to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mCurrentSceneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_9
    iget-boolean v11, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mIsDeleteCurrentScene:Z

    return v11

    .line 568
    :cond_a
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v11}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v11

    iput v11, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    .line 569
    iget v11, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    iput v11, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mCurrentSceneId:I

    goto :goto_3
.end method

.method public onDelete(I)Z
    .locals 11
    .parameter "id"

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, deleted:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v8, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 477
    sget-object v8, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 478
    .local v3, item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    iget v8, v3, Lcom/htc/home/personalize/scene/ScenePickerItem;->id:I

    if-ne p1, v8, :cond_3

    .line 479
    sget-object v8, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v8, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v6

    .line 480
    .local v6, scene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, previewPathForPortrait:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, previewPathForLandscape:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v7

    .line 484
    .local v7, wallpaperPath:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 485
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v0, deleteScene:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 487
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 489
    .end local v0           #deleteScene:Ljava/io/File;
    :cond_0
    if-eqz v4, :cond_1

    .line 490
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .restart local v0       #deleteScene:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 492
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 494
    .end local v0           #deleteScene:Ljava/io/File;
    :cond_1
    if-eqz v7, :cond_2

    .line 495
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    .restart local v0       #deleteScene:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 497
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 499
    .end local v0           #deleteScene:Ljava/io/File;
    :cond_2
    sget-object v8, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    iget v9, v3, Lcom/htc/home/personalize/scene/ScenePickerItem;->id:I

    invoke-virtual {v8, v9}, Lcom/htc/htcSceneManager/scene/SceneManager;->removeScene(I)I

    .line 500
    const-string v8, "ScenePickerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete scene("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/htc/home/personalize/scene/ScenePickerItem;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/htc/home/personalize/scene/ScenePickerItem;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v4           #previewPathForLandscape:Ljava/lang/String;
    .end local v5           #previewPathForPortrait:Ljava/lang/String;
    .end local v6           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v7           #wallpaperPath:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 503
    .end local v3           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_4
    sget-object v8, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_1
    if-ltz v2, :cond_6

    .line 504
    sget-object v8, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 505
    .restart local v3       #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    iget v8, v3, Lcom/htc/home/personalize/scene/ScenePickerItem;->id:I

    if-ne p1, v8, :cond_5

    .line 506
    sget-object v8, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 507
    iget-object v8, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;

    iget v9, v3, Lcom/htc/home/personalize/scene/ScenePickerItem;->id:I

    invoke-static {v8, v9}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->resetDownloadSceneId(Landroid/content/Context;I)V

    .line 503
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 510
    .end local v3           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_6
    return v1
.end method

.method public releasePreview()V
    .locals 4

    .prologue
    .line 192
    sget-object v3, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 203
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v3, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 196
    .local v2, item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 202
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public setAdapterMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 578
    iput p1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mCurrentMode:I

    .line 580
    sget-object v2, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 581
    .local v1, item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setMarked(Z)V

    goto :goto_0

    .line 583
    .end local v1           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 584
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "nOrientation"

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->init()V

    .line 738
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 739
    return-void
.end method

.method public setSelectSceneId(I)V
    .locals 0
    .parameter "selectSceneId"

    .prologue
    .line 704
    iput p1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    .line 705
    return-void
.end method

.method public setViewMode(Z)V
    .locals 0
    .parameter "isPanelMode"

    .prologue
    .line 691
    iput-boolean p1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mIsPanelMode:Z

    .line 692
    return-void
.end method

.method public declared-synchronized update()V
    .locals 14

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v11, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 127
    .local v8, startTime:J
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v11}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    sput-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    .line 128
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v11}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v0

    .line 129
    .local v0, currentSceneId:I
    const-string v11, "ScenePickerAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getSceneList : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", SceneListSize : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", currentSceneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSelectSceneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSelectSceneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 131
    .local v7, size:I
    iput v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mCurrentSceneId:I

    .line 132
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v10, tempItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/scene/ScenePickerItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v7, :cond_4

    .line 134
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v11}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v6

    .line 135
    .local v6, sceneId:I
    const/4 v5, 0x0

    .line 136
    .local v5, sceneExist:Z
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 137
    .local v4, scene:Lcom/htc/home/personalize/scene/ScenePickerItem;
    invoke-virtual {v4}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v11

    if-ne v11, v6, :cond_1

    .line 138
    new-instance v3, Lcom/htc/home/personalize/scene/ScenePickerItem;

    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v11}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v11}, Lcom/htc/htcSceneManager/scene/Scene;->getTranslateId()I

    move-result v11

    invoke-direct {v3, v12, v6, v13, v11}, Lcom/htc/home/personalize/scene/ScenePickerItem;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap;I)V

    .line 140
    .local v3, item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    invoke-virtual {v4}, Lcom/htc/home/personalize/scene/ScenePickerItem;->isMarked()Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setMarked(Z)V

    .line 141
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v5, 0x1

    .line 146
    .end local v3           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    .end local v4           #scene:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_2
    if-nez v5, :cond_3

    .line 147
    new-instance v3, Lcom/htc/home/personalize/scene/ScenePickerItem;

    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v11}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v11}, Lcom/htc/htcSceneManager/scene/Scene;->getTranslateId()I

    move-result v11

    invoke-direct {v3, v12, v6, v13, v11}, Lcom/htc/home/personalize/scene/ScenePickerItem;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap;I)V

    .line 149
    .restart local v3       #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v11, "ScenePickerAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "create scene "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v3           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 153
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #sceneExist:Z
    .end local v6           #sceneId:I
    :cond_4
    sget-object v11, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_5

    .line 154
    const-string v11, "ScenePickerAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "There are still "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " scenes do not copy to tempItems"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_5
    sput-object v10, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 121
    .end local v0           #currentSceneId:I
    .end local v1           #i:I
    .end local v7           #size:I
    .end local v8           #startTime:J
    .end local v10           #tempItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/scene/ScenePickerItem;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public updateSceneName()V
    .locals 5

    .prologue
    .line 695
    sget-object v3, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 696
    .local v2, item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    sget-object v3, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v0

    .line 697
    .local v0, dbscene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual {v0}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setName(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0}, Lcom/htc/htcSceneManager/scene/Scene;->getTranslateId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setTranslateId(I)V

    goto :goto_0

    .line 701
    .end local v0           #dbscene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v2           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_0
    return-void
.end method

.class public Lcom/htc/htcSceneManager/scene/SceneManager;
.super Ljava/lang/Object;
.source "SceneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;
    }
.end annotation


# static fields
.field public static final ACTION_CURRENT_SCENE_CHANGED:Ljava/lang/String; = "com.htc.home.personalize.SceneProvider.ACTION_CURRENT_SCENE_CHANGED"

.field public static final ACTION_EMPTY_SCENES:Ljava/lang/String; = "com.htc.home.personalize.SceneProvider.ACTION_EMPTY_SCENES"

.field public static final ACTION_INIT_SCENE_TRANSLATE_ID:Ljava/lang/String; = "com.htc.home.personalize.init_translateId"

.field public static final ACTION_SCENE_CHANGED:Ljava/lang/String; = "com.htc.home.personalize.SceneProvider.ACTION_SCENE_CHANGED"

.field public static final ACTION_SCENE_INIT:Ljava/lang/String; = "com.htc.android.rosie.scene.ACTION_SCENE_INIT"

.field public static final ACTION_THEME_CHANGE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.theme_change"

.field private static final AUTHORITY:Ljava/lang/String; = "com.htc.home.personalize.SceneProvider.SceneProvider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final CUSTOMIZATION_DEFAULTWALLPAPER_URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/system_defaultWallpaper"

.field private static final CUSTOMIZATION_URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/application_Launcher"

.field private static final CUSTOMIZA_RES_PATH:Ljava/lang/String; = "/system/customize/resource/"

.field public static final EXTRA_AUTO_SAVE:Ljava/lang/String; = "extra_auto_save"

.field public static final EXTRA_INFO_CHANGED_SCENE:Ljava/lang/String; = "change_scene"

.field public static final EXTRA_INFO_INIT_SCENES:Ljava/lang/String; = "init_scenes"

.field public static final EXTRA_INFO_RENAME_SCENE:Ljava/lang/String; = "rename_scene"

.field public static final EXTRA_INFO_UPDATE_SCENE:Ljava/lang/String; = "update_scene"

.field public static final EXTRA_TANSLATE_SCENEIDS:Ljava/lang/String; = "translate_ids"

.field public static final EXTRA_WORKSPACE_ID:Ljava/lang/String; = "workspace_id"

.field public static final HOME_PERSONALIZE_FILE_DIR:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files/"

.field public static final KEY_CHANGED_EXTRA_INFO:Ljava/lang/String; = "extra_info"

.field public static final KEY_CHANGED_SCENE:Ljava/lang/String; = "scene_changed_id"

.field public static final KEY_CHANGED_TYPE:Ljava/lang/String; = "scene_changed_type"

.field public static final KEY_CURRENT_SCENE_ID:Ljava/lang/String; = "current_scene_id"

.field public static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.htc.launcher"

.field private static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field private static final PREF_KEY_INIT:Ljava/lang/String; = "initialize"

.field private static final REFERENCES:Ljava/lang/String; = "SceneManager"

.field public static final SCENE_CHANGED_TYPE_ADD:I = 0x1

.field public static final SCENE_CHANGED_TYPE_FOTA_ADD:I = 0x4

.field public static final SCENE_CHANGED_TYPE_REMOVE:I = 0x2

.field public static final SCENE_CHANGED_TYPE_UPDATE:I = 0x3

.field private static final SCENE_TABLE_NAME:Ljava/lang/String; = "scene"

.field public static final STRING_SCENE_PREVIEW_PATH:Ljava/lang/String; = "/data/data/com.htc.launcher/files/scenes_picker.png"

.field public static final STRING_SCENE_PREVIEW_PATH_LAND:Ljava/lang/String; = "/data/data/com.htc.launcher/files/scenes_picker_land.png"

.field private static final TAG:Ljava/lang/String; = "SceneManager"

.field public static final blissDefaultWallpaperPath:Ljava/lang/String; = "/system/customize/resource/wallpaper_01.jpg"

.field public static final defaultWallpaperPath:Ljava/lang/String; = "/system/customize/resource/color.jpg"

.field public static final firstWallpaperPath:Ljava/lang/String; = "/system/customize/resource/htc_wallpaper_01.jpg"

.field private static final localLOGD:Z

.field private static mContext:Landroid/content/Context;

.field private static mDBUpdate:Z

.field private static mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

.field private static mScenes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Scene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.htc.home.personalize.SceneProvider.SceneProvider/scene"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/htcSceneManager/scene/SceneManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/htcSceneManager/scene/SceneManager;->mDBUpdate:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/htcSceneManager/scene/SceneManager;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    return-void
.end method

.method private CreateNewSceneForEmptySceneList()V
    .locals 8

    sget-object v5, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    const-string v6, "SceneManager"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "initialize"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "SceneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetSceneList when there are no scenes, the package of mContext is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", and if init: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    sget-object v5, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.htc.launcher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/htc/htcSceneManager/scene/SceneManager;->notifyEmptyScenes()V

    const/4 v1, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20c00f8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/htcSceneManager/scene/SceneManager;->createNewScene(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->setCurrentScene(I)Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.htc.launcher.ThemeChooser.action.theme_change"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "workspace_id"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "SceneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check there\'s no scene and create new scene: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private UpgradeSceneByFOTA(Landroid/content/Context;ILjava/lang/String;ILcom/htc/htcSceneManager/scene/SceneManager$SceneType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v8, "SceneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UpgradeSceneByFOTA, id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", strName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", iTranslateId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", strPreview_port: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", strPreview_land: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", strLiveWallpaper: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", strStaticWallpaper: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-direct {v4}, Lcom/htc/htcSceneManager/scene/Scene;-><init>()V

    invoke-virtual {v4, p2}, Lcom/htc/htcSceneManager/scene/Scene;->setId(I)V

    invoke-virtual {v4, p3}, Lcom/htc/htcSceneManager/scene/Scene;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Lcom/htc/htcSceneManager/scene/Scene;->setTranslateId(I)V

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/com.htc.home.personalize/files/scenes_picker_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/com.htc.home.personalize/files/scenes_picker_land_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathPort(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathLand(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    invoke-direct {p0, p1, v0, v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p7, :cond_1

    move-object/from16 v0, p7

    invoke-direct {p0, p1, v0, v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p8, :cond_3

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Lcom/htc/htcSceneManager/scene/Scene;->setLiveWallpaperComponent(Ljava/lang/String;)V

    :goto_1
    sget-object v8, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->saveSceneWithIDToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;)I

    move-result v5

    const-string v8, "SceneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Original scene id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", after saveSceneWithIDToDB: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x4

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->notifyHomePersonalizeSceneFOTA(Landroid/content/Context;)V

    return-void

    :cond_2
    sget-object v8, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->DEFAULT_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v4, v8}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    goto/16 :goto_0

    :cond_3
    if-eqz p9, :cond_4

    invoke-static {p1, p2}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/htcSceneManager/scene/Scene;->setStaticWallpaperPath(Ljava/lang/String;)V

    move-object/from16 v0, p9

    invoke-direct {p0, p1, v0, v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v8, "SceneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No wallpaper for scene with id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", so set default wallpaper."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->retrieveDefaultWallpaper()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/htcSceneManager/scene/Scene;->setStaticWallpaperPath(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private UpgradeSceneByFOTA(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Scene;)V
    .locals 10

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Scene;->getTranslateId()I

    move-result v4

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Scene;->getSceneType()Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v5

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/htc/htcSceneManager/scene/SceneManager;->UpgradeSceneByFOTA(Landroid/content/Context;ILjava/lang/String;ILcom/htc/htcSceneManager/scene/SceneManager$SceneType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static containSceneName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sget-object v4, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->DISPLAY_NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v4, v4, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    aput-object v4, v2, v10

    sget-object v4, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v4, v4, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->DISPLAY_NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_1

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz v7, :cond_3

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v9

    :goto_0
    return v1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v1, v10

    goto :goto_0
.end method

.method private copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.copyFile"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.home.personalize.fileSrc"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.fileDest"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static getContentUri(JZ)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.htc.home.personalize.SceneProvider.SceneProvider/scene/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentScene(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/Scene;
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v1, "SceneManager"

    const-string v3, "static getCurrentScene"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "current_scene=?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "SceneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-static {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene()Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_2
    new-instance v7, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-direct {v7}, Lcom/htc/htcSceneManager/scene/Scene;-><init>()V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setId(I)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setLiveWallpaperComponent(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LOCLSCREEN_WALLPAPER:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setLockscreenWallpaper(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setName(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setTranslateId(I)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_PORT:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathPort(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_LAND:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathLand(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/htc/htcSceneManager/scene/Scene;->isLiveWallpaper()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setStaticWallpaperPath(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v9, :cond_4

    invoke-virtual {v7, v9}, Lcom/htc/htcSceneManager/scene/Scene;->setCurrentScene(Z)V

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v7, v10}, Lcom/htc/htcSceneManager/scene/Scene;->setCurrentScene(Z)V

    goto :goto_1
.end method

.method public static getCurrentScenePreviewPath(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "/data/data/com.htc.launcher/files/scenes_picker.png"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/data/data/com.htc.launcher/files/scenes_picker_land.png"

    goto :goto_0
.end method

.method private getDefaultWallpaperBundle(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://customization_settings/SettingTable/system_defaultWallpaper"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :try_start_0
    const-string v2, "SceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->byteArrayToBundle([B)Landroid/os/Bundle;

    move-result-object v7

    const-string v2, "defeault"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "SceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cust_Preload_wallpaper: default>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/customize/resource/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v2, "SceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no module bundle found = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;
    .locals 2

    const-class v1, Lcom/htc/htcSceneManager/scene/SceneManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/htcSceneManager/scene/SceneManager;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-direct {v0, p0}, Lcom/htc/htcSceneManager/scene/SceneManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/SceneManager;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    :cond_0
    sget-object v0, Lcom/htc/htcSceneManager/scene/SceneManager;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSceneTypeFromString(Ljava/lang/String;)Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;
    .locals 6

    invoke-static {}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->values()[Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v3

    move-object v0, v3

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->DEFAULT_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    goto :goto_1
.end method

.method private initScene(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 7

    const/4 v6, 0x1

    const-string v5, "SceneManager"

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz p3, :cond_0

    if-eqz p2, :cond_1

    new-instance v2, Lcom/htc/htcSceneManager/scene/CustomizationBundleParser;

    invoke-direct {v2, p1}, Lcom/htc/htcSceneManager/scene/CustomizationBundleParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Lcom/htc/htcSceneManager/scene/CustomizationBundleParser;->customizationBundleToSceneList(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->saveScenesToDB(Ljava/util/ArrayList;)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "initialize"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.htc.android.rosie.scene.ACTION_SCENE_INIT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v5, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "SceneManager"

    const-string v6, "There is no initial extra bundle in intent"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSceneTranslateId(Landroid/content/Context;)V
    .locals 3

    const-string v1, "SceneManager"

    const-string v2, "send initSceneTranslateId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.init_translateId"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private initSceneTranslateId(Landroid/content/Context;[I)V
    .locals 3

    const-string v1, "SceneManager"

    const-string v2, "send initSceneTranslateId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.init_translateId"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "translate_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/customize/resource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static notifyEmptyScenes()V
    .locals 3

    const-string v1, "SceneManager"

    const-string v2, "Empty Scenes~!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.SceneProvider.ACTION_EMPTY_SCENES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyHomePersonalizeSceneFOTA(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.htc.intent.action.CUSTOMIZATION_CHANGE_SCENE_GB2ICS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.\u200bCUSTOMIZED_REASON"

    const-string v2, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private removeScenesFromDB([I)I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v7, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcSceneManager/scene/Scene;

    const/4 v1, 0x0

    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_0

    aget v5, p1, v1

    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v7

    if-ne v7, v5, :cond_1

    int-to-long v7, v5

    invoke-static {v7, v8, v10}, Lcom/htc/htcSceneManager/scene/SceneManager;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sput-boolean v10, Lcom/htc/htcSceneManager/scene/SceneManager;->mDBUpdate:Z

    const/4 v7, 0x2

    invoke-static {v7, p1, v9}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    return v7
.end method

.method private static saveSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Z)I
    .locals 9

    const/4 v5, -0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v3, "SceneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveSceneToDB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getTranslateId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_PORT:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_LAND:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v6, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getLockscreenWallpaper()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LOCLSCREEN_WALLPAPER:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getLockscreenWallpaper()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getSceneType()Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TYPE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getSceneType()Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getOnlineSceneId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->ONLINE_SCENE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getOnlineSceneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->isCurrentScene()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7, v8}, Lcom/htc/htcSceneManager/scene/SceneManager;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    sput-boolean v8, Lcom/htc/htcSceneManager/scene/SceneManager;->mDBUpdate:Z

    if-eqz v1, :cond_a

    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_3
    return v3

    :cond_7
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v6, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_9
    sget-object v3, Lcom/htc/htcSceneManager/scene/SceneManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    :cond_a
    move v3, v5

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v3, "SceneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception for saving scene to DB. values: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", uri.getLastPathSegment(): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v5

    goto :goto_3
.end method

.method private static saveSceneWithIDToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;)I
    .locals 8

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "SceneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveSceneWithIDToDB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v5

    if-lez v5, :cond_1

    sget-object v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v5, v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v5, v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v5, v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getTranslateId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_PORT:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v5, v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_LAND:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v5, v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v5, v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v5, v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getLockscreenWallpaper()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LOCLSCREEN_WALLPAPER:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getLockscreenWallpaper()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getSceneType()Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TYPE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getSceneType()Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getOnlineSceneId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->ONLINE_SCENE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getOnlineSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->isCurrentScene()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    sget-object v3, Lcom/htc/htcSceneManager/scene/SceneManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_b

    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v5, v5, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_b
    move v3, v4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SceneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception for saving scene to DB. values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uri.getLastPathSegment(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    goto/16 :goto_0
.end method

.method private saveScenesToDB(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Scene;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v5, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcSceneManager/scene/Scene;

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Lcom/htc/htcSceneManager/scene/SceneManager;->saveSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Z)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    const-string v6, "init_scenes"

    invoke-static {v5, v3, v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static sceneChanged(I[ILjava/lang/String;)V
    .locals 4

    const-string v1, "SceneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SceneManager.sceneChanged() : type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.SceneProvider.ACTION_SCENE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "scene_changed_type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "scene_changed_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v1, "extra_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateScene(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;)V
    .locals 4

    const/4 v1, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->saveSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Z)I

    const/4 v0, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v3

    aput v3, v1, v2

    const-string v2, "update_scene"

    invoke-static {v0, v1, v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static updateSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v2, "SceneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSceneToDB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", col : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-virtual {p2, v2}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v2, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5, v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    return v2

    :cond_1
    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-virtual {p2, v2}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v2, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getTranslateId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_PORT:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-virtual {p2, v2}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_PORT:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v2, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_LAND:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-virtual {p2, v2}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_LAND:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v2, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-virtual {p2, v2}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v4, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v2, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-virtual {p2, v2}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v2, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v4, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TYPE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-virtual {p2, v2}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TYPE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v2, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getSceneType()Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->ONLINE_SCENE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-virtual {p2, v2}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->ONLINE_SCENE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v2, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getOnlineSceneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-virtual {p2, v2}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->isCurrentScene()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v2, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_9
    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v2, v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, -0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public CompareSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->ordinal()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->ordinal()I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->ordinal()I

    move-result v1

    if-ne v1, v4, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->ordinal()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->ordinal()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->ordinal()I

    move-result v1

    if-eq v1, v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public UpgradeSceneByFOTA(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Scene;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-direct {p0, p1, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->UpgradeSceneByFOTA(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Scene;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addBuilderScene(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v4, "SceneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addBuilderScene with null data => strGUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", strSceneData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getBuilderSceneById(Ljava/lang/String;)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v2

    const-string v4, "SceneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBuilderSceneById: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    if-eqz v2, :cond_2

    sget-object v4, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v5

    invoke-static {v4, v1, p2, p1, v5}, Lcom/htc/htcSceneManager/scene/XmlUtils;->startParsing(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-static {v4, v1, p2, p1, v5}, Lcom/htc/htcSceneManager/scene/XmlUtils;->startParsing(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public addDownloadScene(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/htcSceneManager/scene/DownloadSceneSaver;

    invoke-direct {v0}, Lcom/htc/htcSceneManager/scene/DownloadSceneSaver;-><init>()V

    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/htc/htcSceneManager/scene/DownloadSceneSaver;->saveSceneData(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    invoke-static {v1, v2, v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    return-void
.end method

.method byteArrayToBundle([B)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public clearAllScenes()V
    .locals 5

    const/4 v3, 0x0

    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "SceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearAllScenes Delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data records."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createNewScene(Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-direct {v0}, Lcom/htc/htcSceneManager/scene/Scene;-><init>()V

    invoke-virtual {v0, p1}, Lcom/htc/htcSceneManager/scene/Scene;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->retrieveDefaultWallpaper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/htcSceneManager/scene/Scene;->setStaticWallpaperPath(Ljava/lang/String;)V

    sget-object v3, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->USER_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v0, v3}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    sget-object v3, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->saveSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Z)I

    move-result v1

    sput-boolean v6, Lcom/htc/htcSceneManager/scene/SceneManager;->mDBUpdate:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/com.htc.home.personalize/files/scenes_picker_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.htc.home.personalize/files/scenes_picker_land_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateScenePreviewPath(ILjava/lang/String;Ljava/lang/String;)V

    new-array v3, v6, [I

    aput v1, v3, v7

    const/4 v4, 0x0

    invoke-static {v6, v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    return v1
.end method

.method public createSceneFromSIE(Landroid/content/Context;[I)[I
    .locals 12

    const/4 v9, 0x0

    const-string v10, "SceneManager"

    const-string v11, "createSceneFromSIE+"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/htc/htcSceneManager/scene/CustomizationBundleParser;

    invoke-direct {v3, p1}, Lcom/htc/htcSceneManager/scene/CustomizationBundleParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2, p2}, Lcom/htc/htcSceneManager/scene/CustomizationBundleParser;->customizationBundleToSceneList(Landroid/os/Bundle;[I)Ljava/util/ArrayList;

    move-result-object v7

    sget-object v10, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcSceneManager/scene/Scene;

    const/4 v10, 0x0

    invoke-static {v0, v4, v10}, Lcom/htc/htcSceneManager/scene/SceneManager;->saveSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Z)I

    move-result v10

    aput v10, v5, v1

    aget v10, v5, v1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v6, -0x1

    if-eq v1, v10, :cond_0

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x1

    invoke-static {v10, v5, v9}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    invoke-direct {p0, p1, v5}, Lcom/htc/htcSceneManager/scene/SceneManager;->initSceneTranslateId(Landroid/content/Context;[I)V

    const-string v9, "SceneManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createSceneFromSIE-: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v5

    :cond_2
    const-string v10, "SceneManager"

    const-string v11, "There is no initial extra bundle"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v9

    goto :goto_1
.end method

.method public findSceneByName(Ljava/lang/String;)I
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcSceneManager/scene/Scene;

    sget-object v3, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/htc/htcSceneManager/scene/Scene;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v3

    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getBuilderSceneById(Ljava/lang/String;)Lcom/htc/htcSceneManager/scene/Scene;
    .locals 7

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    sget-object v4, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->BUILDER_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {p0, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getTypedSceneList(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v1}, Lcom/htc/htcSceneManager/scene/Scene;->getOnlineSceneId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "SceneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BuilderScene with null GUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/htc/htcSceneManager/scene/Scene;->getOnlineSceneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_3
    move-object v1, v3

    goto :goto_0
.end method

.method public getCurrentScene()Lcom/htc/htcSceneManager/scene/Scene;
    .locals 5

    const-string v3, "SceneManager"

    const-string v4, "getCurrentScene"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList(Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v1}, Lcom/htc/htcSceneManager/scene/Scene;->isCurrentScene()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentSceneId()I
    .locals 2

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene()Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://customization_settings/SettingTable/application_Launcher"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :try_start_0
    const-string v2, "SceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->byteArrayToBundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v2, "SceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no module bundle found = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;
    .locals 6

    const-string v3, "SceneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSceneById: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v3

    if-ne p1, v3, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSceneList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Scene;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSceneList(Z)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Scene;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    sget-object v9, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_0
    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mDBUpdate:Z

    if-nez v1, :cond_1

    const-string v1, "SceneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get current scene list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->CreateNewSceneForEmptySceneList()V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v9

    :goto_0
    return-object v1

    :cond_1
    const-string v1, "SceneManager"

    const-string v2, "get scene list from database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    :goto_1
    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    new-instance v7, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-direct {v7}, Lcom/htc/htcSceneManager/scene/Scene;-><init>()V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setId(I)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setLiveWallpaperComponent(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LOCLSCREEN_WALLPAPER:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setLockscreenWallpaper(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setName(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setTranslateId(I)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_PORT:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathPort(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_LAND:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathLand(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TYPE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneTypeFromString(Ljava/lang/String;)Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->ONLINE_SCENE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setOnlineSceneId(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/htc/htcSceneManager/scene/Scene;->isLiveWallpaper()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setStaticWallpaperPath(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v1, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v10, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setCurrentScene(Z)V

    :goto_2
    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string v1, "SceneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScenes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mDBUpdate:Z

    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->CreateNewSceneForEmptySceneList()V

    :goto_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "SceneManager"

    const-string v2, "getSceneList()-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_7
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v7, v1}, Lcom/htc/htcSceneManager/scene/Scene;->setCurrentScene(Z)V

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mScenes:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/htcSceneManager/scene/SceneManager$1;

    invoke-direct {v2, p0}, Lcom/htc/htcSceneManager/scene/SceneManager$1;-><init>(Lcom/htc/htcSceneManager/scene/SceneManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public getTypedSceneList(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Scene;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v1}, Lcom/htc/htcSceneManager/scene/Scene;->getSceneType()Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public initCustomizeSceneData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->initScene(Landroid/content/Context;Landroid/os/Bundle;Z)V

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->initSceneTranslateId(Landroid/content/Context;)V

    return-object v0
.end method

.method public notifySceneChanged(I[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->notifySceneChanged(I[ILjava/lang/String;)V

    return-void
.end method

.method public notifySceneChanged(I[ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    return-void
.end method

.method public removeScene(I)I
    .locals 3

    if-ltz p1, :cond_0

    const-string v0, "SceneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeScene : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->removeScenesFromDB([I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "SceneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove scene but there is no scene id or the id is invalidate. sceneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public removeScenes([I)I
    .locals 4

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    const-string v1, "SceneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeScenes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->removeScenesFromDB([I)I

    move-result v1

    :goto_1
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public renameScene(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-virtual {v2, p3}, Lcom/htc/htcSceneManager/scene/Scene;->setName(Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/htc/htcSceneManager/scene/Scene;->setTranslateId(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/htcSceneManager/scene/Scene;->setDisplayName(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->saveSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Z)I

    const/4 v4, 0x3

    new-array v5, v7, [I

    const/4 v6, 0x0

    aput p2, v5, v6

    const-string v6, "rename_scene"

    invoke-static {v4, v5, v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public retrieveDefaultWallpaper()Ljava/lang/String;
    .locals 5

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    :cond_0
    const-string v0, "/system/customize/resource/wallpaper_01.jpg"

    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "/system/customize/resource/htc_wallpaper_01.jpg"

    :cond_2
    const-string v2, "SceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveDefaultWallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->getDefaultWallpaperBundle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Customize wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    const-string v0, "/system/customize/resource/color.jpg"

    goto :goto_0
.end method

.method public setCurrentScene(I)Z
    .locals 12

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v5

    const-string v8, "SceneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCurrentScene with id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", when current scenes : \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v8

    if-ne v8, p1, :cond_1

    move-object v2, v4

    :cond_1
    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/Scene;->isCurrentScene()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_2
    const-string v8, "SceneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nextScene : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nprevScene : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    if-eq v2, v3, :cond_5

    sget-object v8, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v3, :cond_3

    invoke-virtual {v3, v7}, Lcom/htc/htcSceneManager/scene/Scene;->setCurrentScene(Z)V

    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-static {v0, v3, v8}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;)I

    :cond_3
    invoke-virtual {v2, v6}, Lcom/htc/htcSceneManager/scene/Scene;->setCurrentScene(Z)V

    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-static {v0, v2, v8}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;)I

    if-eqz v3, :cond_4

    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v9

    aput v9, v8, v7

    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v7

    aput v7, v8, v6

    const-string v7, "change_scene"

    invoke-static {v11, v8, v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    :goto_1
    return v6

    :cond_4
    new-array v8, v6, [I

    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v9

    aput v9, v8, v7

    const-string v7, "change_scene"

    invoke-static {v11, v8, v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    move v6, v7

    goto :goto_1
.end method

.method public setSceneUpdate(Z)V
    .locals 0

    sput-boolean p1, Lcom/htc/htcSceneManager/scene/SceneManager;->mDBUpdate:Z

    return-void
.end method

.method public triggerCreateAndSetNewScene()V
    .locals 6

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20c00f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->createNewScene(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.htc.launcher.ThemeChooser.action.theme_change"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "workspace_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "SceneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check there\'s no scene and create new scene: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public updateLockscreenWallpaperPath(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateScenePreviewPath(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathPort(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathLand(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->saveSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Z)I

    goto :goto_0
.end method

.method public updateSceneWallpaper(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p3}, Lcom/htc/htcSceneManager/scene/Scene;->setLiveWallpaperComponent(Ljava/lang/String;)V

    :goto_1
    sget-object v1, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-static {v1, v0, v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;)I

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->sceneChanged(I[ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p4}, Lcom/htc/htcSceneManager/scene/Scene;->setStaticWallpaperPath(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateTranslateId(II)V
    .locals 5

    if-gez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "SceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update translate id of scene : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for translate id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p2}, Lcom/htc/htcSceneManager/scene/Scene;->setTranslateId(I)V

    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-static {v0, v1, v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateSceneToDB(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;)I

    goto :goto_0

    :cond_1
    const-string v2, "SceneManager"

    const-string v3, "update translate id for null scene..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
